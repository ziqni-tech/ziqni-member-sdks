package com.ziqni.gamification.client.model;

public class RpcRequest<T> {

    private final T request;
    private final String accessToken;

    public RpcRequest(T request) {
        this(request,null);
    }

    public RpcRequest(T request, String accessToken) {
        this.request = request;
        this.accessToken = accessToken;
    }

    public T getRequest() {
        return request;
    }

    public String getAccessToken() {
        return accessToken;
    }
}
