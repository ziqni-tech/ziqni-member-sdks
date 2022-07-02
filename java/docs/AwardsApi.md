# AwardsApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**claimAwards**](AwardsApi.md#claimAwards) | **POST** /awards-claim | Claim awards. |
| [**claimAwardsWithHttpInfo**](AwardsApi.md#claimAwardsWithHttpInfo) | **POST** /awards-claim | Claim awards. |
| [**getAwards**](AwardsApi.md#getAwards) | **POST** /awards | Get awards. |
| [**getAwardsWithHttpInfo**](AwardsApi.md#getAwardsWithHttpInfo) | **POST** /awards | Get awards. |



## claimAwards

> CompletableFuture<AwardResponse> claimAwards(claimAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.AwardsApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

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

## claimAwardsWithHttpInfo

> CompletableFuture<ApiResponse<AwardResponse>> claimAwards claimAwardsWithHttpInfo(claimAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.AwardsApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        ClaimAwardRequest claimAwardRequest = new ClaimAwardRequest(); // ClaimAwardRequest | 
        try {
            CompletableFuture<ApiResponse<AwardResponse>> response = apiInstance.claimAwardsWithHttpInfo(claimAwardRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException) e.getCause();
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


## getAwards

> CompletableFuture<AwardResponse> getAwards(awardRequest)

Get awards.

This operation supports retrieval of awards for one or many entities.

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.AwardsApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

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

## getAwardsWithHttpInfo

> CompletableFuture<ApiResponse<AwardResponse>> getAwards getAwardsWithHttpInfo(awardRequest)

Get awards.

This operation supports retrieval of awards for one or many entities.

### Example

```java
// Import classes:

import com.ziqni.gamification.client.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.AwardsApi;

import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        AwardsApi apiInstance = new AwardsApi(defaultClient);
        AwardRequest awardRequest = new AwardRequest(); // AwardRequest | 
        try {
            CompletableFuture<ApiResponse<AwardResponse>> response = apiInstance.getAwardsWithHttpInfo(awardRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException) e.getCause();
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

