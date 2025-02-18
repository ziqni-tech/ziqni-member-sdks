package com.ziqni.member.sdk.security;

public interface IdentityAuthorization {

    String getBearerToken() throws IdentityAuthorisationException;
}
