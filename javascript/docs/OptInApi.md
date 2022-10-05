# ZiqniMemberApi.OptInApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manageOptin**](OptInApi.md#manageOptin) | **POST** /manage-optin | Get member optin information



## manageOptin

> OptInResponse manageOptin(manageOptinRequest)

Get member optin information

Returns a list of member optin information

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.OptInApi();
let manageOptinRequest = new ZiqniMemberApi.ManageOptinRequest(); // ManageOptinRequest | 
apiInstance.manageOptin(manageOptinRequest, (error, data, response) => {
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
 **manageOptinRequest** | [**ManageOptinRequest**](ManageOptinRequest.md)|  | 

### Return type

[**OptInResponse**](OptInResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

