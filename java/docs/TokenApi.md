# TokenApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getToken**](TokenApi.md#getToken) | **POST** /get-token |  |
| [**getTokenWithHttpInfo**](TokenApi.md#getTokenWithHttpInfo) | **POST** /get-token |  |



## getToken

> CompletableFuture<TokenResponse> getToken(tokenRequest)



Get Jwt Token

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.TokenApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        TokenApi apiInstance = new TokenApi(defaultClient);
        TokenRequest tokenRequest = new TokenRequest(); // TokenRequest | 
        try {
            CompletableFuture<TokenResponse> result = apiInstance.getToken(tokenRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling TokenApi#getToken");
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
| **tokenRequest** | [**TokenRequest**](TokenRequest.md)|  | |

### Return type

CompletableFuture<[**TokenResponse**](TokenResponse.md)>


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

## getTokenWithHttpInfo

> CompletableFuture<ApiResponse<TokenResponse>> getToken getTokenWithHttpInfo(tokenRequest)



Get Jwt Token

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.TokenApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        TokenApi apiInstance = new TokenApi(defaultClient);
        TokenRequest tokenRequest = new TokenRequest(); // TokenRequest | 
        try {
            CompletableFuture<ApiResponse<TokenResponse>> response = apiInstance.getTokenWithHttpInfo(tokenRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling TokenApi#getToken");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling TokenApi#getToken");
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
| **tokenRequest** | [**TokenRequest**](TokenRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**TokenResponse**](TokenResponse.md)>>


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

