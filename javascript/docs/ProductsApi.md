# ZiqniMemberApi.ProductsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProducts**](ProductsApi.md#getProducts) | **POST** /products | Get recommended products by product Id



## getProducts

> ProductResponse getProducts(productRequest)

Get recommended products by product Id

Returns a list of products recommended for a product with given id.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.ProductsApi();
let productRequest = new ZiqniMemberApi.ProductRequest(); // ProductRequest | 
apiInstance.getProducts(productRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productRequest** | [**ProductRequest**](ProductRequest.md)|  | 

### Return type

[**ProductResponse**](ProductResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

