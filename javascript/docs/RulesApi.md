# ZiqniMemberApi.RulesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRules**](RulesApi.md#getRules) | **POST** /rules | Get rules



## getRules

> RuleResponse getRules(entityRequest)

Get rules

This operation support retrieval of rules for one or many entities.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.RulesApi();
let entityRequest = new ZiqniMemberApi.EntityRequest(); // EntityRequest | 
apiInstance.getRules(entityRequest, (error, data, response) => {
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
 **entityRequest** | [**EntityRequest**](EntityRequest.md)|  | 

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

