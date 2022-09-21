# \ContestsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetContests**](ContestsApi.md#GetContests) | **Post** /contests | Get contests by member reference Id



## GetContests

> ContestResponse GetContests(ctx).ContestRequest(contestRequest).Execute()

Get contests by member reference Id



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
    contestRequest := *openapiclient.NewContestRequest() // ContestRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ContestsApi.GetContests(context.Background()).ContestRequest(contestRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ContestsApi.GetContests``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetContests`: ContestResponse
    fmt.Fprintf(os.Stdout, "Response from `ContestsApi.GetContests`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetContestsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contestRequest** | [**ContestRequest**](ContestRequest.md) |  | 

### Return type

[**ContestResponse**](ContestResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

