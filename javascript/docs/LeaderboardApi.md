# ZiqniMemberApi.LeaderboardApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscribeToLeaderboard**](LeaderboardApi.md#subscribeToLeaderboard) | **POST** /leaderboard | 



## subscribeToLeaderboard

> subscribeToLeaderboard(opts)



### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.LeaderboardApi();
let opts = {
  'leaderboardSubscriptionRequest': new ZiqniMemberApi.LeaderboardSubscriptionRequest() // LeaderboardSubscriptionRequest | 
};
apiInstance.subscribeToLeaderboard(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leaderboardSubscriptionRequest** | [**LeaderboardSubscriptionRequest**](LeaderboardSubscriptionRequest.md)|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

