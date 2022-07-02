package com.ziqni.member.sdk.security;

public interface IdentityAuthorization {

    String getAccessTokenString() throws IdentityAuthorisationException;
}
