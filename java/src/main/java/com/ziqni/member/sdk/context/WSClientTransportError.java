package com.ziqni.member.sdk.context;

import org.springframework.messaging.simp.stomp.StompSession;

public class WSClientTransportError {

    private final StompSession session;
    private final Throwable exception;

    public StompSession getSession() {
        return session;
    }

    public Throwable getException() {
        return exception;
    }

    public WSClientTransportError(StompSession session, Throwable exception) {
        this.session = session;
        this.exception = exception;
    }
}
