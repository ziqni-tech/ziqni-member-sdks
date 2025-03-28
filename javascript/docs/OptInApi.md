# ZiqniMemberApi.OptInApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manageOptin**](OptInApi.md#manageOptin) | **POST** /manage-optin | Get member optin information
[**optInStates**](OptInApi.md#optInStates) | **POST** /optin-states | Get member optin status information



## manageOptin

> OptInResponse manageOptin(manageOptinRequest)

Get member optin information

Returns a list of member optin information

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.OptInApi();
let manageOptinRequest = new ZiqniMemberApi.ManageOptinRequest(); // ManageOptinRequest | 
apiInstance.manageOptin(manageOptinRequest, (error, data, response) => {
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
 **manageOptinRequest** | [**ManageOptinRequest**](ManageOptinRequest.md)|  | 

### Return type

[**OptInResponse**](OptInResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## optInStates

> OptInResponse optInStates(optInStatesRequest)

Get member optin status information

Returns a list of member optin status information

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.OptInApi();
let optInStatesRequest = new ZiqniMemberApi.OptInStatesRequest(); // OptInStatesRequest | 
apiInstance.optInStates(optInStatesRequest, (error, data, response) => {
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
 **optInStatesRequest** | [**OptInStatesRequest**](OptInStatesRequest.md)|  | 

### Return type

[**OptInResponse**](OptInResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

