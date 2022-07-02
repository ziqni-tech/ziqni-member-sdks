# MembersApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getMember**](MembersApi.md#getMember) | **POST** /member-info | Get member information by member reference id |
| [**getMemberWithHttpInfo**](MembersApi.md#getMemberWithHttpInfo) | **POST** /member-info | Get member information by member reference id |
| [**getMemberOptinInfo**](MembersApi.md#getMemberOptinInfo) | **POST** /member-manage-optin | Get member optin information |
| [**getMemberOptinInfoWithHttpInfo**](MembersApi.md#getMemberOptinInfoWithHttpInfo) | **POST** /member-manage-optin | Get member optin information |
| [**getMemberSession**](MembersApi.md#getMemberSession) | **POST** /member-session | Get member session by member reference id |
| [**getMemberSessionWithHttpInfo**](MembersApi.md#getMemberSessionWithHttpInfo) | **POST** /member-session | Get member session by member reference id |



## getMember

> CompletableFuture<MemberResponse> getMember(memberRequest)

Get member information by member reference id

Returns member information for the provided member reference id

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MembersApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

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


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **memberRequest** | [**MemberRequest**](MemberRequest.md)|  | |

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

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MembersApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

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
            ApiException apiException = (ApiException) e.getCause();
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


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **memberRequest** | [**MemberRequest**](MemberRequest.md)|  | |

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


## getMemberOptinInfo

> CompletableFuture<MemberResponse> getMemberOptinInfo(memberOptinRequest)

Get member optin information

Returns a list of member optin information

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MembersApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MembersApi apiInstance = new MembersApi(defaultClient);
        MemberOptinRequest memberOptinRequest = new MemberOptinRequest(); // MemberOptinRequest | 
        try {
            CompletableFuture<MemberResponse> result = apiInstance.getMemberOptinInfo(memberOptinRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling MembersApi#getMemberOptinInfo");
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
| **memberOptinRequest** | [**MemberOptinRequest**](MemberOptinRequest.md)|  | |

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

## getMemberOptinInfoWithHttpInfo

> CompletableFuture<ApiResponse<MemberResponse>> getMemberOptinInfo getMemberOptinInfoWithHttpInfo(memberOptinRequest)

Get member optin information

Returns a list of member optin information

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MembersApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MembersApi apiInstance = new MembersApi(defaultClient);
        MemberOptinRequest memberOptinRequest = new MemberOptinRequest(); // MemberOptinRequest | 
        try {
            CompletableFuture<ApiResponse<MemberResponse>> response = apiInstance.getMemberOptinInfoWithHttpInfo(memberOptinRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException) e.getCause();
            System.err.println("Exception when calling MembersApi#getMemberOptinInfo");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling MembersApi#getMemberOptinInfo");
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
| **memberOptinRequest** | [**MemberOptinRequest**](MemberOptinRequest.md)|  | |

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


## getMemberSession

> CompletableFuture<MemberSessionResponse> getMemberSession(memberSessionRequest)

Get member session by member reference id

Returns member&#39;s active session information.

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MembersApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MembersApi apiInstance = new MembersApi(defaultClient);
        MemberSessionRequest memberSessionRequest = new MemberSessionRequest(); // MemberSessionRequest | 
        try {
            CompletableFuture<MemberSessionResponse> result = apiInstance.getMemberSession(memberSessionRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling MembersApi#getMemberSession");
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
| **memberSessionRequest** | [**MemberSessionRequest**](MemberSessionRequest.md)|  | |

### Return type

CompletableFuture<[**MemberSessionResponse**](MemberSessionResponse.md)>


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

## getMemberSessionWithHttpInfo

> CompletableFuture<ApiResponse<MemberSessionResponse>> getMemberSession getMemberSessionWithHttpInfo(memberSessionRequest)

Get member session by member reference id

Returns member&#39;s active session information.

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MembersApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MembersApi apiInstance = new MembersApi(defaultClient);
        MemberSessionRequest memberSessionRequest = new MemberSessionRequest(); // MemberSessionRequest | 
        try {
            CompletableFuture<ApiResponse<MemberSessionResponse>> response = apiInstance.getMemberSessionWithHttpInfo(memberSessionRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException) e.getCause();
            System.err.println("Exception when calling MembersApi#getMemberSession");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling MembersApi#getMemberSession");
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
| **memberSessionRequest** | [**MemberSessionRequest**](MemberSessionRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**MemberSessionResponse**](MemberSessionResponse.md)>>


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

