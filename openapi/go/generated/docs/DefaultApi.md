# \DefaultApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SubscribeToLeaderboard**](DefaultApi.md#SubscribeToLeaderboard) | **Post** /leaderboard | 



## SubscribeToLeaderboard

> SubscribeToLeaderboard(ctx).LeaderboardSubscriptionRequest(leaderboardSubscriptionRequest).Execute()



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
    leaderboardSubscriptionRequest := *openapiclient.NewLeaderboardSubscriptionRequest("EntityId_example", "Action_example") // LeaderboardSubscriptionRequest |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.SubscribeToLeaderboard(context.Background()).LeaderboardSubscriptionRequest(leaderboardSubscriptionRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.SubscribeToLeaderboard``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSubscribeToLeaderboardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leaderboardSubscriptionRequest** | [**LeaderboardSubscriptionRequest**](LeaderboardSubscriptionRequest.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

