# ZiqniMemberApi.MembersApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMember**](MembersApi.md#getMember) | **POST** /member-info | Get member information by member reference id



## getMember

> MemberResponse getMember(memberRequest)

Get member information by member reference id

Returns member information for the provided member reference id

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.MembersApi();
let memberRequest = new ZiqniMemberApi.MemberRequest(); // MemberRequest | 
apiInstance.getMember(memberRequest, (error, data, response) => {
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
 **memberRequest** | [**MemberRequest**](MemberRequest.md)|  | 

### Return type

[**MemberResponse**](MemberResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

