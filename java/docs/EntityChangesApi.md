# EntityChangesApi

All URIs are relative to *https://gamification-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manageEntityChangeSubscription**](EntityChangesApi.md#manageEntityChangeSubscription) | **POST** /entity-changes | 
[**manageEntityChangeSubscriptionWithHttpInfo**](EntityChangesApi.md#manageEntityChangeSubscriptionWithHttpInfo) | **POST** /entity-changes | 



## manageEntityChangeSubscription

> CompletableFuture<EntityChangeSubscriptionResponse> manageEntityChangeSubscription(entityChangeSubscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.EntityChangesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        EntityChangesApi apiInstance = new EntityChangesApi(defaultClient);
        EntityChangeSubscriptionRequest entityChangeSubscriptionRequest = new EntityChangeSubscriptionRequest(); // EntityChangeSubscriptionRequest | subscription payload
        try {
            CompletableFuture<EntityChangeSubscriptionResponse> result = apiInstance.manageEntityChangeSubscription(entityChangeSubscriptionRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling EntityChangesApi#manageEntityChangeSubscription");
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
 **entityChangeSubscriptionRequest** | [**EntityChangeSubscriptionRequest**](EntityChangeSubscriptionRequest.md)| subscription payload |

### Return type

CompletableFuture<[**EntityChangeSubscriptionResponse**](EntityChangeSubscriptionResponse.md)>


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

## manageEntityChangeSubscriptionWithHttpInfo

> CompletableFuture<ApiResponse<EntityChangeSubscriptionResponse>> manageEntityChangeSubscription manageEntityChangeSubscriptionWithHttpInfo(entityChangeSubscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.EntityChangesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        EntityChangesApi apiInstance = new EntityChangesApi(defaultClient);
        EntityChangeSubscriptionRequest entityChangeSubscriptionRequest = new EntityChangeSubscriptionRequest(); // EntityChangeSubscriptionRequest | subscription payload
        try {
            CompletableFuture<ApiResponse<EntityChangeSubscriptionResponse>> response = apiInstance.manageEntityChangeSubscriptionWithHttpInfo(entityChangeSubscriptionRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling EntityChangesApi#manageEntityChangeSubscription");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling EntityChangesApi#manageEntityChangeSubscription");
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
 **entityChangeSubscriptionRequest** | [**EntityChangeSubscriptionRequest**](EntityChangeSubscriptionRequest.md)| subscription payload |

### Return type

CompletableFuture<ApiResponse<[**EntityChangeSubscriptionResponse**](EntityChangeSubscriptionResponse.md)>>


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

