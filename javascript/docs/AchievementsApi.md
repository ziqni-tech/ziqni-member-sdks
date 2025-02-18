# ZiqniMemberApi.AchievementsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAchievements**](AchievementsApi.md#getAchievements) | **POST** /achievements | Get achievements by member reference id



## getAchievements

> AchievementResponse getAchievements(achievementRequest)

Get achievements by member reference id

Returns a list of achievements for the provided member ref id and applied filters.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.AchievementsApi();
let achievementRequest = new ZiqniMemberApi.AchievementRequest(); // AchievementRequest | 
apiInstance.getAchievements(achievementRequest, (error, data, response) => {
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
 **achievementRequest** | [**AchievementRequest**](AchievementRequest.md)|  | 

### Return type

[**AchievementResponse**](AchievementResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

