# CompetitionsApi

All URIs are relative to *https://member-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCompetitions**](CompetitionsApi.md#getCompetitions) | **POST** /competitions | Get competitions by member reference id |
| [**getCompetitionsWithHttpInfo**](CompetitionsApi.md#getCompetitionsWithHttpInfo) | **POST** /competitions | Get competitions by member reference id |



## getCompetitions

> CompletableFuture<CompetitionResponse> getCompetitions(competitionRequest)

Get competitions by member reference id

Returns a list of competitions for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.CompetitionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

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

## getCompetitionsWithHttpInfo

> CompletableFuture<ApiResponse<CompetitionResponse>> getCompetitions getCompetitionsWithHttpInfo(competitionRequest)

Get competitions by member reference id

Returns a list of competitions for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.CompetitionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

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

