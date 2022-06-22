# @ZiqniTechGamificationApiClient.ContestsApi

All URIs are relative to *https://api.ziqni.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContests**](ContestsApi.md#getContests) | **POST** /gc/contests | Get contests by member reference Id



## getContests

> ContestResponse getContests(contestRequest)

Get contests by member reference Id

Returns a list of contests for the provided member ref id and applied filters.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/gamification-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.ContestsApi();
let contestRequest = new @ZiqniTechGamificationApiClient.ContestRequest(); // ContestRequest | 
apiInstance.getContests(contestRequest, (error, data, response) => {
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
 **contestRequest** | [**ContestRequest**](ContestRequest.md)|  | 

### Return type

[**ContestResponse**](ContestResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

