package com.ziqni.gamification.client.util;

import com.ziqni.admin.client.api.MemberTokenApi;
import com.ziqni.admin.client.configuration.ApiRestClientFactory;
import com.ziqni.admin.client.model.MemberTokenRequest;

public class MemberTokenHelper {

    public static final String TEST_API_TOKEN = "2c90c068a8319a4503a9fc0addc48501";
    public static final String TEST_MEMBER_TOKEN = "100015619";

    public static java.util.concurrent.CompletableFuture<String> getToken(MemberTokenRequest memberTokenRequest) throws Exception {
        return new MemberTokenApi(ApiRestClientFactory.getApiClient()).createMemberToken(memberTokenRequest).thenApply(tokenResponse -> {
            if (tokenResponse.getMeta().getErrorCount() != null && tokenResponse.getMeta().getErrorCount() > 0)
                throw new RuntimeException("Failed to get a member token. " + tokenResponse.getErrors().toString());
            return tokenResponse.getData().getJwtToken();
        });
    }
}
