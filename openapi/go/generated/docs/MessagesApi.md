# \MessagesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMessages**](MessagesApi.md#GetMessages) | **Post** /messages | Get messages by member reference id



## GetMessages

> MessageResponse GetMessages(ctx).MessageRequest(messageRequest).Execute()

Get messages by member reference id



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
    messageRequest := *openapiclient.NewMessageRequest() // MessageRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MessagesApi.GetMessages(context.Background()).MessageRequest(messageRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MessagesApi.GetMessages``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetMessages`: MessageResponse
    fmt.Fprintf(os.Stdout, "Response from `MessagesApi.GetMessages`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetMessagesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageRequest** | [**MessageRequest**](MessageRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

