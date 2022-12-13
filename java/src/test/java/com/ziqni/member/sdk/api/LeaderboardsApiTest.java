/*
 * Ziqni Member Cloud API
 * This is the Member cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.ziqni.member.sdk.api;

import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.data.LoadMemberData;
import com.ziqni.member.sdk.model.LeaderboardFilter;
import com.ziqni.member.sdk.model.LeaderboardSubscriptionRequest;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * API tests for MembersApi
 */
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class LeaderboardsApiTest implements tests.utils.CompleteableFutureTestWrapper{

    private final LeaderboardApiWs api;

    public LeaderboardsApiTest() throws Exception {
        this.api = ApiClientFactoryUtil.initApiClientFactory().getLeaderboardApi();
    }
    /**
     * subscribe to Leaderboard
     *
     * Returns leaderboard information for the provided contest id
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void subscribeToLeaderBoardTest() throws ApiException {
        final var contestId = "RNYzl4QBABBLGqYCxKYk";
        final var leaderboardSubscriptionRequest = new LeaderboardSubscriptionRequest()
                .action(LeaderboardSubscriptionRequest.ActionEnum.SUBSCRIBE)
                .entityId(contestId)
                .leaderboardFilter(new LeaderboardFilter()
                        .topRanksToInclude(10)
                        .ranksAboveToInclude(3)
                        .ranksBelowToInclude(3)
                );

        final var response = $(api.subscribeToLeaderboard(leaderboardSubscriptionRequest));

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
    }

    /**
     * subscribe to Leaderboard
     *
     * Returns leaderboard information for the provided contest id
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void subscribeToLeaderBoardWidgetTest() throws ApiException {
        final var contestId = "RNYzl4QBABBLGqYCxKYk";
        final var leaderboardSubscriptionRequest = new LeaderboardSubscriptionRequest()
                .action(LeaderboardSubscriptionRequest.ActionEnum.SUBSCRIBE)
                .entityId(contestId)
                .leaderboardFilter(new LeaderboardFilter()
                        .topRanksToInclude(10)
                );

        final var response = $(api.subscribeToLeaderboard(leaderboardSubscriptionRequest));

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
    }
    
}