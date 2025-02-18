package com.ziqni.member.sdk.util;

import com.ziqni.member.sdk.ZiqniMemberApiFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ApiClientFactoryUtil {

    private static final Logger logger = LoggerFactory.getLogger(ApiClientFactoryUtil.class);

    private static ZiqniMemberApiFactory ziqniMemberApiFactory;

    public static ZiqniMemberApiFactory initApiClientFactory() throws Exception {
        if(ziqniMemberApiFactory != null)
            return ziqniMemberApiFactory;

        ziqniMemberApiFactory = new ZiqniMemberApiFactory(com.ziqni.member.sdk.configuration.MemberApiClientConfigBuilder.build());

        ziqniMemberApiFactory.initialise();

        while (ziqniMemberApiFactory.getStreamingClient() == null) {
            Thread.sleep(500);
            logger.info("Waiting for the streaming client to initialize");
        }

        final var started = ziqniMemberApiFactory.getStreamingClient().start();
        while (!ziqniMemberApiFactory.getStreamingClient().isConnected()) {
            Thread.sleep(500);
            logger.info("Waiting for the streaming client start");
            if(ziqniMemberApiFactory.getStreamingClient().isNotConnected())
                throw new RuntimeException("Streaming client dead");
        }
        return ziqniMemberApiFactory;
    }

    public static void stop(){
        if(ziqniMemberApiFactory == null || ziqniMemberApiFactory.getStreamingClient().isNotConnected())
            return;

        ziqniMemberApiFactory.getStreamingClient().stop();
    }
}
