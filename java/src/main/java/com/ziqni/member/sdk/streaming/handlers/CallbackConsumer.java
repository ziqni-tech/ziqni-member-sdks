package com.ziqni.member.sdk.streaming.handlers;

import com.fasterxml.jackson.databind.JavaType;
import com.ziqni.member.sdk.ApiException;
import org.springframework.messaging.simp.stomp.StompHeaders;

import java.util.function.BiConsumer;

public class CallbackConsumer<T> {

    public final JavaType javaType;

    private final String callback;

    private final Class<T> tClass;

    private final BiConsumer<StompHeaders,T> onCallback;
    private final BiConsumer<StompHeaders,ApiException> onApiException;

    public CallbackConsumer(Class<T> tClass, String callback, BiConsumer<StompHeaders,T> onCallback, BiConsumer<StompHeaders,ApiException> onApiException) {
        this.tClass = tClass;
        this.javaType = CallbackEventHandler.objectMapper.constructType(tClass);
        this.callback = callback;
        this.onCallback = onCallback;
        this.onApiException = onApiException;
    }

    public final JavaType getJavaType() {
        return javaType;
    }

    public final String getCallback() {
        return callback;
    }

    public final Class<T> getMessageClass() {
        return tClass;
    }

    public final void consumeCallback(StompHeaders headers, Object response) {
        onCallback.accept(headers, (T) response);
    }

    public final void consumeApiExceptionCallBack(StompHeaders headers, ApiException response) {
        onApiException.accept(headers, response);
    }
}
