package com.ziqni.member.sdk.security;

public class IdentityAuthorisationException extends RuntimeException {

    public IdentityAuthorisationException(String message, Throwable cause) {
        super(message, cause);
    }

    public IdentityAuthorisationException(Throwable cause) {
        super(cause);
    }
}
