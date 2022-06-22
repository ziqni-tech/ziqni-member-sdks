package com.ziqni.gamification.client;

import com.ziqni.gamification.client.configuration.ApiRestClientFactory;
import com.ziqni.gamification.client.configuration.AdminApiClientConfig;
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

        if(AdminApiClientConfig.isWebsocket())
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
        assert AdminApiClientConfig.isWebsocket();
        if(!ApiClientFactory.initialised) init();
        if(systemNotificationsAtomicReference.get() != null)
            throw new Exception("System notification already initialised");
        getStreamingClient().asyncWebSocketClient(ws -> {
            var s = new SystemNotifications(ws,onSubscriptionResponse,onSubscriptionTypes);
            systemNotificationsAtomicReference.set(s);
        });
    }

    public static SystemNotifications getSystemNotificationsApi(){
        assert AdminApiClientConfig.isWebsocket();
        if(systemNotificationsAtomicReference.get() == null)
            throw new RuntimeException("System notification not initialised");
        return systemNotificationsAtomicReference.get();
    }

     public static AchievementsApi getAchievementsApi() {
        if(ApiClientFactory.achievementsApi == null) {
            init();

            ApiClientFactory.achievementsApi = (AdminApiClientConfig.isWebsocket())
                    ? new AchievementsApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new AchievementsApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.achievementsApi;
    }

     public static AwardsApi getAwardsApi() {
        if(ApiClientFactory.awardsApi == null) {
            init();

            ApiClientFactory.awardsApi = (AdminApiClientConfig.isWebsocket())
                    ? new AwardsApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new AwardsApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.awardsApi;
    }

     public static CompetitionsApi getCompetitionsApi() {
        if(ApiClientFactory.competitionsApi == null) {
            init();

            ApiClientFactory.competitionsApi = (AdminApiClientConfig.isWebsocket())
                    ? new CompetitionsApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new CompetitionsApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.competitionsApi;
    }

     public static ContestsApi getContestsApi() {
        if(ApiClientFactory.contestsApi == null) {
            init();

            ApiClientFactory.contestsApi = (AdminApiClientConfig.isWebsocket())
                    ? new ContestsApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new ContestsApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.contestsApi;
    }

     public static FilesApi getFilesApi() {
        if(ApiClientFactory.filesApi == null) {
            init();

            ApiClientFactory.filesApi = (AdminApiClientConfig.isWebsocket())
                    ? new FilesApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new FilesApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.filesApi;
    }

     public static MembersApi getMembersApi() {
        if(ApiClientFactory.membersApi == null) {
            init();

            ApiClientFactory.membersApi = (AdminApiClientConfig.isWebsocket())
                    ? new MembersApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new MembersApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.membersApi;
    }

     public static MessagesApi getMessagesApi() {
        if(ApiClientFactory.messagesApi == null) {
            init();

            ApiClientFactory.messagesApi = (AdminApiClientConfig.isWebsocket())
                    ? new MessagesApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new MessagesApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.messagesApi;
    }

     public static ProxyApi getProxyApi() {
        if(ApiClientFactory.proxyApi == null) {
            init();

            ApiClientFactory.proxyApi = (AdminApiClientConfig.isWebsocket())
                    ? new ProxyApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new ProxyApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.proxyApi;
    }

     public static RewardsApi getRewardsApi() {
        if(ApiClientFactory.rewardsApi == null) {
            init();

            ApiClientFactory.rewardsApi = (AdminApiClientConfig.isWebsocket())
                    ? new RewardsApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new RewardsApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.rewardsApi;
    }

     public static RulesApi getRulesApi() {
        if(ApiClientFactory.rulesApi == null) {
            init();

            ApiClientFactory.rulesApi = (AdminApiClientConfig.isWebsocket())
                    ? new RulesApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new RulesApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.rulesApi;
    }

     public static TokenApi getTokenApi() {
        if(ApiClientFactory.tokenApi == null) {
            init();

            ApiClientFactory.tokenApi = (AdminApiClientConfig.isWebsocket())
                    ? new TokenApiWs(ApiRestClientFactory.getApiClient(), streamingClient, Duration.ofSeconds(5))
                    : new TokenApi(ApiRestClientFactory.getApiClient());
        }

        return ApiClientFactory.tokenApi;
    }

    
}
