# @ZiqniTechGamificationApiClient.AchievementsApi

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
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.AchievementsApi();
let achievementRequest = new @ZiqniTechGamificationApiClient.AchievementRequest(); // AchievementRequest | 
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

