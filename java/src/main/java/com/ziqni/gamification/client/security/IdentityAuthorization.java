package com.ziqni.gamification.client.security;

public interface IdentityAuthorization {

    String getAccessTokenString() throws IdentityAuthorisationException;
}
