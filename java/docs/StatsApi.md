# StatsApi

All URIs are relative to *https://member-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getActiveEntitiesCount**](StatsApi.md#getActiveEntitiesCount) | **POST** /actives-by-entity | Get competitions and/or achievements count by product id or reference id |
| [**getActiveEntitiesCountWithHttpInfo**](StatsApi.md#getActiveEntitiesCountWithHttpInfo) | **POST** /actives-by-entity | Get competitions and/or achievements count by product id or reference id |



## getActiveEntitiesCount

> CompletableFuture<ModelCountResponse> getActiveEntitiesCount(modelCountRequest)

Get competitions and/or achievements count by product id or reference id

Returns the count of active competitions and/or achievements by product id or reference id

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.StatsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        StatsApi apiInstance = new StatsApi(defaultClient);
        ModelCountRequest modelCountRequest = new ModelCountRequest(); // ModelCountRequest | 
        try {
            CompletableFuture<ModelCountResponse> result = apiInstance.getActiveEntitiesCount(modelCountRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling StatsApi#getActiveEntitiesCount");
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
| **modelCountRequest** | [**ModelCountRequest**](ModelCountRequest.md)|  | |

### Return type

CompletableFuture<[**ModelCountResponse**](ModelCountResponse.md)>


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

## getActiveEntitiesCountWithHttpInfo

> CompletableFuture<ApiResponse<ModelCountResponse>> getActiveEntitiesCount getActiveEntitiesCountWithHttpInfo(modelCountRequest)

Get competitions and/or achievements count by product id or reference id

Returns the count of active competitions and/or achievements by product id or reference id

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.StatsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        StatsApi apiInstance = new StatsApi(defaultClient);
        ModelCountRequest modelCountRequest = new ModelCountRequest(); // ModelCountRequest | 
        try {
            CompletableFuture<ApiResponse<ModelCountResponse>> response = apiInstance.getActiveEntitiesCountWithHttpInfo(modelCountRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling StatsApi#getActiveEntitiesCount");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling StatsApi#getActiveEntitiesCount");
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
| **modelCountRequest** | [**ModelCountRequest**](ModelCountRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**ModelCountResponse**](ModelCountResponse.md)>>


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

