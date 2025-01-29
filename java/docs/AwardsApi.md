# AwardsApi

All URIs are relative to *https://member-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**claimAwards**](AwardsApi.md#claimAwards) | **POST** /awards-claim | Claim awards. |
| [**claimAwardsWithHttpInfo**](AwardsApi.md#claimAwardsWithHttpInfo) | **POST** /awards-claim | Claim awards. |
| [**declineAwards**](AwardsApi.md#declineAwards) | **POST** /awards-decline | Claim awards. |
| [**declineAwardsWithHttpInfo**](AwardsApi.md#declineAwardsWithHttpInfo) | **POST** /awards-decline | Claim awards. |
| [**getAwards**](AwardsApi.md#getAwards) | **POST** /awards | Get awards. |
| [**getAwardsWithHttpInfo**](AwardsApi.md#getAwardsWithHttpInfo) | **POST** /awards | Get awards. |



## claimAwards

> CompletableFuture<AwardResponse> claimAwards(claimAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.AwardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        ClaimAwardRequest claimAwardRequest = new ClaimAwardRequest(); // ClaimAwardRequest | 
        try {
            CompletableFuture<AwardResponse> result = apiInstance.claimAwards(claimAwardRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling AwardsApi#claimAwards");
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
| **claimAwardRequest** | [**ClaimAwardRequest**](ClaimAwardRequest.md)|  | |

### Return type

CompletableFuture<[**AwardResponse**](AwardResponse.md)>


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

## claimAwardsWithHttpInfo

> CompletableFuture<ApiResponse<AwardResponse>> claimAwards claimAwardsWithHttpInfo(claimAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.AwardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        ClaimAwardRequest claimAwardRequest = new ClaimAwardRequest(); // ClaimAwardRequest | 
        try {
            CompletableFuture<ApiResponse<AwardResponse>> response = apiInstance.claimAwardsWithHttpInfo(claimAwardRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling AwardsApi#claimAwards");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling AwardsApi#claimAwards");
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
| **claimAwardRequest** | [**ClaimAwardRequest**](ClaimAwardRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**AwardResponse**](AwardResponse.md)>>


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


## declineAwards

> CompletableFuture<AwardResponse> declineAwards(declineAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.AwardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        DeclineAwardRequest declineAwardRequest = new DeclineAwardRequest(); // DeclineAwardRequest | 
        try {
            CompletableFuture<AwardResponse> result = apiInstance.declineAwards(declineAwardRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling AwardsApi#declineAwards");
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
| **declineAwardRequest** | [**DeclineAwardRequest**](DeclineAwardRequest.md)|  | |

### Return type

CompletableFuture<[**AwardResponse**](AwardResponse.md)>


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

## declineAwardsWithHttpInfo

> CompletableFuture<ApiResponse<AwardResponse>> declineAwards declineAwardsWithHttpInfo(declineAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.AwardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        DeclineAwardRequest declineAwardRequest = new DeclineAwardRequest(); // DeclineAwardRequest | 
        try {
            CompletableFuture<ApiResponse<AwardResponse>> response = apiInstance.declineAwardsWithHttpInfo(declineAwardRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling AwardsApi#declineAwards");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling AwardsApi#declineAwards");
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
| **declineAwardRequest** | [**DeclineAwardRequest**](DeclineAwardRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**AwardResponse**](AwardResponse.md)>>


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


## getAwards

> CompletableFuture<AwardResponse> getAwards(awardRequest)

Get awards.

This operation supports retrieval of awards for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.AwardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        AwardRequest awardRequest = new AwardRequest(); // AwardRequest | 
        try {
            CompletableFuture<AwardResponse> result = apiInstance.getAwards(awardRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling AwardsApi#getAwards");
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
| **awardRequest** | [**AwardRequest**](AwardRequest.md)|  | |

### Return type

CompletableFuture<[**AwardResponse**](AwardResponse.md)>


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

## getAwardsWithHttpInfo

> CompletableFuture<ApiResponse<AwardResponse>> getAwards getAwardsWithHttpInfo(awardRequest)

Get awards.

This operation supports retrieval of awards for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.AwardsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        AwardRequest awardRequest = new AwardRequest(); // AwardRequest | 
        try {
            CompletableFuture<ApiResponse<AwardResponse>> response = apiInstance.getAwardsWithHttpInfo(awardRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling AwardsApi#getAwards");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling AwardsApi#getAwards");
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
| **awardRequest** | [**AwardRequest**](AwardRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**AwardResponse**](AwardResponse.md)>>


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

