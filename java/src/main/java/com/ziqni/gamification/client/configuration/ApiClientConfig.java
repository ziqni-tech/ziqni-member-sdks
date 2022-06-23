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
    private static String adminClientServerBasePath;
    private static String adminClientServerHost;
    private static Integer adminClientServerPort;
    private static String adminClientServerScheme;

    private static boolean isWebsocket;

    public static void load() {
        if (loaded) return;

        adminClientServerBasePath = ConfigurationLoader.getParameter("admin.client.base.path").orElse("");
        adminClientServerHost = ConfigurationLoader.getParameter("admin.client.server.host").orElse("gamification-api.ziqni.com");
        adminClientServerPort = Integer.valueOf(ConfigurationLoader.getParameter("admin.client.server.port").orElse("443"));
        adminClientServerScheme = ConfigurationLoader.getParameter("admin.client.server.scheme").orElse("wss");

        var isValidScheme = adminClientServerScheme.equals("http") || adminClientServerScheme.equals("https") || adminClientServerScheme.equals("ws") || adminClientServerScheme.equals("wss");

        if(!isValidScheme)
            throw new RuntimeException("Invalid scheme " + adminClientServerScheme + ". Valid schemes are http, https, ws, wss");

        isWebsocket = adminClientServerScheme.equals("ws") || adminClientServerScheme.equals("wss");
        loaded = true;
    }

    public static String getAdminClientServerBasePath() {
        load();
        return adminClientServerBasePath;
    }

    public static String getAdminClientServerHost() {
        load();
        return adminClientServerHost;
    }

    public static Integer getAdminClientServerPort() {
        load();
        return adminClientServerPort;
    }

    public static String getAdminClientServerScheme() {
        load();
        return adminClientServerScheme;
    }

    public static boolean isWebsocket() {
        load();
        return isWebsocket;
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