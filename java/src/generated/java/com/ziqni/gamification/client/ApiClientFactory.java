package com.ziqni.gamification.client;

import com.ziqni.gamification.client.configuration.ApiRestClientFactory;
import com.ziqni.gamification.client.configuration.ApiClientConfig;
import com.ziqni.gamification.client.api.*;
import com.ziqni.gamification.client.ws.WsAddress;
import java.time.Duration;
import com.ziqni.gamification.client.notifications.SystemNotifications;
import java.util.concurrent.atomic.AtomicReference;
import com.ziqni.gamification.client.notifications.model.SubscriptionResponse;
import com.ziqni.gamification.client.notifications.model.SubscriptionTypes;
import java.util.function.Consumer;

public abstract class ApiClientFactory {

    private static StreamingClient streamingClient;
    private static Boolean initialised = false;
    private static AchievementsApi achievementsApi;
    private static AwardsApi awardsApi;
    private static CompetitionsApi competitionsApi;
    private static ContestsApi contestsApi;
    private static FilesApi filesApi;
    private static MembersApi membersApi;
    private static MessagesApi messagesApi;
    private static ProxyApi proxyApi;
    private static RewardsApi rewardsApi;
    private static RulesApi rulesApi;
    private static TokenApi tokenApi;
    

    public static void initialise() throws Exception {
        if(initialised) return;

        ApiClientFactory.initialised = true;

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

        if(!ApiClientFactory.initialised) init();
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

     public static AchievementsApi getAchievementsApi() {
        if(ApiClientFactory.achievementsApi == null) {
            init();
            ApiClientFactory.achievementsApi = new AchievementsApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.achievementsApi;
    }

     public static AwardsApi getAwardsApi() {
        if(ApiClientFactory.awardsApi == null) {
            init();
            ApiClientFactory.awardsApi = new AwardsApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.awardsApi;
    }

     public static CompetitionsApi getCompetitionsApi() {
        if(ApiClientFactory.competitionsApi == null) {
            init();
            ApiClientFactory.competitionsApi = new CompetitionsApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.competitionsApi;
    }

     public static ContestsApi getContestsApi() {
        if(ApiClientFactory.contestsApi == null) {
            init();
            ApiClientFactory.contestsApi = new ContestsApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.contestsApi;
    }

     public static FilesApi getFilesApi() {
        if(ApiClientFactory.filesApi == null) {
            init();
            ApiClientFactory.filesApi = new FilesApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.filesApi;
    }

     public static MembersApi getMembersApi() {
        if(ApiClientFactory.membersApi == null) {
            init();
            ApiClientFactory.membersApi = new MembersApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.membersApi;
    }

     public static MessagesApi getMessagesApi() {
        if(ApiClientFactory.messagesApi == null) {
            init();
            ApiClientFactory.messagesApi = new MessagesApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.messagesApi;
    }

     public static ProxyApi getProxyApi() {
        if(ApiClientFactory.proxyApi == null) {
            init();
            ApiClientFactory.proxyApi = new ProxyApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.proxyApi;
    }

     public static RewardsApi getRewardsApi() {
        if(ApiClientFactory.rewardsApi == null) {
            init();
            ApiClientFactory.rewardsApi = new RewardsApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.rewardsApi;
    }

     public static RulesApi getRulesApi() {
        if(ApiClientFactory.rulesApi == null) {
            init();
            ApiClientFactory.rulesApi = new RulesApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.rulesApi;
    }

     public static TokenApi getTokenApi() {
        if(ApiClientFactory.tokenApi == null) {
            init();
            ApiClientFactory.tokenApi = new TokenApi(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5));
        }

        return ApiClientFactory.tokenApi;
    }

    
}
