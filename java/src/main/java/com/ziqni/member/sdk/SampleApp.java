package com.ziqni.member.sdk;

import com.ziqni.member.sdk.api.SubscriptionsApiWs;
import com.ziqni.member.sdk.configuration.ApiClientConfig;
import com.ziqni.member.sdk.model.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class SampleApp {
    private static final Logger logger = LoggerFactory.getLogger(SampleApp.class);

    private static final ScheduledExecutorService timer = Executors.newSingleThreadScheduledExecutor();

    public static void main(String[] args) throws Exception {

        ApiClientConfig.setIdentityAuthorization(() ->
                "eyJhbGciOiJIUzI1NiJ9.eyJhcGlfa2V5X2lkIjoiUmlvMVBtVUJtMVh5Nk9XRkloTkoiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiUTZEOVZUSERRMjZDNDk4QkdRSzlNNlQzNEhDN01XQ0QuMTEiLCJhY2NvdW50X2lkIjoidzVkUzhtUUJ5VDRYUkdnLUJsdTAiLCJzcGFjZV9uYW1lIjoibXlzcGFjZTIiLCJuYW1lIjoiUTZEOVZUSERRMjZDNDk4QkdRSzlNNlQzNEhDN01XQ0QiLCJtZW1iZXJfdHlwZSI6IkluZGl2aWR1YWwiLCJtZW1iZXJfaWQiOiIwaGNKTjIwQjJjUW12YV9QTU40VyIsInJlc291cmNlX2FjY2VzcyI6eyJ6aXFuaS1nYXBpIjp7InJvbGVzIjpbIlB1YmxpYyIsIk1lbWJlciIsIlZpZXdBY2hpZXZlbWVudHMiLCJWaWV3QXdhcmRzIiwiQ2xhaW1Bd2FyZHMiLCJWaWV3Q29tcGV0aXRpb25zIiwiVmlld0NvbnRlc3RzIiwiVmlld0ZpbGVzIiwiVmlld01lbWJlcnMiLCJNZW1iZXJzT3B0aW4iLCJWaWV3TWVzc2FnZXMiLCJDb25uZWN0UHJveHkiLCJWaWV3UmV3YXJkcyIsIlZpZXdSdWxlcyJdfX0sInN1YiI6IjBoY0pOMjBCMmNRbXZhX1BNTjRXIiwianRpIjoiYzczNjExOWItMDE1ZS00YWM5LTkyN2YtOGZjOTRlNTZmYzE5IiwiaWF0IjoxNjU2OTY5ODYzLCJleHAiOjIzMjU2OTY5ODYzfQ.8Rr3Dym_foSECPFxO96g6xM9mgSZ3JYiIVkm3nvas1w"
        );

        ApiClientFactoryWs.initialise(() -> {
            ApiClientFactoryWs.getStreamingClient().addOnStartHandler("work", streamingClient ->
                    timer.scheduleWithFixedDelay( () -> {
                        if(!ApiClientFactoryWs.getStreamingClient().isConnected()) {
                            ApiClientFactoryWs.getStreamingClient().stop();
                            timer.shutdown();
                            throw new RuntimeException("Not connected");
                        }

                        ApiClientFactoryWs.getAchievementsApi().getAchievements(
                                new AchievementRequest().achievementFilter(new AchievementFilter()
                                        .addIdsItem("88V1kIEBZ5CX7dWnd6HT")
                                ))
                                .thenAccept(SampleApp::handleResponse)
                                .exceptionally(throwable -> {
                                    throwable.printStackTrace();
                                    return null;
                                });

                        ApiClientFactoryWs.getMembersApi().getMember(new MemberRequest().addIncludeFieldsItem(Member.JSON_PROPERTY_MEMBER_REF_ID));
                    }, 5, 5, TimeUnit.SECONDS));

            return ApiClientFactoryWs.getStreamingClient().start();
        }).thenAccept(aBoolean -> {
            ApiClientFactoryWs.getSubscriptionsApi()
                    .entityChangedHandler(
                        ((stompHeaders, entityChanged) -> {
                            logger.info(entityChanged.toString());
                        }),
                        (stompHeaders, error) -> {
                            logger.info(error.toString());
                        }
                    )
                    .entityStateChangedHandler(
                            ((stompHeaders, entityStateChanged) -> {
                                logger.info(entityStateChanged.toString());
                            }),
                            (stompHeaders, error) -> {
                                logger.info(error.toString());
                            }
                    );
            ApiClientFactoryWs.getSubscriptionsApi().subscribe(
                    new SubscriptionRequest().callback(SubscriptionsApiWs.subscribeCallBacks.ENTITYCHANGED).entityType("Member")
            );
            ApiClientFactoryWs.getSubscriptionsApi().subscribe(
                    new SubscriptionRequest().callback(SubscriptionsApiWs.subscribeCallBacks.ENTITYSTATECHANGED).entityType("Member")
            );
        });
    }

    private static void handleResponse(AchievementResponse achievementResponse){
        System.out.println(achievementResponse);
    }
}
