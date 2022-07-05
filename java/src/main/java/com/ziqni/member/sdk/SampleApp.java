package com.ziqni.member.sdk;

import com.ziqni.member.sdk.api.EntityChangesApiWs;
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
                //"eyJhbGciOiJIUzI1NiJ9.eyJhcGlfa2V5X2lkIjoiUmlvMVBtVUJtMVh5Nk9XRkloTkoiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiUTZEOVZUSERRMjZDNDk4QkdRSzlNNlQzNEhDN01XQ0QuMTEiLCJhY2NvdW50X2lkIjoidzVkUzhtUUJ5VDRYUkdnLUJsdTAiLCJzcGFjZV9uYW1lIjoibXlzcGFjZTIiLCJuYW1lIjoiUTZEOVZUSERRMjZDNDk4QkdRSzlNNlQzNEhDN01XQ0QiLCJtZW1iZXJfdHlwZSI6IkluZGl2aWR1YWwiLCJtZW1iZXJfaWQiOiIwaGNKTjIwQjJjUW12YV9QTU40VyIsInJlc291cmNlX2FjY2VzcyI6eyJ6aXFuaS1nYXBpIjp7InJvbGVzIjpbIlB1YmxpYyIsIk1lbWJlciIsIlZpZXdBY2hpZXZlbWVudHMiLCJWaWV3QXdhcmRzIiwiQ2xhaW1Bd2FyZHMiLCJWaWV3Q29tcGV0aXRpb25zIiwiVmlld0NvbnRlc3RzIiwiVmlld0ZpbGVzIiwiVmlld01lbWJlcnMiLCJNZW1iZXJzT3B0aW4iLCJWaWV3TWVzc2FnZXMiLCJDb25uZWN0UHJveHkiLCJWaWV3UmV3YXJkcyIsIlZpZXdSdWxlcyJdfX0sInN1YiI6IjBoY0pOMjBCMmNRbXZhX1BNTjRXIiwianRpIjoiYzczNjExOWItMDE1ZS00YWM5LTkyN2YtOGZjOTRlNTZmYzE5IiwiaWF0IjoxNjU2OTY5ODYzLCJleHAiOjIzMjU2OTY5ODYzfQ.8Rr3Dym_foSECPFxO96g6xM9mgSZ3JYiIVkm3nvas1w"
                "eyJhbGciOiJIUzI1NiJ9.eyJhcGlfa2V5X2lkIjoicXhtcXFZRUJUZVV0U0VzNEVJLWgiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiMTAwMDI1NDE5IiwiYWNjb3VudF9pZCI6IkY3bThkSHdCc3ctT0gzTUVvVzIzIiwic3BhY2VfbmFtZSI6ImZpcnN0LXNwYWNlIiwibmFtZSI6Im5hbWUxIiwibWVtYmVyX3R5cGUiOiJJbmRpdmlkdWFsIiwibWVtYmVyX2lkIjoiX01XRmtJRUJaNUNYN2RXbnFhR0kiLCJyZXNvdXJjZV9hY2Nlc3MiOnsiemlxbmktZ2FwaSI6eyJyb2xlcyI6WyJQdWJsaWMiLCJNZW1iZXIiLCJWaWV3QWNoaWV2ZW1lbnRzIiwiVmlld0F3YXJkcyIsIkNsYWltQXdhcmRzIiwiVmlld0NvbXBldGl0aW9ucyIsIlZpZXdDb250ZXN0cyIsIlZpZXdGaWxlcyIsIlZpZXdNZW1iZXJzIiwiTWVtYmVyc09wdGluIiwiVmlld01lc3NhZ2VzIiwiQ29ubmVjdFByb3h5IiwiVmlld1Jld2FyZHMiLCJWaWV3UnVsZXMiXX19LCJzdWIiOiJfTVdGa0lFQlo1Q1g3ZFducWFHSSIsImp0aSI6ImEyMmM3N2RmLWMzMTEtNGNiYS1iOWQ2LTBjNTU5YzE4Mjc2ZiIsImlhdCI6MTY1NzAwNjA5MywiZXhwIjoyMzI1NzAwNjA5M30.FB-c9I2im-dQWZ-ggUmOELj259rUfgAWJDWccXmZEiQ"
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
//                                        .addIdsItem("88V1kIEBZ5CX7dWnd6HT")
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
            ApiClientFactoryWs.getEntityChangesApi()
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
            ApiClientFactoryWs.getEntityChangesApi().subscribeToEntityChanges(
                    new EntityChangeSubscriptionRequest().callback(EntityChangesApiWs.subscribeToEntityChangesCallBacks.ENTITYCHANGED).entityType("Member")
            );
            ApiClientFactoryWs.getEntityChangesApi().subscribeToEntityChanges(
                    new EntityChangeSubscriptionRequest().callback(EntityChangesApiWs.subscribeToEntityChangesCallBacks.ENTITYSTATECHANGED).entityType("Member")
            );
        });
    }

    private static void handleResponse(AchievementResponse achievementResponse){
        System.out.println(achievementResponse);
    }
}
