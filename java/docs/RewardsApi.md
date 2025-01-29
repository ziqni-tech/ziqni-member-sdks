# RewardsApi

All URIs are relative to *https://member-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getRewards**](RewardsApi.md#getRewards) | **POST** /rewards | Get rewards |
| [**getRewardsWithHttpInfo**](RewardsApi.md#getRewardsWithHttpInfo) | **POST** /rewards | Get rewards |



## getRewards

> CompletableFuture<RewardResponse> getRewards(rewardRequest)

Get rewards

This operation support retrieval of rewards for one or many entitites.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.RewardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        RewardsApi apiInstance = new RewardsApi(defaultClient);
        RewardRequest rewardRequest = new RewardRequest(); // RewardRequest | 
        try {
            CompletableFuture<RewardResponse> result = apiInstance.getRewards(rewardRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling RewardsApi#getRewards");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **rewardRequest** | [**RewardRequest**](RewardRequest.md)|  | |

### Return type

CompletableFuture<[**RewardResponse**](RewardResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |
| **400** |  |  -  |
| **500** |  |  -  |

## getRewardsWithHttpInfo

> CompletableFuture<ApiResponse<RewardResponse>> getRewards getRewardsWithHttpInfo(rewardRequest)

Get rewards

This operation support retrieval of rewards for one or many entitites.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.RewardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        RewardsApi apiInstance = new RewardsApi(defaultClient);
        RewardRequest rewardRequest = new RewardRequest(); // RewardRequest | 
        try {
            CompletableFuture<ApiResponse<RewardResponse>> response = apiInstance.getRewardsWithHttpInfo(rewardRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling RewardsApi#getRewards");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling RewardsApi#getRewards");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **rewardRequest** | [**RewardRequest**](RewardRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**RewardResponse**](RewardResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |
| **400** |  |  -  |
| **500** |  |  -  |

