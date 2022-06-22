# @ZiqniTechGamificationApiClient.RulesApi

All URIs are relative to *https://api.ziqni.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRules**](RulesApi.md#getRules) | **POST** /gc/rules | Get rules



## getRules

> RuleResponse getRules(ruleRequest)

Get rules

This operation support retrieval of rules for one or many entities.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/gamification-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.RulesApi();
let ruleRequest = new @ZiqniTechGamificationApiClient.RuleRequest(); // RuleRequest | 
apiInstance.getRules(ruleRequest, (error, data, response) => {
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
 **ruleRequest** | [**RuleRequest**](RuleRequest.md)|  | 

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

