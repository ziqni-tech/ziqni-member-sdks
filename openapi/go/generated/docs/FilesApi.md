# \FilesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetFiles**](FilesApi.md#GetFiles) | **Post** /files | Get files.



## GetFiles

> FileResponse GetFiles(ctx).FileRequest(fileRequest).Execute()

Get files.



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    fileRequest := *openapiclient.NewFileRequest("MemberRefId_example") // FileRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilesApi.GetFiles(context.Background()).FileRequest(fileRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilesApi.GetFiles``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetFiles`: FileResponse
    fmt.Fprintf(os.Stdout, "Response from `FilesApi.GetFiles`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetFilesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileRequest** | [**FileRequest**](FileRequest.md) |  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

