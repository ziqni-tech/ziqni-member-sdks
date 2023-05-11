# GraphsAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGraph**](GraphsAPI.md#getgraph) | **POST** /graphs | Get achievements by member reference id


# **getGraph**
```swift
    open class func getGraph(entityGraphRequest: EntityGraphRequest, completion: @escaping (_ data: EntityGraphResponse?, _ error: Error?) -> Void)
```

Get achievements by member reference id

Returns a list of graphs based on the entity type.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityGraphRequest = EntityGraphRequest(ids: ["ids_example"], constraints: ["constraints_example"], traversal: EntityGraphTraversal(), languageKey: "languageKey_example", includes: ["includes_example"], entityType: EntityType()) // EntityGraphRequest | 

// Get achievements by member reference id
GraphsAPI.getGraph(entityGraphRequest: entityGraphRequest) { (response, error) in
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
 **entityGraphRequest** | [**EntityGraphRequest**](EntityGraphRequest.md) |  | 

### Return type

[**EntityGraphResponse**](EntityGraphResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

