/*
 * Copyright (c) 2024. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */

package com.ziqni.member.sdk.streaming.runnables;

import com.ziqni.member.sdk.streaming.stomp.StompHeaders;
import com.ziqni.member.sdk.streaming.stomp.StompOverWebSocket;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public final class MessageToSend <T> implements Runnable {

    private static final Logger logger = LoggerFactory.getLogger(MessageToSend.class);

    private final StompHeaders headers;
    private final T payload;
    private final StompOverWebSocket stomp;

    public MessageToSend(StompHeaders headers, T payload, StompOverWebSocket stomp) {
        this.headers = headers;
        this.payload = payload;
        this.stomp = stomp;
    }

    @Override
    public void run() {
        try {
            this.stomp.sendMessage(this.headers, this.payload);
        }
        catch (IllegalStateException i){
            logger.error("Client is disconnected from the server. {}", i.getMessage());
            throw i;
        }
        catch (Throwable throwable){
            logger.error("Failed to send message over websocket", throwable);
            throw throwable;
        }
    }
}
