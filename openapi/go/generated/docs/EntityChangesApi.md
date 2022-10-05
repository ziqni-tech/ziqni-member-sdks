# \EntityChangesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SubscribeToEntityChanges**](EntityChangesApi.md#SubscribeToEntityChanges) | **Post** /entity-changes | 



## SubscribeToEntityChanges

> EntityChangeSubscriptionResponse SubscribeToEntityChanges(ctx).EntityChangeSubscriptionRequest(entityChangeSubscriptionRequest).Execute()





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
    entityChangeSubscriptionRequest := *openapiclient.NewEntityChangeSubscriptionRequest("EntityType_example", "Callback_example", "Action_example") // EntityChangeSubscriptionRequest | subscription payload

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EntityChangesApi.SubscribeToEntityChanges(context.Background()).EntityChangeSubscriptionRequest(entityChangeSubscriptionRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EntityChangesApi.SubscribeToEntityChanges``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SubscribeToEntityChanges`: EntityChangeSubscriptionResponse
    fmt.Fprintf(os.Stdout, "Response from `EntityChangesApi.SubscribeToEntityChanges`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSubscribeToEntityChangesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityChangeSubscriptionRequest** | [**EntityChangeSubscriptionRequest**](EntityChangeSubscriptionRequest.md) | subscription payload | 

### Return type

[**EntityChangeSubscriptionResponse**](EntityChangeSubscriptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

