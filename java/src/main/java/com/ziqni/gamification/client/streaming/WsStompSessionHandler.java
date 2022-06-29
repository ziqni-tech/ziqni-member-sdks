package com.ziqni.gamification.client.streaming;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.simp.stomp.*;

import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

public class WsStompSessionHandler extends StompSessionHandlerAdapter {

    private static final Logger logger = LoggerFactory.getLogger(WsStompSessionHandler.class);

    private void subscribeTopic(String topic, StompSession session) {
        session.subscribe(topic, new StompFrameHandler() {
            @Override
            public Type getPayloadType(StompHeaders headers) {

                logger.info("HANDLER");
                return String.class;
            }

            @Override
            public void handleFrame(StompHeaders headers, Object payload) {
                logger.info("TEST HEKHEK");
            }
        });

    }

    @Override
    public Type getPayloadType(StompHeaders headers) {
        return String.class;
    }

    /**
     * This implementation is empty.
     */
    @Override
    public void handleFrame(StompHeaders headers, Object payload) {
        String resp = (String) payload;
        logger.info("Received responses from websocket server: "+ resp);
    }

    @Override
    public void afterConnected(StompSession session, StompHeaders connectedHeaders) {
        //subscribeTopic("/user/queue/response", session);

        logger.info("CONNECTED");
        for(Map.Entry<String, List<String>> entry: connectedHeaders.entrySet()) {
            logger.info(entry.getKey()+"S");
        }
    }

    @Override
    public void handleException(StompSession session, StompCommand command, StompHeaders headers, byte[] payload, Throwable exception) {
        logger.debug("Stomp client connection exception. [{}] ", exception.getMessage());
    }

    @Override
    public void handleTransportError(StompSession session, Throwable exception) {
        logger.debug("Stomp client connection transport error. [{}] ", exception.getMessage());
    }
}