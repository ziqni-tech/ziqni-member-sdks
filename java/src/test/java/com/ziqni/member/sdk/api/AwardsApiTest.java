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
import com.ziqni.member.sdk.data.LoadAwardsData;
import com.ziqni.member.sdk.model.Award;
import com.ziqni.member.sdk.model.AwardStateActions;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * API tests for AwardsApi
 */

public class AwardsApiTest  implements tests.utils.CompleteableFutureTestWrapper{

    private final AwardsApiWs api ;
    private final LoadAwardsData loadAwardsData;

    public AwardsApiTest() throws Exception {
        this.api = ApiClientFactoryUtil.initApiClientFactory().getAwardsApi();
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
//        var awardId="AH_HC20B2mXnzdxZP9kr";
        var awardId="eK7mDpEB9HGg6SrV-N2A";
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
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");

    }

    @Test
    public void getAwardsShouldNotReturnStaleData2SecondsAfterAwardClaimedTest() throws ApiException, InterruptedException {
        var awardId="mq4AE5EB9HGg6SrVRd0b";
        var claimedResponse = $(api.claimAwards(loadAwardsData.getClaimAwardRequest(awardId,List.of(awardId))));
        var getResponse = $(api.getAwards(loadAwardsData.getRequest(awardId)));
        assertNotNull(getResponse);
        final var data = getResponse.getData();
        assertNotNull(data);
        final var claimedAward = data.get(0);
        final var memberId = claimedAward.getMemberId();
        assertNull(getResponse.getErrors());
        assertEquals(claimedResponse.getData().get(0).getMemberId(),memberId, "Should be equal");
        assertEquals(AwardStateActions.CLAIMED,claimedAward.getStatus(), "Should be equal");
        assertEquals(35,claimedAward.getStatusCode(), "Should be equal");
    }

    @Test
    public void claimAwardsResponseReturnsClaimedStatusTest() throws ApiException, InterruptedException {
        var awardId="o64JE5EB9HGg6SrVrt1E";
        var claimedResponse = $(api.claimAwards(loadAwardsData.getClaimAwardRequest(awardId,List.of(awardId))));
        assertNotNull(claimedResponse);
        final var data = claimedResponse.getData();
        assertNotNull(data);
        final var claimedAward = data.get(0);
        final var memberId = claimedAward.getMemberId();
        assertNull(claimedResponse.getErrors());
        assertEquals(claimedResponse.getData().get(0).getMemberId(),memberId, "Should be equal");
        assertEquals(AwardStateActions.CLAIMED,claimedAward.getStatus(), "Should be equal");
        assertEquals(35,claimedAward.getStatusCode(), "Should be equal");
    }

}
