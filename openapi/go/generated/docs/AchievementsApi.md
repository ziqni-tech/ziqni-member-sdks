# \AchievementsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAchievements**](AchievementsApi.md#GetAchievements) | **Post** /achievements | Get achievements by member reference id



## GetAchievements

> AchievementResponse GetAchievements(ctx).AchievementRequest(achievementRequest).Execute()

Get achievements by member reference id



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
    achievementRequest := *openapiclient.NewAchievementRequest() // AchievementRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.AchievementsApi.GetAchievements(context.Background()).AchievementRequest(achievementRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AchievementsApi.GetAchievements``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetAchievements`: AchievementResponse
    fmt.Fprintf(os.Stdout, "Response from `AchievementsApi.GetAchievements`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetAchievementsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievementRequest** | [**AchievementRequest**](AchievementRequest.md) |  | 

### Return type

[**AchievementResponse**](AchievementResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

