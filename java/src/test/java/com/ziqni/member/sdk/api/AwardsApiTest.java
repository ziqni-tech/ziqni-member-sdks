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

import com.ziqni.member.sdk.ApiClientFactoryWs;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.data.LoadAwardsData;
import org.junit.jupiter.api.*;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * API tests for AwardsApi
 */

public class AwardsApiTest  implements tests.utils.CompleteableFutureTestWrapper{

    private final AwardsApiWs api ;
    private final LoadAwardsData loadAwardsData;

    public AwardsApiTest() {
        this.api = ApiClientFactoryWs.getAwardsApi();
        this.loadAwardsData=new LoadAwardsData();
    }

    /**
     * Claim awards.
     *
     * This operation enables a member to claim awards.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void claimAwardsTest() throws ApiException {
        //already created awards and get the memberRefId
        var expected="Test_key-7770c0a6-37c1-4ed4-a4d0-f7f5a7836c66";
        var awardId="AH_HC20B2mXnzdxZP9kr";
        var response = $(api.claimAwards(loadAwardsData.getClaimAwardRequest(expected,List.of(awardId))));

        assertNotNull(response);
        final var data = response.getData();
        assertNotNull(data);
        final var actual = data.get(0).getMemberId();
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        assertEquals(expected,actual, "Should have results");
    }

    /**
     * Get awards.
     *
     * This operation supports retrieval of awards for one or many entities.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getAwardsTest() throws ApiException {
        //already created awards and get the memberRefId
        var expected="Test_key-7770c0a6-37c1-4ed4-a4d0-f7f5a7836c66";
        var response = $(api.getAwards(loadAwardsData.getRequest(expected)));

        assertNotNull(response);
        final var data = response.getData();
        assertNotNull(data);
        final var actual = data.get(0).getMemberId();
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");
        assertEquals(expected,actual, "Should have results");

    }

}
