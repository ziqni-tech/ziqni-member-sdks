# SystemNotificationsApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**subscribePost**](SystemNotificationsApi.md#subscribePost) | **POST** /subscribe |  |
| [**subscribePostWithHttpInfo**](SystemNotificationsApi.md#subscribePostWithHttpInfo) | **POST** /subscribe |  |



## subscribePost

> CompletableFuture<SubscribePost201Response> subscribePost(callbackUrl)



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
        URI callbackUrl = new URI(); // URI | the location where data will be sent.  Must be network accessible by the source server 
        try {
            CompletableFuture<SubscribePost201Response> result = apiInstance.subscribePost(callbackUrl);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling SystemNotificationsApi#subscribePost");
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
| **callbackUrl** | **URI**| the location where data will be sent.  Must be network accessible by the source server  | |

### Return type

CompletableFuture<[**SubscribePost201Response**](SubscribePost201Response.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | subscription successfully created |  -  |

## subscribePostWithHttpInfo

> CompletableFuture<ApiResponse<SubscribePost201Response>> subscribePost subscribePostWithHttpInfo(callbackUrl)



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
        URI callbackUrl = new URI(); // URI | the location where data will be sent.  Must be network accessible by the source server 
        try {
            CompletableFuture<ApiResponse<SubscribePost201Response>> response = apiInstance.subscribePostWithHttpInfo(callbackUrl);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling SystemNotificationsApi#subscribePost");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling SystemNotificationsApi#subscribePost");
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
| **callbackUrl** | **URI**| the location where data will be sent.  Must be network accessible by the source server  | |

### Return type

CompletableFuture<ApiResponse<[**SubscribePost201Response**](SubscribePost201Response.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | subscription successfully created |  -  |

