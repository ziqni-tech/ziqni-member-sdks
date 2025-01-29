# ZiqniMemberApi.MemberTokenApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMemberToken**](MemberTokenApi.md#createMemberToken) | **POST** /member-token | 



## createMemberToken

> MemberTokenResponse createMemberToken(memberTokenRequest)



Get Jwt Token

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.MemberTokenApi();
let memberTokenRequest = new ZiqniMemberApi.MemberTokenRequest(); // MemberTokenRequest | 
apiInstance.createMemberToken(memberTokenRequest, (error, data, response) => {
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
 **memberTokenRequest** | [**MemberTokenRequest**](MemberTokenRequest.md)|  | 

### Return type

[**MemberTokenResponse**](MemberTokenResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

