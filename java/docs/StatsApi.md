# StatsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActiveEntitiesCount**](StatsApi.md#getActiveEntitiesCount) | **POST** /actives-by-entity | Get achievements count by member reference id
[**getActiveEntitiesCountWithHttpInfo**](StatsApi.md#getActiveEntitiesCountWithHttpInfo) | **POST** /actives-by-entity | Get achievements count by member reference id



## getActiveEntitiesCount

> CompletableFuture<Map<String, Integer>> getActiveEntitiesCount(modelCountRequest)

Get achievements count by member reference id

Returns a count of achievements for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.StatsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        StatsApi apiInstance = new StatsApi(defaultClient);
        ModelCountRequest modelCountRequest = new ModelCountRequest(); // ModelCountRequest | 
        try {
            CompletableFuture<Map<String, Integer>> result = apiInstance.getActiveEntitiesCount(modelCountRequest);
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


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelCountRequest** | [**ModelCountRequest**](ModelCountRequest.md)|  |

### Return type

CompletableFuture<**Map&lt;String, Integer&gt;**>


### Authorization

[OAuth2](../README.md#OAuth2)

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

> CompletableFuture<ApiResponse<Map<String, Integer>>> getActiveEntitiesCount getActiveEntitiesCountWithHttpInfo(modelCountRequest)

Get achievements count by member reference id

Returns a count of achievements for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.StatsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        StatsApi apiInstance = new StatsApi(defaultClient);
        ModelCountRequest modelCountRequest = new ModelCountRequest(); // ModelCountRequest | 
        try {
            CompletableFuture<ApiResponse<Map<String, Integer>>> response = apiInstance.getActiveEntitiesCountWithHttpInfo(modelCountRequest);
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


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelCountRequest** | [**ModelCountRequest**](ModelCountRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<**Map&lt;String, Integer&gt;**>>


### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |
| **400** |  |  -  |
| **500** |  |  -  |

