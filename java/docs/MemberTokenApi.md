# MemberTokenApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMemberToken**](MemberTokenApi.md#createMemberToken) | **POST** /member-token | 
[**createMemberTokenWithHttpInfo**](MemberTokenApi.md#createMemberTokenWithHttpInfo) | **POST** /member-token | 



## createMemberToken

> CompletableFuture<MemberTokenResponse> createMemberToken(memberTokenRequest)



Get Jwt Token

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MemberTokenApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        MemberTokenApi apiInstance = new MemberTokenApi(defaultClient);
        MemberTokenRequest memberTokenRequest = new MemberTokenRequest(); // MemberTokenRequest | 
        try {
            CompletableFuture<MemberTokenResponse> result = apiInstance.createMemberToken(memberTokenRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling MemberTokenApi#createMemberToken");
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
 **memberTokenRequest** | [**MemberTokenRequest**](MemberTokenRequest.md)|  |

### Return type

CompletableFuture<[**MemberTokenResponse**](MemberTokenResponse.md)>


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

## createMemberTokenWithHttpInfo

> CompletableFuture<ApiResponse<MemberTokenResponse>> createMemberToken createMemberTokenWithHttpInfo(memberTokenRequest)



Get Jwt Token

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MemberTokenApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        MemberTokenApi apiInstance = new MemberTokenApi(defaultClient);
        MemberTokenRequest memberTokenRequest = new MemberTokenRequest(); // MemberTokenRequest | 
        try {
            CompletableFuture<ApiResponse<MemberTokenResponse>> response = apiInstance.createMemberTokenWithHttpInfo(memberTokenRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling MemberTokenApi#createMemberToken");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling MemberTokenApi#createMemberToken");
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
 **memberTokenRequest** | [**MemberTokenRequest**](MemberTokenRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**MemberTokenResponse**](MemberTokenResponse.md)>>


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

