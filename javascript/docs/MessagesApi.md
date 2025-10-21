# ZiqniMemberApi.MessagesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessages**](MessagesApi.md#getMessages) | **POST** /messages | Get messages by member reference id
[**updateMessagesState**](MessagesApi.md#updateMessagesState) | **PUT** /messages/state | 



## getMessages

> MessageResponse getMessages(messageRequest)

Get messages by member reference id

Returns a list of messages for the provided member ref id and applied filters.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;

let apiInstance = new ZiqniMemberApi.MessagesApi();
let messageRequest = new ZiqniMemberApi.MessageRequest(); // MessageRequest | 
apiInstance.getMessages(messageRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageRequest** | [**MessageRequest**](MessageRequest.md)|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updateMessagesState

> ApiResponse updateMessagesState(opts)



Manages the Messages state

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.MessagesApi();
let opts = {
  'body': [new ZiqniMemberApi.UpdateMessageStateRequest()] // [UpdateMessageStateRequest] | Updates the state of the Message
};
apiInstance.updateMessagesState(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**[UpdateMessageStateRequest]**](UpdateMessageStateRequest.md)| Updates the state of the Message | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

