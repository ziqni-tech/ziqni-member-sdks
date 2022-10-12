# ZiqniMemberApi.CallbacksApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCallbacks**](CallbacksApi.md#listCallbacks) | **GET** /callbacks | Describe the system callbacks and there constraints



## listCallbacks

> CallbacksResponse listCallbacks()

Describe the system callbacks and there constraints

subscribes a client to receive out-of-band data

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.CallbacksApi();
apiInstance.listCallbacks((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CallbacksResponse**](CallbacksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

