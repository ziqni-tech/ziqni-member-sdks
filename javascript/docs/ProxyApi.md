# @ZiqniTechGamificationApiClient.ProxyApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy**](ProxyApi.md#proxy) | **POST** /proxy | Proxy



## proxy

> ProxyResponse proxy(proxyRequest)

Proxy

Perform proxy operations.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';

let apiInstance = new @ZiqniTechGamificationApiClient.ProxyApi();
let proxyRequest = new @ZiqniTechGamificationApiClient.ProxyRequest(); // ProxyRequest | 
apiInstance.proxy(proxyRequest, (error, data, response) => {
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
 **proxyRequest** | [**ProxyRequest**](ProxyRequest.md)|  | 

### Return type

[**ProxyResponse**](ProxyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

