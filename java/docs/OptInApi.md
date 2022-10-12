# OptInApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manageOptin**](OptInApi.md#manageOptin) | **POST** /manage-optin | Get member optin information
[**manageOptinWithHttpInfo**](OptInApi.md#manageOptinWithHttpInfo) | **POST** /manage-optin | Get member optin information
[**optInRequestStatus**](OptInApi.md#optInRequestStatus) | **POST** /manage-optin/state | Get member optin status information
[**optInRequestStatusWithHttpInfo**](OptInApi.md#optInRequestStatusWithHttpInfo) | **POST** /manage-optin/state | Get member optin status information



## manageOptin

> CompletableFuture<OptInResponse> manageOptin(manageOptinRequest)

Get member optin information

Returns a list of member optin information

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.OptInApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        OptInApi apiInstance = new OptInApi(defaultClient);
        ManageOptinRequest manageOptinRequest = new ManageOptinRequest(); // ManageOptinRequest | 
        try {
            CompletableFuture<OptInResponse> result = apiInstance.manageOptin(manageOptinRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling OptInApi#manageOptin");
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
 **manageOptinRequest** | [**ManageOptinRequest**](ManageOptinRequest.md)|  |

### Return type

CompletableFuture<[**OptInResponse**](OptInResponse.md)>


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

## manageOptinWithHttpInfo

> CompletableFuture<ApiResponse<OptInResponse>> manageOptin manageOptinWithHttpInfo(manageOptinRequest)

Get member optin information

Returns a list of member optin information

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.OptInApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        OptInApi apiInstance = new OptInApi(defaultClient);
        ManageOptinRequest manageOptinRequest = new ManageOptinRequest(); // ManageOptinRequest | 
        try {
            CompletableFuture<ApiResponse<OptInResponse>> response = apiInstance.manageOptinWithHttpInfo(manageOptinRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling OptInApi#manageOptin");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling OptInApi#manageOptin");
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
 **manageOptinRequest** | [**ManageOptinRequest**](ManageOptinRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**OptInResponse**](OptInResponse.md)>>


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


## optInRequestStatus

> CompletableFuture<OptInResponse> optInRequestStatus(optInRequestStatus)

Get member optin status information

Returns a list of member optin status information

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.OptInApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        OptInApi apiInstance = new OptInApi(defaultClient);
        OptInRequestStatus optInRequestStatus = new OptInRequestStatus(); // OptInRequestStatus | 
        try {
            CompletableFuture<OptInResponse> result = apiInstance.optInRequestStatus(optInRequestStatus);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling OptInApi#optInRequestStatus");
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
 **optInRequestStatus** | [**OptInRequestStatus**](OptInRequestStatus.md)|  |

### Return type

CompletableFuture<[**OptInResponse**](OptInResponse.md)>


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

## optInRequestStatusWithHttpInfo

> CompletableFuture<ApiResponse<OptInResponse>> optInRequestStatus optInRequestStatusWithHttpInfo(optInRequestStatus)

Get member optin status information

Returns a list of member optin status information

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.OptInApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        OptInApi apiInstance = new OptInApi(defaultClient);
        OptInRequestStatus optInRequestStatus = new OptInRequestStatus(); // OptInRequestStatus | 
        try {
            CompletableFuture<ApiResponse<OptInResponse>> response = apiInstance.optInRequestStatusWithHttpInfo(optInRequestStatus);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling OptInApi#optInRequestStatus");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling OptInApi#optInRequestStatus");
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
 **optInRequestStatus** | [**OptInRequestStatus**](OptInRequestStatus.md)|  |

### Return type

CompletableFuture<ApiResponse<[**OptInResponse**](OptInResponse.md)>>


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

