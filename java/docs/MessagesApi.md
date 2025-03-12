# MessagesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessages**](MessagesApi.md#getMessages) | **POST** /messages | Get messages by member reference id
[**getMessagesWithHttpInfo**](MessagesApi.md#getMessagesWithHttpInfo) | **POST** /messages | Get messages by member reference id
[**updateMessagesState**](MessagesApi.md#updateMessagesState) | **PUT** /messages/state | 
[**updateMessagesStateWithHttpInfo**](MessagesApi.md#updateMessagesStateWithHttpInfo) | **PUT** /messages/state | 



## getMessages

> CompletableFuture<MessageResponse> getMessages(messageRequest)

Get messages by member reference id

Returns a list of messages for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MessagesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

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


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageRequest** | [**MessageRequest**](MessageRequest.md)|  |

### Return type

CompletableFuture<[**MessageResponse**](MessageResponse.md)>


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

## getMessagesWithHttpInfo

> CompletableFuture<ApiResponse<MessageResponse>> getMessages getMessagesWithHttpInfo(messageRequest)

Get messages by member reference id

Returns a list of messages for the provided member ref id and applied filters.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MessagesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

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


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageRequest** | [**MessageRequest**](MessageRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**MessageResponse**](MessageResponse.md)>>


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


## updateMessagesState

> CompletableFuture<ModelApiResponse> updateMessagesState(body)



Manages the Messages state

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MessagesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        MessagesApi apiInstance = new MessagesApi(defaultClient);
        List<UpdateMessageStateRequest> body = Arrays.asList(); // List<UpdateMessageStateRequest> | Updates the state of the Message
        try {
            CompletableFuture<ModelApiResponse> result = apiInstance.updateMessagesState(body);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling MessagesApi#updateMessagesState");
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
 **body** | [**List&lt;UpdateMessageStateRequest&gt;**](UpdateMessageStateRequest.md)| Updates the state of the Message | [optional]

### Return type

CompletableFuture<[**ModelApiResponse**](ModelApiResponse.md)>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | A list of outcomes and/or errors |  -  |
| **202** | Accepted |  -  |
| **400** | A list of outcomes and/or errors |  -  |
| **401** | A list of outcomes and/or errors |  -  |
| **403** | A list of outcomes and/or errors |  -  |
| **404** | A list of outcomes and/or errors |  -  |
| **413** | A list of outcomes and/or errors |  -  |
| **500** | A list of outcomes and/or errors |  -  |
| **501** | A list of outcomes and/or errors |  -  |
| **503** | A list of outcomes and/or errors |  -  |

## updateMessagesStateWithHttpInfo

> CompletableFuture<ApiResponse<ModelApiResponse>> updateMessagesState updateMessagesStateWithHttpInfo(body)



Manages the Messages state

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.MessagesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");

        MessagesApi apiInstance = new MessagesApi(defaultClient);
        List<UpdateMessageStateRequest> body = Arrays.asList(); // List<UpdateMessageStateRequest> | Updates the state of the Message
        try {
            CompletableFuture<ApiResponse<ModelApiResponse>> response = apiInstance.updateMessagesStateWithHttpInfo(body);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling MessagesApi#updateMessagesState");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling MessagesApi#updateMessagesState");
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
 **body** | [**List&lt;UpdateMessageStateRequest&gt;**](UpdateMessageStateRequest.md)| Updates the state of the Message | [optional]

### Return type

CompletableFuture<ApiResponse<[**ModelApiResponse**](ModelApiResponse.md)>>


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | A list of outcomes and/or errors |  -  |
| **202** | Accepted |  -  |
| **400** | A list of outcomes and/or errors |  -  |
| **401** | A list of outcomes and/or errors |  -  |
| **403** | A list of outcomes and/or errors |  -  |
| **404** | A list of outcomes and/or errors |  -  |
| **413** | A list of outcomes and/or errors |  -  |
| **500** | A list of outcomes and/or errors |  -  |
| **501** | A list of outcomes and/or errors |  -  |
| **503** | A list of outcomes and/or errors |  -  |

