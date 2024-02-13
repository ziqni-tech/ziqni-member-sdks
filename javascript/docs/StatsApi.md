# ZiqniMemberApi.StatsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActiveEntitiesCount**](StatsApi.md#getActiveEntitiesCount) | **POST** /actives-by-entity | Get achievements count by member reference id



## getActiveEntitiesCount

> ModelCountResponse getActiveEntitiesCount(modelCountRequest)

Get achievements count by member reference id

Returns a count of achievements for the provided member ref id and applied filters.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.StatsApi();
let modelCountRequest = new ZiqniMemberApi.ModelCountRequest(); // ModelCountRequest | 
apiInstance.getActiveEntitiesCount(modelCountRequest, (error, data, response) => {
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
 **modelCountRequest** | [**ModelCountRequest**](ModelCountRequest.md)|  | 

### Return type

[**ModelCountResponse**](ModelCountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

