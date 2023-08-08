# CallbacksAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCallbacks**](CallbacksAPI.md#listcallbacks) | **GET** /callbacks | Describe the system callbacks and there constraints


# **listCallbacks**
```swift
    open class func listCallbacks(completion: @escaping (_ data: CallbacksResponse?, _ error: Error?) -> Void)
```

Describe the system callbacks and there constraints

subscribes a client to receive out-of-band data

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Describe the system callbacks and there constraints
CallbacksAPI.listCallbacks() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CallbacksResponse**](CallbacksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

