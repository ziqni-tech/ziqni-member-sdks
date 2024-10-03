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
import com.ziqni.member.sdk.data.LoadCompetitionsData;
import com.ziqni.member.sdk.model.CompetitionRequest;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.concurrent.TimeUnit;

import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * API tests for CompetitionsApi
 */

public class CompetitionsApiTest implements tests.utils.CompleteableFutureTestWrapper {

    private final CompetitionsApiWs api;
    private final LoadCompetitionsData loadCompetitionsData;


    public CompetitionsApiTest() throws Exception {
        this.api = ApiClientFactoryUtil.initApiClientFactory().getCompetitionsApi();
        this.loadCompetitionsData = new LoadCompetitionsData();
    }

    /**
     * Get competitions by member reference id
     *
     * Returns a list of competitions for the provided member ref id and applied filters.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMemberCompetitionsTest() throws ApiException {
        var response = $(api.getCompetitions(loadCompetitionsData.getRequest().languageKey("de")));

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");

    }

    @Test
    public void getPublicCompetitionsTest() throws Exception {
        var response = $(api.getCompetitions(loadCompetitionsData.getRequest()));

        assertNotNull(response);
        assertNotNull(response.getData());
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");
    }

    @Test
    public void getCompetitionFilterByNonExistantProductReturnNoResultsTest() throws ApiException {
        final var createCompReq = loadCompetitionsData.getRequest();
        createCompReq.getCompetitionFilter().productIds(List.of("non_existant_product"));
        var response = $(api.getCompetitions(createCompReq));

        assertNotNull(response);
        assertNotNull(response.getData());
        Assertions.assertTrue(response.getData().isEmpty(), "Should not have results");
    }

    @Test
    public void getCompetitionFilterByProductUsedOn2CompetitionsReturn2ResultsTest() throws ApiException {
        final var createCompReq = loadCompetitionsData.getRequest();
        createCompReq.getCompetitionFilter().productIds(List.of("fht5oZAB8AyZ3Dx3XL7m"));
        var response = $(api.getCompetitions(createCompReq));

        assertNotNull(response);
        assertNotNull(response.getData());
        Assertions.assertFalse(response.getData().isEmpty(), "Should have results");
        Assertions.assertEquals(2, response.getData().size(), "Should have 2 results");
    }
    
}
