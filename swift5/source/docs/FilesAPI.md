# FilesAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFiles**](FilesAPI.md#getfiles) | **POST** /files | Get files.


# **getFiles**
```swift
    open class func getFiles(fileRequest: FileRequest, completion: @escaping (_ data: FileObjectResponse?, _ error: Error?) -> Void)
```

Get files.

This operation supports retrieval of file objects for one or many entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileRequest = FileRequest(ids: ["ids_example"], sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], skip: 123, limit: 123, repositoryId: "repositoryId_example") // FileRequest | 

// Get files.
FilesAPI.getFiles(fileRequest: fileRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileRequest** | [**FileRequest**](FileRequest.md) |  | 

### Return type

[**FileObjectResponse**](FileObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

