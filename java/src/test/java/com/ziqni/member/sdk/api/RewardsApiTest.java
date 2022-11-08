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

import com.ziqni.admin.sdk.model.EntityType;
import com.ziqni.admin.sdk.model.MemberTokenRequest;
import com.ziqni.member.sdk.ApiClientFactoryWs;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.configuration.ApiClientConfig;
import com.ziqni.member.sdk.data.LoadRewardsData;
import com.ziqni.member.sdk.data.LoadRulesData;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import com.ziqni.member.sdk.util.TestMemberTokenLoader;
import org.junit.jupiter.api.*;

import static com.ziqni.member.sdk.util.TestMemberTokenLoader.TEST_MEMBER_TOKEN;
import static org.junit.jupiter.api.Assertions.*;

/**
 * API tests for RewardsApi
 */
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class RewardsApiTest implements tests.utils.CompleteableFutureTestWrapper{

    private  RewardsApiWs api;
    private  LoadRewardsData loadRewardsData;

    @BeforeAll
    public void start() throws Exception {
        TestMemberTokenLoader testMemberTokenLoader = new TestMemberTokenLoader();
        MemberTokenRequest tokenRequest = new MemberTokenRequest()
                .apiKey(testMemberTokenLoader.getApiKey())
                .expires(6000)
                .isReferenceId(true)
                .member(TEST_MEMBER_TOKEN)
                .resource("ziqni-gapi");

        // ApiClientConfig.setIdentityAuthorization(testMemberTokenLoader.setMemberTokenRequest(tokenRequest));
        ApiClientConfig.setIdentityAuthorization(null);
        this.api = ApiClientFactoryWs.getRewardsApi();
        this.loadRewardsData = new LoadRewardsData();
        ApiClientFactoryUtil.initApiClientFactory();
    }

    @AfterAll
    public  void stop(){
        ApiClientFactoryWs.getStreamingClient().stop();
    }


    
    /**
     * Get rewards
     *
     * This operation support retrieval of rewards for one or many entitites.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getRewardsTest() throws ApiException {
        String achievementId = "bMLMv34B99ZI0UTU5MKP";
        var response = api.getRewards(loadRewardsData.getRequest(achievementId, EntityType.ACHIEVEMENT.getValue())).join();

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        assertFalse(response.getData().isEmpty(), "Should have results");
    }
    
}
