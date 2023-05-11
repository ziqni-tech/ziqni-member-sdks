# AwardsAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**claimAwards**](AwardsAPI.md#claimawards) | **POST** /awards-claim | Claim awards.
[**getAwards**](AwardsAPI.md#getawards) | **POST** /awards | Get awards.


# **claimAwards**
```swift
    open class func claimAwards(claimAwardRequest: ClaimAwardRequest, completion: @escaping (_ data: AwardResponse?, _ error: Error?) -> Void)
```

Claim awards.

This operation enables a member to claim awards.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let claimAwardRequest = ClaimAwardRequest(languageKey: "languageKey_example", awardIds: ["awardIds_example"]) // ClaimAwardRequest | 

// Claim awards.
AwardsAPI.claimAwards(claimAwardRequest: claimAwardRequest) { (response, error) in
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
 **claimAwardRequest** | [**ClaimAwardRequest**](ClaimAwardRequest.md) |  | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAwards**
```swift
    open class func getAwards(awardRequest: AwardRequest, completion: @escaping (_ data: AwardResponse?, _ error: Error?) -> Void)
```

Get awards.

This operation supports retrieval of awards for one or many entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let awardRequest = AwardRequest(awardFilter: AwardFilter(productIds: ["productIds_example"], tags: ["tags_example"], ids: ["ids_example"], statusCode: NumberRange(moreThan: 123, lessThan: 123), sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], skip: 123, limit: 123, constraints: ["constraints_example"], entityIds: ["entityIds_example"]), languageKey: "languageKey_example", currencyKey: "currencyKey_example") // AwardRequest | 

// Get awards.
AwardsAPI.getAwards(awardRequest: awardRequest) { (response, error) in
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
 **awardRequest** | [**AwardRequest**](AwardRequest.md) |  | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

