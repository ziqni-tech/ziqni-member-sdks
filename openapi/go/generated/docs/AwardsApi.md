# \AwardsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ClaimAwards**](AwardsApi.md#ClaimAwards) | **Post** /awards-claim | Claim awards.
[**GetAwards**](AwardsApi.md#GetAwards) | **Post** /awards | Get awards.



## ClaimAwards

> AwardResponse ClaimAwards(ctx).ClaimAwardRequest(claimAwardRequest).Execute()

Claim awards.



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
    claimAwardRequest := *openapiclient.NewClaimAwardRequest() // ClaimAwardRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.AwardsApi.ClaimAwards(context.Background()).ClaimAwardRequest(claimAwardRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AwardsApi.ClaimAwards``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ClaimAwards`: AwardResponse
    fmt.Fprintf(os.Stdout, "Response from `AwardsApi.ClaimAwards`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClaimAwardsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **claimAwardRequest** | [**ClaimAwardRequest**](ClaimAwardRequest.md) |  | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAwards

> AwardResponse GetAwards(ctx).AwardRequest(awardRequest).Execute()

Get awards.



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
    awardRequest := *openapiclient.NewAwardRequest() // AwardRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.AwardsApi.GetAwards(context.Background()).AwardRequest(awardRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AwardsApi.GetAwards``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetAwards`: AwardResponse
    fmt.Fprintf(os.Stdout, "Response from `AwardsApi.GetAwards`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetAwardsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **awardRequest** | [**AwardRequest**](AwardRequest.md) |  | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

