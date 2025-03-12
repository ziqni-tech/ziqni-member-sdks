package com.ziqni.member.sdk.api;

import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.configuration.ConfigurationLoader;
import com.ziqni.member.sdk.data.LoadAwardsData;
import com.ziqni.member.sdk.model.EntityGraphRequest;
import com.ziqni.member.sdk.util.ApiClientFactoryUtil;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertNotNull;

public class GraphsApiTest implements tests.utils.CompleteableFutureTestWrapper{

    private final GraphsApiWs api ;
    private final LoadAwardsData loadAwardsData;

    public GraphsApiTest() throws Exception {
        this.api = ApiClientFactoryUtil.initApiClientFactory().getGraphsApi();
        this.loadAwardsData=new LoadAwardsData();
    }

    @BeforeAll
    public static void start() throws Exception {
        ConfigurationLoader.setConfigFile("testing-application.properties");
    }

    @Test
    public void getGraphsTest() throws ApiException {
        var entityGraphRequest = new EntityGraphRequest();
        entityGraphRequest.setIds(List.of("r8zqkYYBka1zONloYCO4"));
        var response = $(api.getGraph(entityGraphRequest));

        assertNotNull(response);
        assertNotNull(response.getData());
        assertNotNull(response.getErrors());
        Assertions.assertTrue(response.getErrors().isEmpty(), "Should have no errors");

    }
}
