/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.gamification.client.configuration;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ziqni.gamification.client.JSON;
import com.ziqni.gamification.client.security.IdentityAuthorisationException;
import com.ziqni.gamification.client.security.IdentityAuthorization;
import com.ziqni.gamification.client.util.ConfigurationLoader;

public abstract class ApiClientConfig {

    private static Boolean loaded = false;

    //todo - replace this with gamification client
    private static String gamificationClientServerHost;
    private static Integer gamificationClientServerPort;
    private static String gamificationClientServerScheme;

    private static String identityAuthorizationToken;
    private static IdentityAuthorization identityAuthorization;

    private static boolean isSecure;

    public static void load() {
        if (loaded) return;

        gamificationClientServerHost = ConfigurationLoader.getParameter("gamification.client.server.host").orElse("gamification-api.ziqni.com");
        gamificationClientServerPort = Integer.valueOf(ConfigurationLoader.getParameter("gamification.client.server.port").orElse("443"));
        gamificationClientServerScheme = ConfigurationLoader.getParameter("gamification.client.server.scheme").orElse("wss");

        var isValidScheme = gamificationClientServerScheme.equals("ws") || gamificationClientServerScheme.equals("wss");

        if(!isValidScheme)
            throw new RuntimeException("Invalid scheme " + gamificationClientServerScheme + ". Valid schemes are ws, wss");

        isSecure = gamificationClientServerScheme.equals("wss");
        loaded = true;
    }

    public static String getGamificationClientServerHost() {
        load();
        return gamificationClientServerHost;
    }

    public static Integer getGamificationClientServerPort() {
        load();
        return gamificationClientServerPort;
    }

    public static String getGamificationClientServerScheme() {
        load();
        return gamificationClientServerScheme;
    }

    public static boolean isSecure() {
        load();
        return isSecure;
    }

    public static IdentityAuthorization getIdentityAuthorization() {
        if(identityAuthorization == null) {
            identityAuthorizationToken = ConfigurationLoader.getParameter("gamification.client.access.token").orElse("");
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