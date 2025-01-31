# GraphsApi

All URIs are relative to *https://member-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getGraph**](GraphsApi.md#getGraph) | **POST** /graphs | Get achievements by member reference id |
| [**getGraphWithHttpInfo**](GraphsApi.md#getGraphWithHttpInfo) | **POST** /graphs | Get achievements by member reference id |



## getGraph

> CompletableFuture<EntityGraphResponse> getGraph(entityGraphRequest)

Get achievements by member reference id

Returns a list of graphs based on the entity type.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.GraphsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        GraphsApi apiInstance = new GraphsApi(defaultClient);
        EntityGraphRequest entityGraphRequest = new EntityGraphRequest(); // EntityGraphRequest | 
        try {
            CompletableFuture<EntityGraphResponse> result = apiInstance.getGraph(entityGraphRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling GraphsApi#getGraph");
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
| **entityGraphRequest** | [**EntityGraphRequest**](EntityGraphRequest.md)|  | |

### Return type

CompletableFuture<[**EntityGraphResponse**](EntityGraphResponse.md)>


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

## getGraphWithHttpInfo

> CompletableFuture<ApiResponse<EntityGraphResponse>> getGraph getGraphWithHttpInfo(entityGraphRequest)

Get achievements by member reference id

Returns a list of graphs based on the entity type.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.GraphsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        GraphsApi apiInstance = new GraphsApi(defaultClient);
        EntityGraphRequest entityGraphRequest = new EntityGraphRequest(); // EntityGraphRequest | 
        try {
            CompletableFuture<ApiResponse<EntityGraphResponse>> response = apiInstance.getGraphWithHttpInfo(entityGraphRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling GraphsApi#getGraph");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling GraphsApi#getGraph");
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
| **entityGraphRequest** | [**EntityGraphRequest**](EntityGraphRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**EntityGraphResponse**](EntityGraphResponse.md)>>


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

