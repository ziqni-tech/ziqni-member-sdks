/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.member.sdk.configuration;

public class MemberApiClientConfigBuilder {

    public static MemberApiClientConfiguration build() {
        final var config = new MemberApiClientConfiguration();

        config.setMemberClientServerHost(ConfigurationLoader.getParameter("member.server.host").orElse("member-api.ziqni.com") );
        config.setMemberClientServerPort( Integer.valueOf(ConfigurationLoader.getParameter("member.server.port").orElse("443")));
        config.setMemberClientServerScheme( ConfigurationLoader.getParameter("member.server.scheme").orElse("wss"));

        var isValidScheme = config.getMemberClientServerScheme().equals("ws")
                || config.getMemberClientServerScheme().equals("wss");

        if(!isValidScheme)
            throw new RuntimeException("Invalid scheme " + config.getMemberClientServerScheme() + ". Valid schemes are ws, wss");

        config.setSecure(config.getMemberClientServerScheme().equals("wss"));

        return config;
    }
}