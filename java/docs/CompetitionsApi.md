# CompetitionsApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCompetitions**](CompetitionsApi.md#getCompetitions) | **POST** /gc/competitions | Get competitions by member reference id |
| [**getCompetitionsWithHttpInfo**](CompetitionsApi.md#getCompetitionsWithHttpInfo) | **POST** /gc/competitions | Get competitions by member reference id |



## getCompetitions

> CompletableFuture<CompetitionResponse> getCompetitions(competitionRequest)

Get competitions by member reference id

Returns a list of competitions for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.CompetitionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        CompetitionsApi apiInstance = new CompetitionsApi(defaultClient);
        CompetitionRequest competitionRequest = new CompetitionRequest(); // CompetitionRequest | 
        try {
            CompletableFuture<CompetitionResponse> result = apiInstance.getCompetitions(competitionRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling CompetitionsApi#getCompetitions");
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
| **competitionRequest** | [**CompetitionRequest**](CompetitionRequest.md)|  | |

### Return type

CompletableFuture<[**CompetitionResponse**](CompetitionResponse.md)>


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

## getCompetitionsWithHttpInfo

> CompletableFuture<ApiResponse<CompetitionResponse>> getCompetitions getCompetitionsWithHttpInfo(competitionRequest)

Get competitions by member reference id

Returns a list of competitions for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.CompetitionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        CompetitionsApi apiInstance = new CompetitionsApi(defaultClient);
        CompetitionRequest competitionRequest = new CompetitionRequest(); // CompetitionRequest | 
        try {
            CompletableFuture<ApiResponse<CompetitionResponse>> response = apiInstance.getCompetitionsWithHttpInfo(competitionRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling CompetitionsApi#getCompetitions");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling CompetitionsApi#getCompetitions");
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
| **competitionRequest** | [**CompetitionRequest**](CompetitionRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**CompetitionResponse**](CompetitionResponse.md)>>


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

