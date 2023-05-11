# ContestsAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContests**](ContestsAPI.md#getcontests) | **POST** /contests | Get contests by member reference Id


# **getContests**
```swift
    open class func getContests(contestRequest: ContestRequest, completion: @escaping (_ data: ContestResponse?, _ error: Error?) -> Void)
```

Get contests by member reference Id

Returns a list of contests for the provided member ref id and applied filters.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let contestRequest = ContestRequest(languageKey: "languageKey_example", contestFilter: ContestFilter(productIds: ["productIds_example"], tags: ["tags_example"], startDate: DateRange(before: Date(), after: Date()), endDate: nil, sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], ids: ["ids_example"], competitionIds: ["competitionIds_example"], skip: 123, limit: 123, statusCode: NumberRange(moreThan: 123, lessThan: 123), constraints: ["constraints_example"])) // ContestRequest | 

// Get contests by member reference Id
ContestsAPI.getContests(contestRequest: contestRequest) { (response, error) in
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
 **contestRequest** | [**ContestRequest**](ContestRequest.md) |  | 

### Return type

[**ContestResponse**](ContestResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

