# RewardsAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRewards**](RewardsAPI.md#getrewards) | **POST** /rewards | Get rewards


# **getRewards**
```swift
    open class func getRewards(rewardRequest: RewardRequest, completion: @escaping (_ data: RewardResponse?, _ error: Error?) -> Void)
```

Get rewards

This operation support retrieval of rewards for one or many entitites.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let rewardRequest = RewardRequest(entityFilter: [EntityFilter(entityType: "entityType_example", entityIds: ["entityIds_example"])], languageKey: "languageKey_example", sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], currencyKey: "currencyKey_example", skip: 123, limit: 123) // RewardRequest | 

// Get rewards
RewardsAPI.getRewards(rewardRequest: rewardRequest) { (response, error) in
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
 **rewardRequest** | [**RewardRequest**](RewardRequest.md) |  | 

### Return type

[**RewardResponse**](RewardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

