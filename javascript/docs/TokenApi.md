# @ZiqniTechGamificationApiClient.TokenApi

All URIs are relative to *https://gamification-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getToken**](TokenApi.md#getToken) | **POST** /gc/get-token | 



## getToken

> TokenResponse getToken(tokenRequest)



Get Jwt Token

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/gamification-api-client';

let apiInstance = new @ZiqniTechGamificationApiClient.TokenApi();
let tokenRequest = new @ZiqniTechGamificationApiClient.TokenRequest(); // TokenRequest | 
apiInstance.getToken(tokenRequest, (error, data, response) => {
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
 **tokenRequest** | [**TokenRequest**](TokenRequest.md)|  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

