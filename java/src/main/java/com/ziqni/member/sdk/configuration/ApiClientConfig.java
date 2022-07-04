/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.member.sdk.configuration;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ziqni.member.sdk.JSON;
import com.ziqni.member.sdk.security.IdentityAuthorisationException;
import com.ziqni.member.sdk.security.IdentityAuthorization;
import com.ziqni.member.sdk.util.ConfigurationLoader;

public abstract class ApiClientConfig {

    private static Boolean loaded = false;

    //todo - replace this with member client
    private static String memberClientServerHost;
    private static Integer memberClientServerPort;
    private static String memberClientServerScheme;

    private static String identityAuthorizationToken;
    private static IdentityAuthorization identityAuthorization;

    private static boolean isSecure;

    public static void load() {
        if (loaded) return;

        memberClientServerHost = ConfigurationLoader.getParameter("member.client.server.host").orElse("Member-api.ziqni.com");
        memberClientServerPort = Integer.valueOf(ConfigurationLoader.getParameter("member.client.server.port").orElse("443"));
        memberClientServerScheme = ConfigurationLoader.getParameter("member.client.server.scheme").orElse("wss");

        var isValidScheme = memberClientServerScheme.equals("ws") || memberClientServerScheme.equals("wss");

        if(!isValidScheme)
            throw new RuntimeException("Invalid scheme " + memberClientServerScheme + ". Valid schemes are ws, wss");

        isSecure = memberClientServerScheme.equals("wss");
        loaded = true;
    }

    public static String getMemberClientServerHost() {
        load();
        return memberClientServerHost;
    }

    public static Integer getMemberClientServerPort() {
        load();
        return memberClientServerPort;
    }

    public static String getMemberClientServerScheme() {
        load();
        return memberClientServerScheme;
    }

    public static boolean isSecure() {
        load();
        return isSecure;
    }

    public static IdentityAuthorization getIdentityAuthorization() {
        if(identityAuthorization == null) {
            identityAuthorizationToken = ConfigurationLoader.getParameter("member.client.access.token").orElse("");
            identityAuthorization = () -> identityAuthorizationToken;
        }
        return identityAuthorization;
    }

    public static void setIdentityAuthorization(IdentityAuthorization identityAuthorization) {
        ApiClientConfig.identityAuthorization = identityAuthorization;
    }

    public static String getAccessTokenString() throws IdentityAuthorisationException {
        return getIdentityAuthorization().getAccessTokenString();
    }

    public static ObjectMapper createDefaultObjectMapper() {
        return JSON.getDefault().getMapper();
    }
}