/*
 * Copyright (c) 2024. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */

package com.ziqni.member.sdk.configuration;

public class WebSocketAddress {

    final String address;

    public WebSocketAddress(MemberApiClientConfiguration configuration){
        StringBuilder sb = new StringBuilder();
        sb.append(configuration.getMemberClientServerScheme());
        sb.append("://");
        sb.append(configuration.getMemberClientServerHost());
        if(configuration.getMemberClientServerPort() != null && !(configuration.getMemberClientServerPort() == 80 || configuration.getMemberClientServerPort() == 443))
            sb.append(":").append(configuration.getMemberClientServerPort());

        sb.append("/ws");

        this.address = sb.toString();
    }

    public WebSocketAddress(String address){
        if(address.startsWith("ws://") || address.startsWith("wss://"))
            throw new RuntimeException( "The websocket address must start with 'ws://' or 'wss://', Invalid address [ " + address + " ]");
        this.address = address;
    }

    public String getAddress() {
        return address;
    }
}
