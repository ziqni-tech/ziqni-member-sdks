package com.ziqni.member.sdk.api;

import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.model.EntityType;
import com.ziqni.member.sdk.model.ModelCountRequest;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertNotNull;

public class StatsApiTest implements tests.utils.CompleteableFutureTestWrapper {

    private final StatsApiWs api;


    public StatsApiTest() throws Exception {
        this.api = ApiClientFactoryUtil.initApiClientFactory().getStatsApi();
    }

    @Test
    public void getMemberCompetitionsTest() throws ApiException {
        var response = $(api.getActiveEntitiesCount(new ModelCountRequest().entityId("Test_key-16ff1182-cce0-4931-bd21-899dbade9bbb").entityType(EntityType.PRODUCT.getValue())));

        assertNotNull(response);

    }

}
