# @ZiqniTechGamificationApiClient.FilesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFiles**](FilesApi.md#getFiles) | **POST** /files | Get files.



## getFiles

> FileResponse getFiles(fileRequest)

Get files.

This operation supports retrieval of file objects for one or many entities.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';

let apiInstance = new @ZiqniTechGamificationApiClient.FilesApi();
let fileRequest = new @ZiqniTechGamificationApiClient.FileRequest(); // FileRequest | 
apiInstance.getFiles(fileRequest, (error, data, response) => {
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
 **fileRequest** | [**FileRequest**](FileRequest.md)|  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

