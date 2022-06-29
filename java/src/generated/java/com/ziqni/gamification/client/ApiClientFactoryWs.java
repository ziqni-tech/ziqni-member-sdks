package com.ziqni.gamification.client;

import com.ziqni.gamification.client.configuration.ApiClientConfig;
import com.ziqni.gamification.client.api.*;
import com.ziqni.gamification.client.streaming.WsAddress;
import java.time.Duration;
import com.ziqni.gamification.client.notifications.SystemNotifications;
import java.util.concurrent.atomic.AtomicReference;
import com.ziqni.gamification.client.notifications.model.SubscriptionResponse;
import com.ziqni.gamification.client.notifications.model.SubscriptionTypes;
import java.util.function.Consumer;

public abstract class ApiClientFactoryWs {

    private static StreamingClient streamingClient;
    private static Boolean initialised = false;
    private static AchievementsApiWs achievementsApiWs;
    private static AwardsApiWs awardsApiWs;
    private static CompetitionsApiWs competitionsApiWs;
    private static ContestsApiWs contestsApiWs;
    private static FilesApiWs filesApiWs;
    private static MembersApiWs membersApiWs;
    private static MessagesApiWs messagesApiWs;
    private static ProxyApiWs proxyApiWs;
    private static RewardsApiWs rewardsApiWs;
    private static RulesApiWs rulesApiWs;
    

    public static void initialise() throws Exception {
        if(initialised) return;

        ApiClientFactoryWs.initialised = true;

        streamingClient = new StreamingClient(new WsAddress().getAddress());
    }

    private static void init() {
        try {
            initialise();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Boolean getInitialised() {
        return initialised;
    }

    public static StreamingClient getStreamingClient() {
        assert getInitialised();
        return streamingClient;
    }

    private static final AtomicReference<SystemNotifications> systemNotificationsAtomicReference = new AtomicReference<>();
    public static void initSystemNotifications(Consumer<SubscriptionResponse> onSubscriptionResponse, Consumer<SubscriptionTypes> onSubscriptionTypes) throws Exception {

        if(!ApiClientFactoryWs.initialised) init();
        if(systemNotificationsAtomicReference.get() != null)
            throw new Exception("System notification already initialised");
        getStreamingClient().asyncWebSocketClient(ws -> {
            var s = new SystemNotifications(ws,onSubscriptionResponse,onSubscriptionTypes);
            systemNotificationsAtomicReference.set(s);
        });
    }

    public static SystemNotifications getSystemNotificationsApi(){

        if(systemNotificationsAtomicReference.get() == null)
            throw new RuntimeException("System notification not initialised");
        return systemNotificationsAtomicReference.get();
    }

     public static AchievementsApiWs getAchievementsApi() {
        if(ApiClientFactoryWs.achievementsApiWs == null) {
            init();
            ApiClientFactoryWs.achievementsApiWs = new AchievementsApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.achievementsApiWs;
    }

     public static AwardsApiWs getAwardsApi() {
        if(ApiClientFactoryWs.awardsApiWs == null) {
            init();
            ApiClientFactoryWs.awardsApiWs = new AwardsApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.awardsApiWs;
    }

     public static CompetitionsApiWs getCompetitionsApi() {
        if(ApiClientFactoryWs.competitionsApiWs == null) {
            init();
            ApiClientFactoryWs.competitionsApiWs = new CompetitionsApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.competitionsApiWs;
    }

     public static ContestsApiWs getContestsApi() {
        if(ApiClientFactoryWs.contestsApiWs == null) {
            init();
            ApiClientFactoryWs.contestsApiWs = new ContestsApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.contestsApiWs;
    }

     public static FilesApiWs getFilesApi() {
        if(ApiClientFactoryWs.filesApiWs == null) {
            init();
            ApiClientFactoryWs.filesApiWs = new FilesApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.filesApiWs;
    }

     public static MembersApiWs getMembersApi() {
        if(ApiClientFactoryWs.membersApiWs == null) {
            init();
            ApiClientFactoryWs.membersApiWs = new MembersApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.membersApiWs;
    }

     public static MessagesApiWs getMessagesApi() {
        if(ApiClientFactoryWs.messagesApiWs == null) {
            init();
            ApiClientFactoryWs.messagesApiWs = new MessagesApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.messagesApiWs;
    }

     public static ProxyApiWs getProxyApi() {
        if(ApiClientFactoryWs.proxyApiWs == null) {
            init();
            ApiClientFactoryWs.proxyApiWs = new ProxyApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.proxyApiWs;
    }

     public static RewardsApiWs getRewardsApi() {
        if(ApiClientFactoryWs.rewardsApiWs == null) {
            init();
            ApiClientFactoryWs.rewardsApiWs = new RewardsApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.rewardsApiWs;
    }

     public static RulesApiWs getRulesApi() {
        if(ApiClientFactoryWs.rulesApiWs == null) {
            init();
            ApiClientFactoryWs.rulesApiWs = new RulesApiWs(streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactoryWs.rulesApiWs;
    }

    
}
