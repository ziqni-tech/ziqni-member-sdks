# ProductsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProductsSimilarTo**](ProductsApi.md#getProductsSimilarTo) | **POST** /products | Get recommended products by product Id
[**getProductsSimilarToWithHttpInfo**](ProductsApi.md#getProductsSimilarToWithHttpInfo) | **POST** /products | Get recommended products by product Id



## getProductsSimilarTo

> CompletableFuture<ProductResponse> getProductsSimilarTo(similarToProductRequest)

Get recommended products by product Id

Returns a list of products recommended for a product with given id.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.ProductsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        ProductsApi apiInstance = new ProductsApi(defaultClient);
        SimilarToProductRequest similarToProductRequest = new SimilarToProductRequest(); // SimilarToProductRequest | 
        try {
            CompletableFuture<ProductResponse> result = apiInstance.getProductsSimilarTo(similarToProductRequest);
            System.out.println(result.get());
        } catch (ApiException e) {
            System.err.println("Exception when calling ProductsApi#getProductsSimilarTo");
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
 **similarToProductRequest** | [**SimilarToProductRequest**](SimilarToProductRequest.md)|  |

### Return type

CompletableFuture<[**ProductResponse**](ProductResponse.md)>


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

## getProductsSimilarToWithHttpInfo

> CompletableFuture<ApiResponse<ProductResponse>> getProductsSimilarTo getProductsSimilarToWithHttpInfo(similarToProductRequest)

Get recommended products by product Id

Returns a list of products recommended for a product with given id.

### Example

```java
// Import classes:
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.ApiResponse;
import com.ziqni.member.sdk.Configuration;
import com.ziqni.member.sdk.auth.*;
import com.ziqni.member.sdk.models.*;
import com.ziqni.member.sdk.api.ProductsApi;
import java.util.concurrent.CompletableFuture;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://member-api.ziqni.com");
        
        // Configure OAuth2 access token for authorization: OAuth2
        OAuth OAuth2 = (OAuth) defaultClient.getAuthentication("OAuth2");
        OAuth2.setAccessToken("YOUR ACCESS TOKEN");

        ProductsApi apiInstance = new ProductsApi(defaultClient);
        SimilarToProductRequest similarToProductRequest = new SimilarToProductRequest(); // SimilarToProductRequest | 
        try {
            CompletableFuture<ApiResponse<ProductResponse>> response = apiInstance.getProductsSimilarToWithHttpInfo(similarToProductRequest);
            System.out.println("Status code: " + response.get().getStatusCode());
            System.out.println("Response headers: " + response.get().getHeaders());
            System.out.println("Response body: " + response.get().getData());
        } catch (InterruptedException | ExecutionException e) {
            ApiException apiException = (ApiException)e.getCause();
            System.err.println("Exception when calling ProductsApi#getProductsSimilarTo");
            System.err.println("Status code: " + apiException.getCode());
            System.err.println("Response headers: " + apiException.getResponseHeaders());
            System.err.println("Reason: " + apiException.getResponseBody());
            e.printStackTrace();
        } catch (ApiException e) {
            System.err.println("Exception when calling ProductsApi#getProductsSimilarTo");
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
 **similarToProductRequest** | [**SimilarToProductRequest**](SimilarToProductRequest.md)|  |

### Return type

CompletableFuture<ApiResponse<[**ProductResponse**](ProductResponse.md)>>


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

