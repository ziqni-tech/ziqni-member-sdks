/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.gamification.client.configuration;

import com.ziqni.gamification.client.util.ConfigurationLoader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Optional;

public abstract class ApiClientConfig {

    private static final Logger logger = LoggerFactory.getLogger(ApiClientConfig.class);

    private static Boolean loaded = false;

    //todo - replace this with gamification client
    private static String gamificationClientServerBasePath;
    private static String gamificationClientServerHost;
    private static Integer gamificationClientServerPort;
    private static String gamificationClientServerScheme;

    private static boolean isSecure;

    public static void load() {
        if (loaded) return;

        gamificationClientServerBasePath = ConfigurationLoader.getParameter("gamification.client.base.path").orElse("");
        gamificationClientServerHost = ConfigurationLoader.getParameter("gamification.client.server.host").orElse("gamification-api.ziqni.com");
        gamificationClientServerPort = Integer.valueOf(ConfigurationLoader.getParameter("gamification.client.server.port").orElse("443"));
        gamificationClientServerScheme = ConfigurationLoader.getParameter("gamification.client.server.scheme").orElse("wss");

        var isValidScheme = gamificationClientServerScheme.equals("http") || gamificationClientServerScheme.equals("https") || gamificationClientServerScheme.equals("ws") || gamificationClientServerScheme.equals("wss");

        if(!isValidScheme)
            throw new RuntimeException("Invalid scheme " + gamificationClientServerScheme + ". Valid schemes are http, https, ws, wss");

        isSecure = gamificationClientServerScheme.equals("https") || gamificationClientServerScheme.equals("wss");
        loaded = true;
    }

    public static String getGamificationClientServerBasePath() {
        load();
        return gamificationClientServerBasePath;
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

    public static String getAccessTokenString() {
        try {
            return IdentityAuthorization.getAccessTokenString();
        } catch (Exception e) {
            logger.error("Access token error.", e);
            throw e;
        }
    }

    public static Optional<String> getByName(String parameterName) {
        load();
        return ConfigurationLoader.getParameter(parameterName);
    }
}