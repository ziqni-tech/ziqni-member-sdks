# ContestsApi

All URIs are relative to *https://member-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getContests**](ContestsApi.md#getContests) | **POST** /contests | Get contests by member reference Id |
| [**getContestsWithHttpInfo**](ContestsApi.md#getContestsWithHttpInfo) | **POST** /contests | Get contests by member reference Id |



## getContests

> CompletableFuture<ContestResponse> getContests(contestRequest)

Get contests by member reference Id

Returns a list of contests for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.ContestsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        ContestsApi apiInstance = new ContestsApi(defaultClient);
        ContestRequest contestRequest = new ContestRequest(); // ContestRequest | 
        try {
            CompletableFuture<ContestResponse> result = apiInstance.getContests(contestRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling ContestsApi#getContests");
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
| **contestRequest** | [**ContestRequest**](ContestRequest.md)|  | |

### Return type

CompletableFuture<[**ContestResponse**](ContestResponse.md)>


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

## getContestsWithHttpInfo

> CompletableFuture<ApiResponse<ContestResponse>> getContests getContestsWithHttpInfo(contestRequest)

Get contests by member reference Id

Returns a list of contests for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.ContestsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        ContestsApi apiInstance = new ContestsApi(defaultClient);
        ContestRequest contestRequest = new ContestRequest(); // ContestRequest | 
        try {
            CompletableFuture<ApiResponse<ContestResponse>> response = apiInstance.getContestsWithHttpInfo(contestRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling ContestsApi#getContests");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling ContestsApi#getContests");
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
| **contestRequest** | [**ContestRequest**](ContestRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**ContestResponse**](ContestResponse.md)>>


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

