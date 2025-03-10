# ZiqniMemberApi.GraphsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGraph**](GraphsApi.md#getGraph) | **POST** /graphs | Get achievements by member reference id



## getGraph

> EntityGraphResponse getGraph(entityGraphRequest)

Get achievements by member reference id

Returns a list of graphs based on the entity type.

### Example

```javascript
import ZiqniMemberApi from 'ziqni_member_api';

let apiInstance = new ZiqniMemberApi.GraphsApi();
let entityGraphRequest = new ZiqniMemberApi.EntityGraphRequest(); // EntityGraphRequest | 
apiInstance.getGraph(entityGraphRequest, (error, data, response) => {
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
 **entityGraphRequest** | [**EntityGraphRequest**](EntityGraphRequest.md)|  | 

### Return type

[**EntityGraphResponse**](EntityGraphResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

