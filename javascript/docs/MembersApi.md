# @ZiqniTechGamificationApiClient.MembersApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMember**](MembersApi.md#getMember) | **POST** /member-info | Get member information by member reference id
[**getMemberOptinInfo**](MembersApi.md#getMemberOptinInfo) | **POST** /member-manage-optin | Get member optin information
[**getMemberSession**](MembersApi.md#getMemberSession) | **POST** /member-session | Get member session by member reference id



## getMember

> MemberResponse getMember(memberRequest)

Get member information by member reference id

Returns member information for the provided member reference id

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.MembersApi();
let memberRequest = new @ZiqniTechGamificationApiClient.MemberRequest(); // MemberRequest | 
apiInstance.getMember(memberRequest, (error, data, response) => {
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
 **memberRequest** | [**MemberRequest**](MemberRequest.md)|  | 

### Return type

[**MemberResponse**](MemberResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getMemberOptinInfo

> MemberResponse getMemberOptinInfo(memberOptinRequest)

Get member optin information

Returns a list of member optin information

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.MembersApi();
let memberOptinRequest = new @ZiqniTechGamificationApiClient.MemberOptinRequest(); // MemberOptinRequest | 
apiInstance.getMemberOptinInfo(memberOptinRequest, (error, data, response) => {
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
 **memberOptinRequest** | [**MemberOptinRequest**](MemberOptinRequest.md)|  | 

### Return type

[**MemberResponse**](MemberResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getMemberSession

> MemberSessionResponse getMemberSession(memberSessionRequest)

Get member session by member reference id

Returns member&#39;s active session information.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.MembersApi();
let memberSessionRequest = new @ZiqniTechGamificationApiClient.MemberSessionRequest(); // MemberSessionRequest | 
apiInstance.getMemberSession(memberSessionRequest, (error, data, response) => {
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
 **memberSessionRequest** | [**MemberSessionRequest**](MemberSessionRequest.md)|  | 

### Return type

[**MemberSessionResponse**](MemberSessionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

