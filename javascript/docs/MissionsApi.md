# ZiqniMemberApi.MissionsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMissionStates**](MissionsApi.md#getMissionStates) | **POST** /mission-states | 



## getMissionStates

> MissionStatesResponse getMissionStates(missionStatesRequest)



Get mission states

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.MissionsApi();
let missionStatesRequest = new ZiqniMemberApi.MissionStatesRequest(); // MissionStatesRequest | 
apiInstance.getMissionStates(missionStatesRequest, (error, data, response) => {
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
 **missionStatesRequest** | [**MissionStatesRequest**](MissionStatesRequest.md)|  | 

### Return type

[**MissionStatesResponse**](MissionStatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

