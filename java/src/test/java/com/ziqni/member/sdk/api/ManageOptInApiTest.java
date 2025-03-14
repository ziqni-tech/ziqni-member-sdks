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

import com.ziqni.member.sdk.configuration.ConfigurationLoader;
import com.ziqni.member.sdk.model.ManageOptinRequest;
import com.ziqni.member.sdk.model.OptInStatesRequest;
import com.ziqni.member.sdk.model.OptinAction;
import com.ziqni.member.sdk.model.OptinStatesFilter;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * API tests for AchievementsApi
 */
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class ManageOptInApiTest implements tests.utils.CompleteableFutureTestWrapper{

    private OptInApiWs api;

    @BeforeAll
    public void start() throws Exception {
        ConfigurationLoader.setConfigFile("testing-application.properties");
        this.api = ApiClientFactoryUtil.initApiClientFactory().getOptInApi();

    }

    @AfterAll
    public  void stop(){
        ApiClientFactoryUtil.stop();
    }


    @Test
    public void manageOptInStatesTest() throws Exception {
        final var entityId = "PHk04JQB_zkdor8I8kUk";
        final var entityType = "Achievement";

        final var manageOptInRequest = new ManageOptinRequest()
                .entityId(entityId)
                .entityType(entityType)
                .action(OptinAction.JOIN);

        final var response = $(api.manageOptin(manageOptInRequest));

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");
    }

    @Test
    public void optInStatesTest() throws Exception {
        final var optInStatesRequest = new OptInStatesRequest()
                .optinStatesFilter(new OptinStatesFilter()
                        .limit(20)
                        .skip(0));
        final var response = $(api.optInStates(optInStatesRequest));

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");
    }

}
