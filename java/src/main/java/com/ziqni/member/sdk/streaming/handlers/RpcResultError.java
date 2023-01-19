package com.ziqni.member.sdk.streaming.handlers;

public class RpcResultError extends Throwable{

    private final Object result;

    public RpcResultError(Object result) {
        this.result=result;
    }

    public RpcResultError(String message, Object result) {
        super(message);
        this.result=result;
    }

    public RpcResultError(String message, Throwable cause, Object result) {
        super(message, cause);
        this.result=result;
    }

    public RpcResultError(Throwable cause, Object result) {
        super(cause);
        this.result=result;
    }

    public RpcResultError(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace, Object result) {
        super(message, cause, enableSuppression, writableStackTrace);
        this.result=result;
    }

    public Object getResult() {
        return result;
    }
}
