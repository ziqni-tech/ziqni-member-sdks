/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.gamification.client.ws;

import com.ziqni.gamification.client.configuration.ApiClientConfig;

public class WsAddress {

    final String address;

    public WsAddress(){
        StringBuilder sb = new StringBuilder();
        sb.append(ApiClientConfig.isSecure() ? "wss" : "ws");
        sb.append("://");
        sb.append(ApiClientConfig.getGamificationClientServerHost());
        if(ApiClientConfig.getGamificationClientServerPort() != null && (ApiClientConfig.getGamificationClientServerPort() != 80 || ApiClientConfig.getGamificationClientServerPort() != 443))
            sb.append(":").append(ApiClientConfig.getGamificationClientServerPort());
        sb.append("/ws");

        this.address = sb.toString();
    }

    public String getAddress() {
        return address;
    }
}
