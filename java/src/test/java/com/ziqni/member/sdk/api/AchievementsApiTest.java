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

import com.ziqni.admin.sdk.model.MemberTokenRequest;
import com.ziqni.member.sdk.ZiqniMemberApiFactory;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.configuration.MemberApiClientConfiguration;
import com.ziqni.member.sdk.data.LoadAchievementsData;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import com.ziqni.member.sdk.util.TestMemberTokenLoader;
import org.junit.jupiter.api.*;

import java.util.Objects;

import static com.ziqni.member.sdk.util.TestMemberTokenLoader.TEST_MEMBER_TOKEN;
import static java.util.stream.Collectors.toList;
import static org.junit.jupiter.api.Assertions.*;

/**
 * API tests for AchievementsApi
 */
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class AchievementsApiTest implements tests.utils.CompleteableFutureTestWrapper{

    private AchievementsApiWs api;
    private LoadAchievementsData loadAchievementsData;

    @BeforeAll
    public void start() throws Exception {
        TestMemberTokenLoader testMemberTokenLoader = new TestMemberTokenLoader();
        MemberTokenRequest tokenRequest = new MemberTokenRequest()
                .apiKey(testMemberTokenLoader.getApiKey())
                .expires(6000)
                .isReferenceId(true)
                .member(TEST_MEMBER_TOKEN)
                .resource("ziqni-gapi");

       // MemberApiClientConfiguration.setIdentityAuthorization(testMemberTokenLoader.setMemberTokenRequest(tokenRequest));
        //MemberApiClientConfiguration.setIdentityAuthorization(null);
        this.api = ApiClientFactoryUtil.initApiClientFactory().getAchievementsApi();
        this.loadAchievementsData = new LoadAchievementsData();
        
    }

    @AfterAll
    public  void stop(){
        ApiClientFactoryUtil.stop();
    }

    /**
     * Get achievements by member reference id
     *
     * Returns a list of achievements for the provided member ref id and applied filters.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMemberAchievementsTest() throws Exception {

        var response = api.getAchievements(loadAchievementsData.getRequest()).join();

        assertNotNull(response);
        assertNotNull(response.getData());
        final var actual = response.getData().stream().filter(achievement -> Objects.nonNull(achievement.getMemberTagsFilter())).collect(toList());

        assertTrue( actual.size()>0);
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");
    }
    @Test
    public void getPublicAchievementsTest() throws Exception {

        var response = api.getAchievements(loadAchievementsData.getRequest()).join();

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");
    }

}
