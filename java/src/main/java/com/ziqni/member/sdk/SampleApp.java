package com.ziqni.member.sdk;

import com.ziqni.member.sdk.api.EntityChangesApiWs;
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
            ApiClientFactoryWs.getEntityChangesApi().entityChangedHandler(
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
