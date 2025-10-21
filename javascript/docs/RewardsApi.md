# ZiqniMemberApi.RewardsApi

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
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;

let apiInstance = new ZiqniMemberApi.RewardsApi();
let rewardRequest = new ZiqniMemberApi.RewardRequest(); // RewardRequest | 
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

