# SystemNotificationsApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**systemNotificationsPost**](SystemNotificationsApi.md#systemNotificationsPost) | **POST** /system-notifications |  |
| [**systemNotificationsPostWithHttpInfo**](SystemNotificationsApi.md#systemNotificationsPostWithHttpInfo) | **POST** /system-notifications |  |



## systemNotificationsPost

> CompletableFuture<SubscriptionResponse> systemNotificationsPost(subscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.SystemNotificationsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        SystemNotificationsApi apiInstance = new SystemNotificationsApi(defaultClient);
        SubscriptionRequest subscriptionRequest = new SubscriptionRequest(); // SubscriptionRequest | 
        try {
            CompletableFuture<SubscriptionResponse> result = apiInstance.systemNotificationsPost(subscriptionRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling SystemNotificationsApi#systemNotificationsPost");
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
| **subscriptionRequest** | [**SubscriptionRequest**](SubscriptionRequest.md)|  | |

### Return type

CompletableFuture<[**SubscriptionResponse**](SubscriptionResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** |  |  -  |
| **400** |  |  -  |
| **500** |  |  -  |

## systemNotificationsPostWithHttpInfo

> CompletableFuture<ApiResponse<SubscriptionResponse>> systemNotificationsPost systemNotificationsPostWithHttpInfo(subscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.SystemNotificationsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        SystemNotificationsApi apiInstance = new SystemNotificationsApi(defaultClient);
        SubscriptionRequest subscriptionRequest = new SubscriptionRequest(); // SubscriptionRequest | 
        try {
            CompletableFuture<ApiResponse<SubscriptionResponse>> response = apiInstance.systemNotificationsPostWithHttpInfo(subscriptionRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling SystemNotificationsApi#systemNotificationsPost");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling SystemNotificationsApi#systemNotificationsPost");
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
| **subscriptionRequest** | [**SubscriptionRequest**](SubscriptionRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**SubscriptionResponse**](SubscriptionResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** |  |  -  |
| **400** |  |  -  |
| **500** |  |  -  |

