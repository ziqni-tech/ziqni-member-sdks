/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.gamification.client.streaming;

import com.fasterxml.jackson.databind.JavaType;
import com.ziqni.gamification.client.util.ClassScanner;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.simp.stomp.StompHeaders;

import java.lang.reflect.Type;
import java.util.Optional;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;


public class ApiCallbackEventHandler extends EventHandler<String> {

    private static final Logger logger = LoggerFactory.getLogger(ApiCallbackEventHandler.class);
    private static final AtomicLong sequenceNumber = new AtomicLong(0);
    private static final ConcurrentHashMap<String, ApiCallbackResponse<?,?>> awaitingResponse = new ConcurrentHashMap<>();

    private final String topic;
    private final ClassScanner classScanner;
    private final ExecutorService cachedThreadPool;

    public ApiCallbackEventHandler() {
        this("/user/queue/rpc-results");
    }

    public ApiCallbackEventHandler(String topic) {
        this.topic = topic;
        this.cachedThreadPool = Executors.newCachedThreadPool();
        this.classScanner = new ClassScanner("com.ziqni.gamification.client.model");
    }

    @Override
    public String getTopic() {
        return topic;
    }

    @Override
    public JavaType getValType(StompHeaders headers) {
        return objectMapper.constructType(getPayloadType(headers));
    }

    @Override
    public void onData(String data) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public Type getPayloadType(StompHeaders headers) {
        return this.classScanner.get(headers.getFirst("objectType")).orElse(Object.class);
    }

    @Override
    public void handleFrame(StompHeaders headers, Object payload) {
        var messageId = getMessageId(headers);

        if(messageId.isPresent()){
            handleWithMessageId(this.cachedThreadPool, messageId.get(), headers, payload);
        }
        else {
            if(!payload.getClass().isInstance(Message.class))
                logger.error("No sequence number provided. Headers: " + headers + ". Payload: " + payload);
        }
    }

    public static  <TIN, TOUT> ApiCallbackResponse<TIN, TOUT> send(String destination, TIN payload, CompletableFuture<TOUT> completableFuture, BiConsumer<StompHeaders, TIN> doSend){

        var messageId = sequenceNumber.incrementAndGet();
        var nextSeq = Long.toString(messageId);
        StompHeaders headers = new StompHeaders();
        headers.setDestination(destination);
        headers.setMessageId(nextSeq);

        logger.debug("WS sent request to destination [{}] with receipt id [{}] and payload [{}] and headers [{}] and callback []", destination, nextSeq, payload, headers.toSingleValueMap());

        var streamingResponse = new ApiCallbackResponse<>(messageId, payload, completableFuture);
        awaitingResponse.put(streamingResponse.getSequenceNumberAsString(), streamingResponse);
        doSend.accept(headers, payload);

        return streamingResponse;
    }

    private static Optional<String> getMessageId(StompHeaders headers){
        return Optional.ofNullable(headers.getMessageId());
    }

    private static void handleWithMessageId(ExecutorService cachedThreadPool, String messageId, StompHeaders headers, Object payload) {
        final var handleWith = Optional.ofNullable(awaitingResponse.get(messageId));

        if(handleWith.isEmpty()) {
            logger.debug("No handler waiting for sequence number: " + messageId + ". Headers: " + headers + ". Payload: " + payload);
            return;
        }

        handleWith.map( callback ->
            cachedThreadPool.submit( callback.onCallBack(headers,payload) )
        );

        awaitingResponse.remove(messageId);
    }
}
