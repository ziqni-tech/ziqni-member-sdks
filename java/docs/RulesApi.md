# RulesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRules**](RulesApi.md#getRules) | **POST** /rules | Get rules
[**getRulesWithHttpInfo**](RulesApi.md#getRulesWithHttpInfo) | **POST** /rules | Get rules



## getRules

> CompletableFuture<RuleResponse> getRules(entityRequest)

Get rules

This operation support retrieval of rules for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.RulesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        RulesApi apiInstance = new RulesApi(defaultClient);
        EntityRequest entityRequest = new EntityRequest(); // EntityRequest | 
        try {
            CompletableFuture<RuleResponse> result = apiInstance.getRules(entityRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling RulesApi#getRules");
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
 **entityRequest** | [**EntityRequest**](EntityRequest.md)|  |

### Return type

CompletableFuture<[**RuleResponse**](RuleResponse.md)>


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

## getRulesWithHttpInfo

> CompletableFuture<ApiResponse<RuleResponse>> getRules getRulesWithHttpInfo(entityRequest)

Get rules

This operation support retrieval of rules for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.RulesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        RulesApi apiInstance = new RulesApi(defaultClient);
        EntityRequest entityRequest = new EntityRequest(); // EntityRequest | 
        try {
            CompletableFuture<ApiResponse<RuleResponse>> response = apiInstance.getRulesWithHttpInfo(entityRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling RulesApi#getRules");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling RulesApi#getRules");
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
 **entityRequest** | [**EntityRequest**](EntityRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**RuleResponse**](RuleResponse.md)>>


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

