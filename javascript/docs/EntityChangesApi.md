# ZiqniMemberApi.EntityChangesApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manageEntityChangeSubscription**](EntityChangesApi.md#manageEntityChangeSubscription) | **POST** /entity-changes | 



## manageEntityChangeSubscription

> EntityChangeSubscriptionResponse manageEntityChangeSubscription(entityChangeSubscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.EntityChangesApi();
let entityChangeSubscriptionRequest = new ZiqniMemberApi.EntityChangeSubscriptionRequest(); // EntityChangeSubscriptionRequest | subscription payload
apiInstance.manageEntityChangeSubscription(entityChangeSubscriptionRequest, (error, data, response) => {
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
 **entityChangeSubscriptionRequest** | [**EntityChangeSubscriptionRequest**](EntityChangeSubscriptionRequest.md)| subscription payload | 

### Return type

[**EntityChangeSubscriptionResponse**](EntityChangeSubscriptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

