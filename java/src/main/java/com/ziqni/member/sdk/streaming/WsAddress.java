/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.member.sdk.streaming;

import com.ziqni.member.sdk.configuration.ApiClientConfig;

public class WsAddress {

    final String address;

    public WsAddress(){
        StringBuilder stringBuilder = new StringBuilder()
                .append(ApiClientConfig.isSecure() ? "wss" : "ws")
                .append("://")
                .append(ApiClientConfig.getMemberClientServerHost());

        final var standardPort = ApiClientConfig.getMemberClientServerPort() == 80 || ApiClientConfig.getMemberClientServerPort() == 443;

        if(ApiClientConfig.getMemberClientServerPort() != null && !standardPort)
            stringBuilder.append(":").append(ApiClientConfig.getMemberClientServerPort());

        this.address = stringBuilder.append("/ws").toString();
    }

    public String getAddress() {
        return address;
    }
}
