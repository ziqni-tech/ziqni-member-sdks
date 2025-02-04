# ZiqniMemberApi.StatsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActiveEntitiesCount**](StatsApi.md#getActiveEntitiesCount) | **POST** /actives-by-entity | Get competitions and/or achievements count by product id or reference id



## getActiveEntitiesCount

> ModelCountResponse getActiveEntitiesCount(modelCountRequest)

Get competitions and/or achievements count by product id or reference id

Returns the count of active competitions and/or achievements by product id or reference id

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

