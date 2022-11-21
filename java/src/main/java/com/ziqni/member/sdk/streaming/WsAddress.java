/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.member.sdk.streaming;

import com.ziqni.member.sdk.configuration.MemberApiClientConfiguration;

public class WsAddress {

    final String address;

    public WsAddress(MemberApiClientConfiguration configuration){
        StringBuilder stringBuilder = new StringBuilder()
                .append(configuration.isSecure() ? "wss" : "ws")
                .append("://")
                .append(configuration.getMemberClientServerHost());

        final var standardPort = configuration.getMemberClientServerPort() == 80 || configuration.getMemberClientServerPort() == 443;

        if(configuration.getMemberClientServerPort() != null && !standardPort)
            stringBuilder.append(":").append(configuration.getMemberClientServerPort());

        this.address = stringBuilder.append("/ws").toString();
    }

    public String getAddress() {
        return address;
    }
}
