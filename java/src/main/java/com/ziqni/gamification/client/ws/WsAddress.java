/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.gamification.client.ws;

import com.ziqni.gamification.client.configuration.ApiClientConfig;

public class WsAddress {

    final String address;

    public WsAddress(){
        StringBuilder sb = new StringBuilder();
        sb.append(ApiClientConfig.getAdminClientServerScheme());
        sb.append("://");
        sb.append(ApiClientConfig.getAdminClientServerHost());
        if(ApiClientConfig.getAdminClientServerPort() != null && (ApiClientConfig.getAdminClientServerPort() != 80 || ApiClientConfig.getAdminClientServerPort() != 443))
            sb.append(":").append(ApiClientConfig.getAdminClientServerPort());
        sb.append("/ws");

        this.address = sb.toString();
    }

    public String getAddress() {
        return address;
    }
}
