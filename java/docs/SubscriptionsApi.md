# SubscriptionsApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**subscribeToNotifications**](SubscriptionsApi.md#subscribeToNotifications) | **POST** /subscribe |  |
| [**subscribeToNotificationsWithHttpInfo**](SubscriptionsApi.md#subscribeToNotificationsWithHttpInfo) | **POST** /subscribe |  |



## subscribeToNotifications

> CompletableFuture<SubscriptionResponse> subscribeToNotifications(subscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.SubscriptionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        SubscriptionsApi apiInstance = new SubscriptionsApi(defaultClient);
        SubscriptionRequest subscriptionRequest = new SubscriptionRequest(); // SubscriptionRequest | subscription payload
        try {
            CompletableFuture<SubscriptionResponse> result = apiInstance.subscribeToNotifications(subscriptionRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling SubscriptionsApi#subscribeToNotifications");
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
| **subscriptionRequest** | [**SubscriptionRequest**](SubscriptionRequest.md)| subscription payload | |

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

## subscribeToNotificationsWithHttpInfo

> CompletableFuture<ApiResponse<SubscriptionResponse>> subscribeToNotifications subscribeToNotificationsWithHttpInfo(subscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.SubscriptionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        SubscriptionsApi apiInstance = new SubscriptionsApi(defaultClient);
        SubscriptionRequest subscriptionRequest = new SubscriptionRequest(); // SubscriptionRequest | subscription payload
        try {
            CompletableFuture<ApiResponse<SubscriptionResponse>> response = apiInstance.subscribeToNotificationsWithHttpInfo(subscriptionRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling SubscriptionsApi#subscribeToNotifications");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling SubscriptionsApi#subscribeToNotifications");
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
| **subscriptionRequest** | [**SubscriptionRequest**](SubscriptionRequest.md)| subscription payload | |

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

