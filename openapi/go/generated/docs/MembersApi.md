# \MembersApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMember**](MembersApi.md#GetMember) | **Post** /member-info | Get member information by member reference id
[**ManageOptin**](MembersApi.md#ManageOptin) | **Post** /manage-optin | Get member optin information



## GetMember

> MemberResponse GetMember(ctx).MemberRequest(memberRequest).Execute()

Get member information by member reference id



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    memberRequest := *openapiclient.NewMemberRequest([]string{"IncludeCustomFields_example"}) // MemberRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MembersApi.GetMember(context.Background()).MemberRequest(memberRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MembersApi.GetMember``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetMember`: MemberResponse
    fmt.Fprintf(os.Stdout, "Response from `MembersApi.GetMember`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetMemberRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memberRequest** | [**MemberRequest**](MemberRequest.md) |  | 

### Return type

[**MemberResponse**](MemberResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ManageOptin

> MemberResponse ManageOptin(ctx).ManageOptinRequest(manageOptinRequest).Execute()

Get member optin information



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    manageOptinRequest := *openapiclient.NewManageOptinRequest() // ManageOptinRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MembersApi.ManageOptin(context.Background()).ManageOptinRequest(manageOptinRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MembersApi.ManageOptin``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ManageOptin`: MemberResponse
    fmt.Fprintf(os.Stdout, "Response from `MembersApi.ManageOptin`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiManageOptinRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manageOptinRequest** | [**ManageOptinRequest**](ManageOptinRequest.md) |  | 

### Return type

[**MemberResponse**](MemberResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

