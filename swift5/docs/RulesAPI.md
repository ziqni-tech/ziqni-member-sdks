# RulesAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRules**](RulesAPI.md#getrules) | **POST** /rules | Get rules


# **getRules**
```swift
    open class func getRules(entityRequest: EntityRequest, completion: @escaping (_ data: RuleResponse?, _ error: Error?) -> Void)
```

Get rules

This operation support retrieval of rules for one or many entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityRequest = EntityRequest(languageKey: "languageKey_example", entityFilter: [EntityFilter(entityType: "entityType_example", entityIds: ["entityIds_example"])], sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], skip: 123, limit: 123) // EntityRequest | 

// Get rules
RulesAPI.getRules(entityRequest: entityRequest) { (response, error) in
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
 **entityRequest** | [**EntityRequest**](EntityRequest.md) |  | 

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

