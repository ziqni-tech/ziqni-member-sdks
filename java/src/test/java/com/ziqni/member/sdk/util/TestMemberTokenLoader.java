package com.ziqni.member.sdk.util;

import com.ziqni.admin.client.ApiException;
import com.ziqni.admin.client.api.MemberTokenApi;
import com.ziqni.admin.client.configuration.AdminApiClientConfig;
import com.ziqni.admin.client.configuration.ApiRestClientFactory;
import com.ziqni.admin.client.model.MemberTokenRequest;
import com.ziqni.member.sdk.security.IdentityAuthorisationException;
import com.ziqni.member.sdk.security.IdentityAuthorization;

import java.util.Objects;

public class TestMemberTokenLoader implements IdentityAuthorization {

    public String apiKey = "4ad48941a7c4aa4586abc31a5958a35a";
//    public static final String TEST_API_TOKEN = "2c90c068a8319a4503a9fc0addc48501";
    public static final String TEST_MEMBER_TOKEN = "100015619";

    public String accessToken = null;

    public MemberTokenRequest memberTokenRequest;

    public MemberTokenApi memberTokenApi;

    public TestMemberTokenLoader() {
        this.memberTokenApi = new MemberTokenApi(ApiRestClientFactory.getApiClient());
    }

    @Override
    public String getAccessTokenString() throws IdentityAuthorisationException {
        if(this.accessToken == null){
            this.accessToken = getToken(memberTokenRequest).join();
        }
        return this.accessToken;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public TestMemberTokenLoader setAccessToken(String accessToken) {
        this.accessToken = accessToken;
        return this;
    }

    public MemberTokenRequest getMemberTokenRequest() {
        return memberTokenRequest;
    }

    public TestMemberTokenLoader setMemberTokenRequest(MemberTokenRequest memberTokenRequest) {
        this.memberTokenRequest = memberTokenRequest;
        return this;
    }

    public String getApiKey() {
        return apiKey;
    }

    public TestMemberTokenLoader setApiKey(String apiKey) {
        this.apiKey = apiKey;
        return this;
    }

    public java.util.concurrent.CompletableFuture<String> getToken(MemberTokenRequest memberTokenRequest) throws IdentityAuthorisationException {
        AdminApiClientConfig.load();
        try {
            return this.memberTokenApi.createMemberToken(memberTokenRequest).thenApply(tokenResponse -> {
                if (tokenResponse.getMeta().getErrorCount() != null && tokenResponse.getMeta().getErrorCount() > 0)
                    throw new RuntimeException("Failed to get a member token. " + Objects.requireNonNull(tokenResponse.getErrors()));
                return tokenResponse.getData().getJwtToken();
            });
        } catch (ApiException e) {
            throw new IdentityAuthorisationException(e);
        }
    }
}
