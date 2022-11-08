package com.ziqni.member.sdk.util;

import com.ziqni.admin.sdk.ApiException;
import com.ziqni.admin.sdk.ZiqniAdminApiFactory;
import com.ziqni.admin.sdk.api.MemberTokenApiWs;
import com.ziqni.admin.sdk.configuration.AdminApiClientConfig;
import com.ziqni.admin.sdk.model.MemberTokenRequest;
import com.ziqni.member.sdk.security.IdentityAuthorisationException;
import com.ziqni.member.sdk.security.IdentityAuthorization;

import java.util.Objects;

public class TestMemberTokenLoader implements IdentityAuthorization {

    public String apiKey = "c306a519a4038a4495a9a73a3bb17f9c";
//    public static final String TEST_API_TOKEN = "2c90c068a8319a4503a9fc0addc48501";
    public static final String TEST_MEMBER_TOKEN = "sbi99kwhltksc46hq6t6";

    public String accessToken = null;

    public MemberTokenRequest memberTokenRequest;

    public MemberTokenApiWs memberTokenApi;

    public TestMemberTokenLoader() {
        this.memberTokenApi = ZiqniAdminApiFactory.getMemberTokenApi();
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

        return this.memberTokenApi.createMemberToken(memberTokenRequest).thenApply(tokenResponse -> {
                if (tokenResponse.getMeta().getErrorCount() != null && tokenResponse.getMeta().getErrorCount() > 0)
                    throw new RuntimeException("Failed to get a member token. " + Objects.requireNonNull(tokenResponse.getErrors()));
                return tokenResponse.getData().getJwtToken();
            });

    }
}
