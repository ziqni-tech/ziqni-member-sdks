# MembersAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMember**](MembersAPI.md#getmember) | **POST** /member-info | Get member information by member reference id


# **getMember**
```swift
    open class func getMember(memberRequest: MemberRequest, completion: @escaping (_ data: MemberResponse?, _ error: Error?) -> Void)
```

Get member information by member reference id

Returns member information for the provided member reference id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let memberRequest = MemberRequest(includeFields: ["includeFields_example"], includeCustomFields: ["includeCustomFields_example"], includeMetaDataFields: ["includeMetaDataFields_example"]) // MemberRequest | 

// Get member information by member reference id
MembersAPI.getMember(memberRequest: memberRequest) { (response, error) in
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
 **memberRequest** | [**MemberRequest**](MemberRequest.md) |  | 

### Return type

[**MemberResponse**](MemberResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

