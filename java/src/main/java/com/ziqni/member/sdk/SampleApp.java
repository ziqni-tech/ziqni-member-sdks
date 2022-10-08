package com.ziqni.member.sdk;

import com.ziqni.member.sdk.api.EntityChangesApiWs;
import com.ziqni.member.sdk.model.*;
import com.ziqni.member.sdk.model.Error;
import com.ziqni.member.sdk.streaming.StreamingClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public class SampleApp {
    private static final Logger logger = LoggerFactory.getLogger(SampleApp.class);

    private static final ScheduledExecutorService timer = Executors.newSingleThreadScheduledExecutor();

    public static void main(String[] args) throws Exception {

        ApiClientFactoryWs
                .initialise(() -> {
                    ApiClientFactoryWs.getStreamingClient().addOnStartHandler("work", streamingClient -> logger.info(streamingClient.toString()));
                    return ApiClientFactoryWs.getStreamingClient().start();})
                .thenAccept(started -> {
                    if(started) {
                        onStart();
                        subscribeToEntityChanges();
                    }
                });
    }

    private static void handleResponse(AchievementResponse achievementResponse){

        if(achievementResponse.getData() != null){
            achievementResponse.getData().forEach(achievement -> {
                if(achievement.getConstraints().contains("optinRequiredForEntrants")){
                    optIntoAchievement(achievement);
                }
            });
        }

        System.out.println(achievementResponse);
    }

    private static void optIntoAchievement(Achievement achievement){
        ApiClientFactoryWs.getOptInApi().manageOptin(new ManageOptinRequest()
                .action(OptinAction.JOIN)
                .entityId(achievement.getId())
                .entityType(Achievement.class.getSimpleName())
        ).thenAccept(memberResponse -> {
            logger.info(memberResponse.getData().toString());
        }).exceptionally(throwable -> {
            logger.error("Failed to subscribe to entity changes for  {}", Achievement.class.getSimpleName(), throwable);
            return null;
        });
    }

    private static void onStart() {

        if(!ApiClientFactoryWs.getStreamingClient().isConnected()) {
            ApiClientFactoryWs.getStreamingClient().stop();
            timer.shutdown();
            throw new RuntimeException("Not connected");
        }

        ApiClientFactoryWs.getMembersApi()
                .getMember(new MemberRequest().addIncludeFieldsItem(Member.JSON_PROPERTY_MEMBER_REF_ID))
                .thenApply(memberResponse -> {
                    logger.info(memberResponse.toString());
                    return memberResponse;
                })
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        ApiClientFactoryWs.getAwardsApi()
                .getAwards(new AwardRequest().awardFilter(new AwardFilter()))
                .thenAccept(awardResponse -> logger.info(awardResponse.toString()))
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        ApiClientFactoryWs.getAchievementsApi()
                .getAchievements(new AchievementRequest().achievementFilter(new AchievementFilter()))
                .thenAccept(SampleApp::handleResponse)
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });
    }

    private static void subscribeToEntityChanges(){

        ApiClientFactoryWs.getEntityChangesApi().entityChangedHandler(
                        ((stompHeaders, entityChanged) -> {
                            logger.info(entityChanged.toString());
                        }),
                        (stompHeaders, error) ->
                            logger.info(error.toString())
        );

        ApiClientFactoryWs.getEntityChangesApi().entityStateChangedHandler(
                        ((stompHeaders, entityStateChanged) ->{
                            logger.info(entityStateChanged.toString());
                        }),
                        (stompHeaders, error) ->
                            logger.info(error.toString())
        );

        // Member
        subscribe(Member.class.getSimpleName(), false);

        // Achievement
        subscribe(Achievement.class.getSimpleName(), true);

        // Competition
        subscribe(Competition.class.getSimpleName(), true);

        // Contest
        subscribe(Contest.class.getSimpleName(), true);

        // Award
        subscribe(Award.class.getSimpleName(), false);

        // Award
        subscribe("Product", false);

        // Score
        subscribe("Score", true);

    }

    private static void subscribe(String entityType, boolean includeState){

        ApiClientFactoryWs.getEntityChangesApi().manageEntityChangeSubscription(
                new EntityChangeSubscriptionRequest()
                        .callback(EntityChangesApiWs.manageEntityChangeSubscriptionCallBacks.ENTITYCHANGED)
                        .action(EntityChangeSubscriptionRequest.ActionEnum.SUBSCRIBE)
                        .entityType(entityType))
                .thenAccept(in -> {
                    if(in.getErrors().isEmpty())
                        in.getData().forEach(i ->
                                logger.info("Subscribed [{}] - {} {}", i.getSubscriptionId(), entityType, EntityChangesApiWs.manageEntityChangeSubscriptionCallBacks.ENTITYCHANGED)
                        );
                    else
                        logger.info(in.getErrors().toString());
                })
                .exceptionally(throwable -> {
                    logger.error("Failed to subscribe to {} changes for  {}", entityType, entityType,throwable);
                    return null;
                });

        if(includeState)
            ApiClientFactoryWs.getEntityChangesApi().manageEntityChangeSubscription(
                    new EntityChangeSubscriptionRequest()
                            .callback(EntityChangesApiWs.manageEntityChangeSubscriptionCallBacks.ENTITYSTATECHANGED)
                            .action(EntityChangeSubscriptionRequest.ActionEnum.SUBSCRIBE)
                            .entityType(entityType))
                    .thenAccept(in -> {
                        if(in.getErrors().isEmpty())
                            in.getData().forEach(i ->
                                    logger.info("Subscribed [{}] - {} {}", i.getSubscriptionId(), entityType, EntityChangesApiWs.manageEntityChangeSubscriptionCallBacks.ENTITYSTATECHANGED)
                            );
                        else
                            logger.info(in.getErrors().toString());
                    })
                    .exceptionally(throwable -> {
                        logger.error("Failed to subscribe to {} changes for  {}", entityType, entityType,throwable);
                        return null;
                    });
    }
}
