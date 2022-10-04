# \RulesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetRules**](RulesApi.md#GetRules) | **Post** /rules | Get rules



## GetRules

> RuleResponse GetRules(ctx).EntityRequest(entityRequest).Execute()

Get rules



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
    resp, r, err := apiClient.RulesApi.GetRules(context.Background()).EntityRequest(entityRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RulesApi.GetRules``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRules`: RuleResponse
    fmt.Fprintf(os.Stdout, "Response from `RulesApi.GetRules`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetRulesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityRequest** | [**EntityRequest**](EntityRequest.md) |  | 

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

