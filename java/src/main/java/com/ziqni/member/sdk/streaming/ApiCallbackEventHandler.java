/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.member.sdk.streaming;

import com.fasterxml.jackson.databind.JavaType;
import com.ziqni.member.sdk.util.ClassScanner;
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

    public final static String DEFAULT_TOPIC = "/user/queue/rpc-results";
    public final static String CLASS_TO_SCAN_FOR_PAYLOAD_TYPE = "com.ziqni.gamification.client.model";
    private static final Logger logger = LoggerFactory.getLogger(ApiCallbackEventHandler.class);
    private static final AtomicLong sequenceNumber = new AtomicLong(0);
    private static final ConcurrentHashMap<String, ApiCallbackResponse<?,?>> awaitingResponse = new ConcurrentHashMap<>();
    private static final ExecutorService executorService = Executors.newCachedThreadPool();

    private final String topic;
    private final ClassScanner classScanner;

    public ApiCallbackEventHandler() {
        this(DEFAULT_TOPIC);
    }

    public ApiCallbackEventHandler(String topic) {
        this.topic = topic;
        this.classScanner = new ClassScanner(CLASS_TO_SCAN_FOR_PAYLOAD_TYPE);
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
            handleWithMessageId(messageId.get(), headers, payload);
        }
        else {
            if(!payload.getClass().isInstance(Message.class))
                logger.error("No sequence number provided. Headers: " + headers + ". Payload: " + payload);
        }
    }

    public static  <TIN, TOUT> ApiCallbackResponse<TIN, TOUT> submit(String destination, TIN payload, CompletableFuture<TOUT> completableFuture, BiConsumer<StompHeaders, TIN> doSend){

        final var messageId = sequenceNumber.incrementAndGet();
        final var streamingResponse = new ApiCallbackResponse<>(messageId, payload, completableFuture);

        try {
            var nextSeq = Long.toString(messageId);
            StompHeaders headers = new StompHeaders();
            headers.setDestination(destination);
            headers.setMessageId(nextSeq);

            logger.debug("WS sent request to destination [{}] with receipt id [{}] and payload [{}] and headers [{}] and callback []", destination, nextSeq, payload, headers.toSingleValueMap());

            awaitingResponse.put(streamingResponse.getSequenceNumberAsString(), streamingResponse);

            doSend.accept(headers, payload);
            return streamingResponse;
        }
        catch (Throwable throwable){
            awaitingResponse.remove(streamingResponse.getSequenceNumberAsString());
            throw throwable;
        }
    }

    private static Optional<String> getMessageId(StompHeaders headers){
        return Optional.ofNullable(headers.getMessageId());
    }

    private static void handleWithMessageId(String messageId, StompHeaders headers, Object payload) {
        Optional.ofNullable(awaitingResponse.get(messageId)).ifPresent( callback ->
                executorService.submit(callback.onCallBack(headers, payload))
        );

        awaitingResponse.remove(messageId);
    }

    public static ApiCallbackEventHandler create(){
        return new ApiCallbackEventHandler();
    }
}
