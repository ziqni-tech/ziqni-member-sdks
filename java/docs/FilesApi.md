# FilesApi

All URIs are relative to *https://gamification-api.ziqni.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getFiles**](FilesApi.md#getFiles) | **POST** /files | Get files. |
| [**getFilesWithHttpInfo**](FilesApi.md#getFilesWithHttpInfo) | **POST** /files | Get files. |



## getFiles

> CompletableFuture<FileResponse> getFiles(fileRequest)

Get files.

This operation supports retrieval of file objects for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.FilesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        FilesApi apiInstance = new FilesApi(defaultClient);
        FileRequest fileRequest = new FileRequest(); // FileRequest | 
        try {
            CompletableFuture<FileResponse> result = apiInstance.getFiles(fileRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling FilesApi#getFiles");
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
| **fileRequest** | [**FileRequest**](FileRequest.md)|  | |

### Return type

CompletableFuture<[**FileResponse**](FileResponse.md)>


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

## getFilesWithHttpInfo

> CompletableFuture<ApiResponse<FileResponse>> getFiles getFilesWithHttpInfo(fileRequest)

Get files.

This operation supports retrieval of file objects for one or many entities.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.FilesApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://gamification-api.ziqni.com");

        FilesApi apiInstance = new FilesApi(defaultClient);
        FileRequest fileRequest = new FileRequest(); // FileRequest | 
        try {
            CompletableFuture<ApiResponse<FileResponse>> response = apiInstance.getFilesWithHttpInfo(fileRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling FilesApi#getFiles");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling FilesApi#getFiles");
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
| **fileRequest** | [**FileRequest**](FileRequest.md)|  | |

### Return type

CompletableFuture<ApiResponse<[**FileResponse**](FileResponse.md)>>


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

