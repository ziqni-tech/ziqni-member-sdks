# \RewardsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetRewards**](RewardsApi.md#GetRewards) | **Post** /rewards | Get rewards



## GetRewards

> RewardResponse GetRewards(ctx).EntityRequest(entityRequest).Execute()

Get rewards



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
    entityRequest := *openapiclient.NewEntityRequest() // EntityRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RewardsApi.GetRewards(context.Background()).EntityRequest(entityRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RewardsApi.GetRewards``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRewards`: RewardResponse
    fmt.Fprintf(os.Stdout, "Response from `RewardsApi.GetRewards`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetRewardsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityRequest** | [**EntityRequest**](EntityRequest.md) |  | 

### Return type

[**RewardResponse**](RewardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

