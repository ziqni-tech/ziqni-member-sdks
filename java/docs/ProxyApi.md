# ProxyApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**proxy**](ProxyApi.md#proxy) | **POST** /proxy | Proxy |
| [**proxyWithHttpInfo**](ProxyApi.md#proxyWithHttpInfo) | **POST** /proxy | Proxy |



## proxy

> CompletableFuture<ProxyResponse> proxy(proxyRequest)

Proxy

Perform proxy operations.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.ProxyApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        ProxyApi apiInstance = new ProxyApi(defaultClient);
        ProxyRequest proxyRequest = new ProxyRequest(); // ProxyRequest | 
        try {
            CompletableFuture<ProxyResponse> result = apiInstance.proxy(proxyRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling ProxyApi#proxy");
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
| **proxyRequest** | [**ProxyRequest**](ProxyRequest.md)|  | |

### Return type

CompletableFuture<[**ProxyResponse**](ProxyResponse.md)>


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

## proxyWithHttpInfo

> CompletableFuture<ApiResponse<ProxyResponse>> proxy proxyWithHttpInfo(proxyRequest)

Proxy

Perform proxy operations.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.ProxyApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        ProxyApi apiInstance = new ProxyApi(defaultClient);
        ProxyRequest proxyRequest = new ProxyRequest(); // ProxyRequest | 
        try {
            CompletableFuture<ApiResponse<ProxyResponse>> response = apiInstance.proxyWithHttpInfo(proxyRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling ProxyApi#proxy");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling ProxyApi#proxy");
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
| **proxyRequest** | [**ProxyRequest**](ProxyRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**ProxyResponse**](ProxyResponse.md)>>


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

