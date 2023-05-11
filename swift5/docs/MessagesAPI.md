# MessagesAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessages**](MessagesAPI.md#getmessages) | **POST** /messages | Get messages by member reference id


# **getMessages**
```swift
    open class func getMessages(messageRequest: MessageRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Get messages by member reference id

Returns a list of messages for the provided member ref id and applied filters.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageRequest = MessageRequest(languageKey: "languageKey_example", messageFilter: MessageFilter(tags: ["tags_example"], ids: ["ids_example"], sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], skip: 123, limit: 123, messageType: MessageType())) // MessageRequest | 

// Get messages by member reference id
MessagesAPI.getMessages(messageRequest: messageRequest) { (response, error) in
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
 **messageRequest** | [**MessageRequest**](MessageRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

