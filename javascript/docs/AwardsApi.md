# ZiqniMemberApi.AwardsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**claimAwards**](AwardsApi.md#claimAwards) | **POST** /awards-claim | Claim awards.
[**declineAwards**](AwardsApi.md#declineAwards) | **POST** /awards-decline | Claim awards.
[**getAwards**](AwardsApi.md#getAwards) | **POST** /awards | Get awards.



## claimAwards

> AwardResponse claimAwards(claimAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.AwardsApi();
let claimAwardRequest = new ZiqniMemberApi.ClaimAwardRequest(); // ClaimAwardRequest | 
apiInstance.claimAwards(claimAwardRequest, (error, data, response) => {
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
 **claimAwardRequest** | [**ClaimAwardRequest**](ClaimAwardRequest.md)|  | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## declineAwards

> AwardResponse declineAwards(declineAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.AwardsApi();
let declineAwardRequest = new ZiqniMemberApi.DeclineAwardRequest(); // DeclineAwardRequest | 
apiInstance.declineAwards(declineAwardRequest, (error, data, response) => {
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
 **declineAwardRequest** | [**DeclineAwardRequest**](DeclineAwardRequest.md)|  | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getAwards

> AwardResponse getAwards(awardRequest)

Get awards.

This operation supports retrieval of awards for one or many entities.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';
let defaultClient = ZiqniMemberApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new ZiqniMemberApi.AwardsApi();
let awardRequest = new ZiqniMemberApi.AwardRequest(); // AwardRequest | 
apiInstance.getAwards(awardRequest, (error, data, response) => {
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
 **awardRequest** | [**AwardRequest**](AwardRequest.md)|  | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

