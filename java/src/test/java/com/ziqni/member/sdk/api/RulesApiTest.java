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
import com.ziqni.member.sdk.configuration.ConfigurationLoader;
import com.ziqni.member.sdk.data.LoadRulesData;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * API tests for RulesApi
 */
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class RulesApiTest implements tests.utils.CompleteableFutureTestWrapper{

    private  RulesApiWs api;
    private  LoadRulesData loadRulesData;

    @BeforeAll
    public void start() throws Exception {
        ConfigurationLoader.setConfigFile("testing-application.properties");
        this.api = ApiClientFactoryUtil.initApiClientFactory().getRulesApi();
        this.loadRulesData = new LoadRulesData();

    }

    @AfterAll
    public  void stop(){
        ApiClientFactoryUtil.stop();
    }



    /**
     * Get rules
     *
     * This operation support retrieval of rules for one or many entities.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getRulesTest() throws ApiException {

        var response = $(api.getRules(loadRulesData.getRequest()));

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");
    }

}
