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
                    ApiClientFactoryWs.getStreamingClient().addOnStartHandler("work", SampleApp::onStart);
                    return ApiClientFactoryWs.getStreamingClient().start();})
                .thenAccept(started -> {
                    if(started)
                        subscribeToEntityChanges();
                });
    }

    private static void handleResponse(AchievementResponse achievementResponse){

        if(achievementResponse.getData() != null){
            achievementResponse.getData().forEach(achievement -> {
                if(achievement.getConstraints().contains("optinRequiredForEntrants")){

                }
            });
        }

        System.out.println(achievementResponse);
    }

    private void optIntoAchievement(Achievement achievement){
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

    private static void onStart(StreamingClient streamingClient) {

        if(!ApiClientFactoryWs.getStreamingClient().isConnected()) {
            ApiClientFactoryWs.getStreamingClient().stop();
            timer.shutdown();
            throw new RuntimeException("Not connected");
        }

        ApiClientFactoryWs.getAchievementsApi()
                .getAchievements(new AchievementRequest().achievementFilter(new AchievementFilter()))
                .thenAccept(SampleApp::handleResponse)
                .exceptionally(throwable -> {
                    throwable.printStackTrace();
                    return null;
                });

        ApiClientFactoryWs.getMembersApi()
                .getMember(new MemberRequest().addIncludeFieldsItem(Member.JSON_PROPERTY_MEMBER_REF_ID))
                .thenApply(memberResponse -> {
                    logger.info(memberResponse.toString());
                    return memberResponse;
                })
                .exceptionally(throwable -> {
                    throwable.printStackTrace();
                    return null;
                });
    }

    private static void subscribeToEntityChanges(){

        ApiClientFactoryWs.getEntityChangesApi().entityChangedHandler(
                ((stompHeaders, entityChanged) -> {
                    logger.info(entityChanged.toString());
                    if(entityChanged.getEntityType().equals("Score")){
                        logger.warn("woop woop");
                    }
                }),
                (stompHeaders, error) ->
                        logger.info(error.toString())
        );

        ApiClientFactoryWs.getEntityChangesApi().entityStateChangedHandler(
                ((stompHeaders, entityStateChanged) ->{
                    logger.info(entityStateChanged.toString());
                    if(entityStateChanged.getEntityType().equals("Score")){
                        logger.warn("woop woop");
                    }
                }),
                (stompHeaders, error) ->
                        logger.info(error.toString())
        );

        // Member
        subscribe(Member.class.getSimpleName());

        // Achievement
        subscribe(Achievement.class.getSimpleName());

        // Competition
        subscribe(Competition.class.getSimpleName());

        // Contest
        subscribe(Contest.class.getSimpleName());

        // Award
        subscribe(Award.class.getSimpleName());

        // Score
        subscribe("Score");

    }

    private static void subscribe(String entityType){

        ApiClientFactoryWs.getEntityChangesApi().manageEntityChangeSubscription(
                        new EntityChangeSubscriptionRequest()
                                .callback(EntityChangesApiWs.manageEntityChangeSubscriptionCallBacks.ENTITYCHANGED)
                                .action(EntityChangeSubscriptionRequest.ActionEnum.SUBSCRIBE)
                                .entityType(entityType))
                .thenAccept(in -> onErrors(in.getErrors(),in.toString()))
                .exceptionally(throwable -> {
                    logger.error("Failed to subscribe to entity changes for  {}", entityType,throwable);
                    return null;
                });

        ApiClientFactoryWs.getEntityChangesApi().manageEntityChangeSubscription(
                        new EntityChangeSubscriptionRequest()
                                .callback(EntityChangesApiWs.manageEntityChangeSubscriptionCallBacks.ENTITYSTATECHANGED)
                                .action(EntityChangeSubscriptionRequest.ActionEnum.SUBSCRIBE)
                                .entityType(entityType))
                .thenAccept(in -> onErrors(in.getErrors(),in.toString()))
                .exceptionally(throwable -> {
                    logger.error("Failed to subscribe to entity state changes for  {}", entityType,throwable);
                    return null;
                });
    }

    private static void onErrors(List<Error> errors, String message) {
        if(errors != null && !errors.isEmpty()) {
            logger.error(message);
        }
    }
}
