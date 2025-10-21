# ZiqniMemberApi.CompetitionsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCompetitions**](CompetitionsApi.md#getCompetitions) | **POST** /competitions | Get competitions by member reference id



## getCompetitions

> CompetitionResponse getCompetitions(competitionRequest)

Get competitions by member reference id

Returns a list of competitions for the provided member ref id and applied filters.  When using skip limit from REST (DO NOT USE REST) then the max page size is 20, example; 50 can be passed as limit, but then skip will need to be at least 30, so that the difference between skip and limit is 20 max.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;

let apiInstance = new ZiqniMemberApi.CompetitionsApi();
let competitionRequest = new ZiqniMemberApi.CompetitionRequest(); // CompetitionRequest | 
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

