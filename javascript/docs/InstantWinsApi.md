# ZiqniMemberApi.InstantWinsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**donateInstantWinPlays**](InstantWinsApi.md#donateInstantWinPlays) | **POST** /instant-wins-donate | 
[**getInstantWinAvailablePlays**](InstantWinsApi.md#getInstantWinAvailablePlays) | **POST** /instant-wins-available-plays | 
[**listInstantWins**](InstantWinsApi.md#listInstantWins) | **POST** /instant-wins | 
[**playInstantWin**](InstantWinsApi.md#playInstantWin) | **POST** /instant-wins-play | 



## donateInstantWinPlays

> InstantWinsAvailablePlayResponse donateInstantWinPlays(instantWinDonateRequest)



### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.InstantWinsApi();
let instantWinDonateRequest = new ZiqniMemberApi.InstantWinDonateRequest(); // InstantWinDonateRequest | 
apiInstance.donateInstantWinPlays(instantWinDonateRequest, (error, data, response) => {
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
 **instantWinDonateRequest** | [**InstantWinDonateRequest**](InstantWinDonateRequest.md)|  | 

### Return type

[**InstantWinsAvailablePlayResponse**](InstantWinsAvailablePlayResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getInstantWinAvailablePlays

> InstantWinsAvailablePlayResponse getInstantWinAvailablePlays(instantWinAvailablePlaysRequest)



### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.InstantWinsApi();
let instantWinAvailablePlaysRequest = new ZiqniMemberApi.InstantWinAvailablePlaysRequest(); // InstantWinAvailablePlaysRequest | 
apiInstance.getInstantWinAvailablePlays(instantWinAvailablePlaysRequest, (error, data, response) => {
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
 **instantWinAvailablePlaysRequest** | [**InstantWinAvailablePlaysRequest**](InstantWinAvailablePlaysRequest.md)|  | 

### Return type

[**InstantWinsAvailablePlayResponse**](InstantWinsAvailablePlayResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## listInstantWins

> InstantWinResponse listInstantWins(instantWinRequest)



### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.InstantWinsApi();
let instantWinRequest = new ZiqniMemberApi.InstantWinRequest(); // InstantWinRequest | 
apiInstance.listInstantWins(instantWinRequest, (error, data, response) => {
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
 **instantWinRequest** | [**InstantWinRequest**](InstantWinRequest.md)|  | 

### Return type

[**InstantWinResponse**](InstantWinResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## playInstantWin

> InstantWinPlayResponse playInstantWin(instantWinPlayRequest)



### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.InstantWinsApi();
let instantWinPlayRequest = new ZiqniMemberApi.InstantWinPlayRequest(); // InstantWinPlayRequest | 
apiInstance.playInstantWin(instantWinPlayRequest, (error, data, response) => {
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
 **instantWinPlayRequest** | [**InstantWinPlayRequest**](InstantWinPlayRequest.md)|  | 

### Return type

[**InstantWinPlayResponse**](InstantWinPlayResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

