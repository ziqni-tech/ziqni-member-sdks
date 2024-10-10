# InstantWinsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInstantWinAvailablePlays**](InstantWinsApi.md#getInstantWinAvailablePlays) | **POST** /instant-wins-available-plays | 
[**getInstantWinAvailablePlaysWithHttpInfo**](InstantWinsApi.md#getInstantWinAvailablePlaysWithHttpInfo) | **POST** /instant-wins-available-plays | 
[**listInstantWins**](InstantWinsApi.md#listInstantWins) | **POST** /instant-wins | 
[**listInstantWinsWithHttpInfo**](InstantWinsApi.md#listInstantWinsWithHttpInfo) | **POST** /instant-wins | 
[**playInstantWin**](InstantWinsApi.md#playInstantWin) | **POST** /instant-wins-play | 
[**playInstantWinWithHttpInfo**](InstantWinsApi.md#playInstantWinWithHttpInfo) | **POST** /instant-wins-play | 



## getInstantWinAvailablePlays

> CompletableFuture<InstantWinsAvailablePlayResponse> getInstantWinAvailablePlays(instantWinAvailablePlaysRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.InstantWinsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        InstantWinsApi apiInstance = new InstantWinsApi(defaultClient);
        InstantWinAvailablePlaysRequest instantWinAvailablePlaysRequest = new InstantWinAvailablePlaysRequest(); // InstantWinAvailablePlaysRequest | 
        try {
            CompletableFuture<InstantWinsAvailablePlayResponse> result = apiInstance.getInstantWinAvailablePlays(instantWinAvailablePlaysRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling InstantWinsApi#getInstantWinAvailablePlays");
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
 **instantWinAvailablePlaysRequest** | [**InstantWinAvailablePlaysRequest**](InstantWinAvailablePlaysRequest.md)|  |

### Return type

CompletableFuture<[**InstantWinsAvailablePlayResponse**](InstantWinsAvailablePlayResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

## getInstantWinAvailablePlaysWithHttpInfo

> CompletableFuture<ApiResponse<InstantWinsAvailablePlayResponse>> getInstantWinAvailablePlays getInstantWinAvailablePlaysWithHttpInfo(instantWinAvailablePlaysRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.InstantWinsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        InstantWinsApi apiInstance = new InstantWinsApi(defaultClient);
        InstantWinAvailablePlaysRequest instantWinAvailablePlaysRequest = new InstantWinAvailablePlaysRequest(); // InstantWinAvailablePlaysRequest | 
        try {
            CompletableFuture<ApiResponse<InstantWinsAvailablePlayResponse>> response = apiInstance.getInstantWinAvailablePlaysWithHttpInfo(instantWinAvailablePlaysRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling InstantWinsApi#getInstantWinAvailablePlays");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling InstantWinsApi#getInstantWinAvailablePlays");
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
 **instantWinAvailablePlaysRequest** | [**InstantWinAvailablePlaysRequest**](InstantWinAvailablePlaysRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**InstantWinsAvailablePlayResponse**](InstantWinsAvailablePlayResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |


## listInstantWins

> CompletableFuture<InstantWinResponse> listInstantWins(instantWinRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.InstantWinsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        InstantWinsApi apiInstance = new InstantWinsApi(defaultClient);
        InstantWinRequest instantWinRequest = new InstantWinRequest(); // InstantWinRequest | 
        try {
            CompletableFuture<InstantWinResponse> result = apiInstance.listInstantWins(instantWinRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling InstantWinsApi#listInstantWins");
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
 **instantWinRequest** | [**InstantWinRequest**](InstantWinRequest.md)|  |

### Return type

CompletableFuture<[**InstantWinResponse**](InstantWinResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

## listInstantWinsWithHttpInfo

> CompletableFuture<ApiResponse<InstantWinResponse>> listInstantWins listInstantWinsWithHttpInfo(instantWinRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.InstantWinsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        InstantWinsApi apiInstance = new InstantWinsApi(defaultClient);
        InstantWinRequest instantWinRequest = new InstantWinRequest(); // InstantWinRequest | 
        try {
            CompletableFuture<ApiResponse<InstantWinResponse>> response = apiInstance.listInstantWinsWithHttpInfo(instantWinRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling InstantWinsApi#listInstantWins");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling InstantWinsApi#listInstantWins");
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
 **instantWinRequest** | [**InstantWinRequest**](InstantWinRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**InstantWinResponse**](InstantWinResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |


## playInstantWin

> CompletableFuture<InstantWinPlayResponse> playInstantWin(instantWinPlayRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.InstantWinsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        InstantWinsApi apiInstance = new InstantWinsApi(defaultClient);
        InstantWinPlayRequest instantWinPlayRequest = new InstantWinPlayRequest(); // InstantWinPlayRequest | 
        try {
            CompletableFuture<InstantWinPlayResponse> result = apiInstance.playInstantWin(instantWinPlayRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling InstantWinsApi#playInstantWin");
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
 **instantWinPlayRequest** | [**InstantWinPlayRequest**](InstantWinPlayRequest.md)|  |

### Return type

CompletableFuture<[**InstantWinPlayResponse**](InstantWinPlayResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

## playInstantWinWithHttpInfo

> CompletableFuture<ApiResponse<InstantWinPlayResponse>> playInstantWin playInstantWinWithHttpInfo(instantWinPlayRequest)



### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.InstantWinsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        InstantWinsApi apiInstance = new InstantWinsApi(defaultClient);
        InstantWinPlayRequest instantWinPlayRequest = new InstantWinPlayRequest(); // InstantWinPlayRequest | 
        try {
            CompletableFuture<ApiResponse<InstantWinPlayResponse>> response = apiInstance.playInstantWinWithHttpInfo(instantWinPlayRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling InstantWinsApi#playInstantWin");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling InstantWinsApi#playInstantWin");
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
 **instantWinPlayRequest** | [**InstantWinPlayRequest**](InstantWinPlayRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**InstantWinPlayResponse**](InstantWinPlayResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

