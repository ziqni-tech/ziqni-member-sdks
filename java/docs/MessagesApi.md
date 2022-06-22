# MessagesApi

All URIs are relative to *https://api.ziqni.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getMessages**](MessagesApi.md#getMessages) | **POST** /gc/messages | Get messages by member reference id |
| [**getMessagesWithHttpInfo**](MessagesApi.md#getMessagesWithHttpInfo) | **POST** /gc/messages | Get messages by member reference id |



## getMessages

> CompletableFuture<MessageResponse> getMessages(messageRequest)

Get messages by member reference id

Returns a list of messages for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MessagesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.ziqni.io");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MessagesApi apiInstance = new MessagesApi(defaultClient);
        MessageRequest messageRequest = new MessageRequest(); // MessageRequest | 
        try {
            CompletableFuture<MessageResponse> result = apiInstance.getMessages(messageRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling MessagesApi#getMessages");
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
| **messageRequest** | [**MessageRequest**](MessageRequest.md)|  | |

### Return type

CompletableFuture<[**MessageResponse**](MessageResponse.md)>


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

## getMessagesWithHttpInfo

> CompletableFuture<ApiResponse<MessageResponse>> getMessages getMessagesWithHttpInfo(messageRequest)

Get messages by member reference id

Returns a list of messages for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Configuration;
import com.ziqni.gamification.client.auth.*;
import com.ziqni.gamification.client.models.*;
import com.ziqni.gamification.client.api.MessagesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.ziqni.io");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        MessagesApi apiInstance = new MessagesApi(defaultClient);
        MessageRequest messageRequest = new MessageRequest(); // MessageRequest | 
        try {
            CompletableFuture<ApiResponse<MessageResponse>> response = apiInstance.getMessagesWithHttpInfo(messageRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling MessagesApi#getMessages");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling MessagesApi#getMessages");
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
| **messageRequest** | [**MessageRequest**](MessageRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**MessageResponse**](MessageResponse.md)>>


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

