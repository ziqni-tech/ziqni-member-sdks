/*
 * Ziqni Member Cloud API
 * This is the Member cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@ziqni.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.ziqni.member.sdk.api;

import com.auth0.jwt.JWT;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.ziqni.admin.client.model.MemberTokenRequest;
import com.ziqni.member.sdk.util.TestMemberTokenLoader;
import org.junit.jupiter.api.*;

import static com.ziqni.member.sdk.util.TestMemberTokenLoader.TEST_MEMBER_TOKEN;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * API tests for TokenApi
 */
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class TokenApiTest implements tests.utils.CompleteableFutureTestWrapper{

    /**
     *
     *
     * Get Jwt Token
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void getMemberSessionTokenTest() throws Exception {
        TestMemberTokenLoader memberTokenHelper = new TestMemberTokenLoader();
        MemberTokenRequest tokenRequest = new MemberTokenRequest()
                .apiKey(memberTokenHelper.getApiKey())
                .expires(60)
                .isReferenceId(true)
                .member(TEST_MEMBER_TOKEN)
                .resource("ziqni-gapi");

        var token = memberTokenHelper.getToken(tokenRequest).join();

        assertNotNull(token);

        DecodedJWT jwt = JWT.decode(token);
        assertNotNull(jwt);
        assertEquals(TEST_MEMBER_TOKEN,jwt.getClaims().get("member_reference_id").asString());
    }

    /**
     *
     *
     * Get Jwt Token
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void getPublicSessionTokenTest() throws Exception {
        TestMemberTokenLoader memberTokenHelper = new TestMemberTokenLoader();
        var tokenRequest = new MemberTokenRequest()
                .apiKey(memberTokenHelper.getApiKey())
//                .apiKey("b69bc598abcfaa48f6a9b39a2d8bddbe")
                .expires(600)
                .isReferenceId(false)
                .member("PUBLIC")
                .resource("ziqni-gapi");

        String token = memberTokenHelper.getToken(tokenRequest).join();

        assertNotNull(token);

        DecodedJWT jwt = JWT.decode(token);
        assertNotNull(jwt);
        assertEquals("PUBLIC",jwt.getClaims().get("member_reference_id").asString());
    }

}
