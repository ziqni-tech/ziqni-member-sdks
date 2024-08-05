# MissionsApi

All URIs are relative to *https://member-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getMissionStates**](MissionsApi.md#getMissionStates) | **POST** /mission-states |  |
| [**getMissionStatesWithHttpInfo**](MissionsApi.md#getMissionStatesWithHttpInfo) | **POST** /mission-states |  |



## getMissionStates

> CompletableFuture<MissionStatesResponse> getMissionStates(missionStatesRequest)



Get mission states

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MissionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        MissionsApi apiInstance = new MissionsApi(defaultClient);
        MissionStatesRequest missionStatesRequest = new MissionStatesRequest(); // MissionStatesRequest | 
        try {
            CompletableFuture<MissionStatesResponse> result = apiInstance.getMissionStates(missionStatesRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling MissionsApi#getMissionStates");
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
| **missionStatesRequest** | [**MissionStatesRequest**](MissionStatesRequest.md)|  | |

### Return type

CompletableFuture<[**MissionStatesResponse**](MissionStatesResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

## getMissionStatesWithHttpInfo

> CompletableFuture<ApiResponse<MissionStatesResponse>> getMissionStates getMissionStatesWithHttpInfo(missionStatesRequest)



Get mission states

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MissionsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        MissionsApi apiInstance = new MissionsApi(defaultClient);
        MissionStatesRequest missionStatesRequest = new MissionStatesRequest(); // MissionStatesRequest | 
        try {
            CompletableFuture<ApiResponse<MissionStatesResponse>> response = apiInstance.getMissionStatesWithHttpInfo(missionStatesRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling MissionsApi#getMissionStates");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling MissionsApi#getMissionStates");
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
| **missionStatesRequest** | [**MissionStatesRequest**](MissionStatesRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**MissionStatesResponse**](MissionStatesResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

