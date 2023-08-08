# OptInAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manageOptin**](OptInAPI.md#manageoptin) | **POST** /manage-optin | Get member optin information
[**optInStates**](OptInAPI.md#optinstates) | **POST** /optin-states | Get member optin status information


# **manageOptin**
```swift
    open class func manageOptin(manageOptinRequest: ManageOptinRequest, completion: @escaping (_ data: OptInResponse?, _ error: Error?) -> Void)
```

Get member optin information

Returns a list of member optin information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let manageOptinRequest = ManageOptinRequest(entityId: "entityId_example", entityType: "entityType_example", action: OptinAction()) // ManageOptinRequest | 

// Get member optin information
OptInAPI.manageOptin(manageOptinRequest: manageOptinRequest) { (response, error) in
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
 **manageOptinRequest** | [**ManageOptinRequest**](ManageOptinRequest.md) |  | 

### Return type

[**OptInResponse**](OptInResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **optInStates**
```swift
    open class func optInStates(optInStatesRequest: OptInStatesRequest, completion: @escaping (_ data: OptInResponse?, _ error: Error?) -> Void)
```

Get member optin status information

Returns a list of member optin status information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let optInStatesRequest = OptInStatesRequest(optinStatesFilter: OptinStatesFilter(entityTypes: [EntityType()], ids: ["ids_example"], statusCodes: RangeQuery(gt: "gt_example", lt: "lt_example", constraints: ["constraints_example"]), skip: 123, limit: 123)) // OptInStatesRequest | 

// Get member optin status information
OptInAPI.optInStates(optInStatesRequest: optInStatesRequest) { (response, error) in
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
 **optInStatesRequest** | [**OptInStatesRequest**](OptInStatesRequest.md) |  | 

### Return type

[**OptInResponse**](OptInResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

