# CallbacksApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCallbacks**](CallbacksApi.md#listCallbacks) | **GET** /callbacks | Describe the system callbacks and there constraints
[**listCallbacksWithHttpInfo**](CallbacksApi.md#listCallbacksWithHttpInfo) | **GET** /callbacks | Describe the system callbacks and there constraints



## listCallbacks

> CompletableFuture<CallbacksResponse> listCallbacks()

Describe the system callbacks and there constraints

subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.CallbacksApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        CallbacksApi apiInstance = new CallbacksApi(defaultClient);
        try {
            CompletableFuture<CallbacksResponse> result = apiInstance.listCallbacks();
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling CallbacksApi#listCallbacks");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

CompletableFuture<[**CallbacksResponse**](CallbacksResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** |  |  -  |
| **500** |  |  -  |

## listCallbacksWithHttpInfo

> CompletableFuture<ApiResponse<CallbacksResponse>> listCallbacks listCallbacksWithHttpInfo()

Describe the system callbacks and there constraints

subscribes a client to receive out-of-band data

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.CallbacksApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        CallbacksApi apiInstance = new CallbacksApi(defaultClient);
        try {
            CompletableFuture<ApiResponse<CallbacksResponse>> response = apiInstance.listCallbacksWithHttpInfo();
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling CallbacksApi#listCallbacks");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling CallbacksApi#listCallbacks");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

CompletableFuture<ApiResponse<[**CallbacksResponse**](CallbacksResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** |  |  -  |
| **500** |  |  -  |

