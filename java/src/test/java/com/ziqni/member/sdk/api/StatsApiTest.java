package com.ziqni.member.sdk.api;

import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.configuration.ConfigurationLoader;
import com.ziqni.member.sdk.model.EntityType;
import com.ziqni.member.sdk.model.ModelCountRequest;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.concurrent.TimeUnit;

import static org.junit.jupiter.api.Assertions.assertNotNull;

public class StatsApiTest implements tests.utils.CompleteableFutureTestWrapper {

    private final StatsApiWs api;

    public StatsApiTest() throws Exception {
        this.api = ApiClientFactoryUtil.initApiClientFactory().getStatsApi();
    }

    @BeforeAll
    public static void start() throws Exception {
        ConfigurationLoader.setConfigFile("testing-application.properties");
    }

    @Test
    public void getActiveEntitiesCountTest() throws ApiException {
        var response = $(api.getActiveEntitiesCount(new ModelCountRequest()
                .entityId("FuAnimals")
                .entityType("Product")
                .isReferenceId(true)));

        assertNotNull(response);

    }

}
