# @ZiqniTechGamificationApiClient.RewardsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRewards**](RewardsApi.md#getRewards) | **POST** /rewards | Get rewards



## getRewards

> RewardResponse getRewards(rewardRequest)

Get rewards

This operation support retrieval of rewards for one or many entitites.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.RewardsApi();
let rewardRequest = new @ZiqniTechGamificationApiClient.RewardRequest(); // RewardRequest | 
apiInstance.getRewards(rewardRequest, (error, data, response) => {
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
 **rewardRequest** | [**RewardRequest**](RewardRequest.md)|  | 

### Return type

[**RewardResponse**](RewardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

