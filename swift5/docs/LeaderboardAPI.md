# LeaderboardAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscribeToLeaderboard**](LeaderboardAPI.md#subscribetoleaderboard) | **POST** /leaderboard | 


# **subscribeToLeaderboard**
```swift
    open class func subscribeToLeaderboard(leaderboardSubscriptionRequest: LeaderboardSubscriptionRequest? = nil, completion: @escaping (_ data: LeaderboardResponse?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let leaderboardSubscriptionRequest = LeaderboardSubscriptionRequest(leaderboardFilter: LeaderboardFilter(topRanksToInclude: 123, ranksAboveToInclude: 123, ranksBelowToInclude: 123), entityId: "entityId_example", action: "action_example") // LeaderboardSubscriptionRequest |  (optional)

LeaderboardAPI.subscribeToLeaderboard(leaderboardSubscriptionRequest: leaderboardSubscriptionRequest) { (response, error) in
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
 **leaderboardSubscriptionRequest** | [**LeaderboardSubscriptionRequest**](LeaderboardSubscriptionRequest.md) |  | [optional] 

### Return type

[**LeaderboardResponse**](LeaderboardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

