# AchievementsAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAchievements**](AchievementsAPI.md#getachievements) | **POST** /achievements | Get achievements by member reference id


# **getAchievements**
```swift
    open class func getAchievements(achievementRequest: AchievementRequest, completion: @escaping (_ data: AchievementResponse?, _ error: Error?) -> Void)
```

Get achievements by member reference id

Returns a list of achievements for the provided member ref id and applied filters.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let achievementRequest = AchievementRequest(achievementFilter: AchievementFilter(tags: ["tags_example"], startDate: DateRange(before: Date(), after: Date()), endDate: nil, ids: ["ids_example"], sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], skip: 123, limit: 123, statusCode: NumberRange(moreThan: 123, lessThan: 123), constraints: ["constraints_example"], productTags: ["productTags_example"], productIds: ["productIds_example"]), languageKey: "languageKey_example") // AchievementRequest | 

// Get achievements by member reference id
AchievementsAPI.getAchievements(achievementRequest: achievementRequest) { (response, error) in
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
 **achievementRequest** | [**AchievementRequest**](AchievementRequest.md) |  | 

### Return type

[**AchievementResponse**](AchievementResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

