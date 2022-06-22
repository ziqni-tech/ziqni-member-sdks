# @ZiqniTechGamificationApiClient.AwardsApi

All URIs are relative to *https://api.ziqni.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**claimAwards**](AwardsApi.md#claimAwards) | **POST** /gc/awards-claim | Claim awards.
[**getAwards**](AwardsApi.md#getAwards) | **POST** /gc/awards | Get awards.



## claimAwards

> AwardResponse claimAwards(claimAwardRequest)

Claim awards.

This operation enables a member to claim awards.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/gamification-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.AwardsApi();
let claimAwardRequest = new @ZiqniTechGamificationApiClient.ClaimAwardRequest(); // ClaimAwardRequest | 
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


## getAwards

> AwardResponse getAwards(awardRequest)

Get awards.

This operation supports retrieval of awards for one or many entities.

### Example

```javascript
import @ZiqniTechGamificationApiClient from '@ziqni-tech/gamification-api-client';
let defaultClient = @ZiqniTechGamificationApiClient.ApiClient.instance;
// Configure OAuth2 access token for authorization: OAuth2
let OAuth2 = defaultClient.authentications['OAuth2'];
OAuth2.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new @ZiqniTechGamificationApiClient.AwardsApi();
let awardRequest = new @ZiqniTechGamificationApiClient.AwardRequest(); // AwardRequest | 
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

