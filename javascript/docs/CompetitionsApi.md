# @ZiqniTechGamificationApiClient.CompetitionsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCompetitions**](CompetitionsApi.md#getCompetitions) | **POST** /competitions | Get competitions by member reference id



## getCompetitions

> CompetitionResponse getCompetitions(competitionRequest)

Get competitions by member reference id

Returns a list of competitions for the provided member ref id and applied filters.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.CompetitionsApi();
let competitionRequest = new @ZiqniTechGamificationApiClient.CompetitionRequest(); // CompetitionRequest | 
apiInstance.getCompetitions(competitionRequest, (error, data, response) => {
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
 **competitionRequest** | [**CompetitionRequest**](CompetitionRequest.md)|  | 

### Return type

[**CompetitionResponse**](CompetitionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

