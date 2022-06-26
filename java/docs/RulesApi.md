# RulesApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getRules**](RulesApi.md#getRules) | **POST** /rules | Get rules |
| [**getRulesWithHttpInfo**](RulesApi.md#getRulesWithHttpInfo) | **POST** /rules | Get rules |



## getRules

> CompletableFuture<RuleResponse> getRules(ruleRequest)

Get rules

This operation support retrieval of rules for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.RulesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        RulesApi apiInstance = new RulesApi(defaultClient);
        RuleRequest ruleRequest = new RuleRequest(); // RuleRequest | 
        try {
            CompletableFuture<RuleResponse> result = apiInstance.getRules(ruleRequest);
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


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ruleRequest** | [**RuleRequest**](RuleRequest.md)|  | |

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

> CompletableFuture<ApiResponse<RuleResponse>> getRules getRulesWithHttpInfo(ruleRequest)

Get rules

This operation support retrieval of rules for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.RulesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        RulesApi apiInstance = new RulesApi(defaultClient);
        RuleRequest ruleRequest = new RuleRequest(); // RuleRequest | 
        try {
            CompletableFuture<ApiResponse<RuleResponse>> response = apiInstance.getRulesWithHttpInfo(ruleRequest);
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


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ruleRequest** | [**RuleRequest**](RuleRequest.md)|  | |

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

