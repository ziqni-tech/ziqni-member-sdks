package com.ziqni.member.sdk.context;

import org.springframework.context.ApplicationEvent;

import java.time.OffsetDateTime;

public class StreamingClientReadyEvent extends ApplicationEvent {

    private OffsetDateTime startedAt;

    public StreamingClientReadyEvent(Object source, OffsetDateTime startedAt) {
        super(source);
        this.startedAt = startedAt;
    }

    public OffsetDateTime getStartedAt() {
        return startedAt;
    }
}
