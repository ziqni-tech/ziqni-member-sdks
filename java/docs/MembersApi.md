# MembersApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMember**](MembersApi.md#getMember) | **POST** /member-info | Get member information by member reference id
[**getMemberWithHttpInfo**](MembersApi.md#getMemberWithHttpInfo) | **POST** /member-info | Get member information by member reference id



## getMember

> CompletableFuture<MemberResponse> getMember(memberRequest)

Get member information by member reference id

Returns member information for the provided member reference id

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MembersApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MembersApi apiInstance = new MembersApi(defaultClient);
        MemberRequest memberRequest = new MemberRequest(); // MemberRequest | 
        try {
            CompletableFuture<MemberResponse> result = apiInstance.getMember(memberRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling MembersApi#getMember");
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
 **memberRequest** | [**MemberRequest**](MemberRequest.md)|  |

### Return type

CompletableFuture<[**MemberResponse**](MemberResponse.md)>


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

## getMemberWithHttpInfo

> CompletableFuture<ApiResponse<MemberResponse>> getMember getMemberWithHttpInfo(memberRequest)

Get member information by member reference id

Returns member information for the provided member reference id

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MembersApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MembersApi apiInstance = new MembersApi(defaultClient);
        MemberRequest memberRequest = new MemberRequest(); // MemberRequest | 
        try {
            CompletableFuture<ApiResponse<MemberResponse>> response = apiInstance.getMemberWithHttpInfo(memberRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling MembersApi#getMember");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling MembersApi#getMember");
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
 **memberRequest** | [**MemberRequest**](MemberRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**MemberResponse**](MemberResponse.md)>>


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

