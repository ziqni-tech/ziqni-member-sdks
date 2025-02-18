# ZiqniMemberApi.ContestsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContests**](ContestsApi.md#getContests) | **POST** /contests | Get contests by member reference Id



## getContests

> ContestResponse getContests(contestRequest)

Get contests by member reference Id

Returns a list of contests for the provided member ref id and applied filters.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.ContestsApi();
let contestRequest = new ZiqniMemberApi.ContestRequest(); // ContestRequest | 
apiInstance.getContests(contestRequest, (error, data, response) => {
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
 **contestRequest** | [**ContestRequest**](ContestRequest.md)|  | 

### Return type

[**ContestResponse**](ContestResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

