# @ZiqniTechGamificationApiClient.NotificationsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscribeToNotifications**](NotificationsApi.md#subscribeToNotifications) | **POST** /subscribe | 



## subscribeToNotifications

> SubscriptionResponse subscribeToNotifications(subscriptionRequest)



subscribes a client to receive out-of-band data

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/member-api-client';

let apiInstance = new @ZiqniTechGamificationApiClient.NotificationsApi();
let subscriptionRequest = new @ZiqniTechGamificationApiClient.SubscriptionRequest(); // SubscriptionRequest | subscription payload
apiInstance.subscribeToNotifications(subscriptionRequest, (error, data, response) => {
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
 **subscriptionRequest** | [**SubscriptionRequest**](SubscriptionRequest.md)| subscription payload | 

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

