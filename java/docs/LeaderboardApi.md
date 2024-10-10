# LeaderboardApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscribeToLeaderboard**](LeaderboardApi.md#subscribeToLeaderboard) | **POST** /leaderboard | 
[**subscribeToLeaderboardWithHttpInfo**](LeaderboardApi.md#subscribeToLeaderboardWithHttpInfo) | **POST** /leaderboard | 



## subscribeToLeaderboard

> CompletableFuture<LeaderboardResponse> subscribeToLeaderboard(leaderboardSubscriptionRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.LeaderboardApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        LeaderboardApi apiInstance = new LeaderboardApi(defaultClient);
        LeaderboardSubscriptionRequest leaderboardSubscriptionRequest = new LeaderboardSubscriptionRequest(); // LeaderboardSubscriptionRequest | 
        try {
            CompletableFuture<LeaderboardResponse> result = apiInstance.subscribeToLeaderboard(leaderboardSubscriptionRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling LeaderboardApi#subscribeToLeaderboard");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leaderboardSubscriptionRequest** | [**LeaderboardSubscriptionRequest**](LeaderboardSubscriptionRequest.md)|  | [optional]

### Return type

CompletableFuture<[**LeaderboardResponse**](LeaderboardResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

## subscribeToLeaderboardWithHttpInfo

> CompletableFuture<ApiResponse<LeaderboardResponse>> subscribeToLeaderboard subscribeToLeaderboardWithHttpInfo(leaderboardSubscriptionRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.LeaderboardApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        LeaderboardApi apiInstance = new LeaderboardApi(defaultClient);
        LeaderboardSubscriptionRequest leaderboardSubscriptionRequest = new LeaderboardSubscriptionRequest(); // LeaderboardSubscriptionRequest | 
        try {
            CompletableFuture<ApiResponse<LeaderboardResponse>> response = apiInstance.subscribeToLeaderboardWithHttpInfo(leaderboardSubscriptionRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling LeaderboardApi#subscribeToLeaderboard");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling LeaderboardApi#subscribeToLeaderboard");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leaderboardSubscriptionRequest** | [**LeaderboardSubscriptionRequest**](LeaderboardSubscriptionRequest.md)|  | [optional]

### Return type

CompletableFuture<ApiResponse<[**LeaderboardResponse**](LeaderboardResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

