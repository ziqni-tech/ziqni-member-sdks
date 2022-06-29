package com.ziqni.gamification.client.streaming.concurrent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.simp.stomp.StompHeaders;
import org.springframework.messaging.simp.stomp.StompSession;

import java.util.function.Consumer;

public final class MessageToSend <T> implements Runnable {

    private static final Logger logger = LoggerFactory.getLogger(MessageToSend.class);

    private final StompHeaders headers;
    private final T payload;
    private final StompSession stompSession;

    public MessageToSend(StompHeaders headers, T payload, StompSession stompSession) {
        this.headers = headers;
        this.payload = payload;
        this.stompSession = stompSession;
    }

    @Override
    public void run() {
        try {
            logger.debug("send remote request with headers [{}] and payload [{}]", this.headers, this.payload);
            var x = this.stompSession.send(this.headers, this.payload);
            logger.debug("executed function for recieptable [{}]", x);
        } catch (IllegalStateException i){
            logger.error("Client is disconnected from the server.", i);
            throw i;
        } catch (Throwable throwable){
            logger.error("Failed to send message over websocket", throwable);
            throw throwable;
        }
    }
}