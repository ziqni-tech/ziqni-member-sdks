# \CompetitionsApi

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCompetitions**](CompetitionsApi.md#GetCompetitions) | **Post** /competitions | Get competitions by member reference id



## GetCompetitions

> CompetitionResponse GetCompetitions(ctx).CompetitionRequest(competitionRequest).Execute()

Get competitions by member reference id



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
    competitionRequest := *openapiclient.NewCompetitionRequest() // CompetitionRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CompetitionsApi.GetCompetitions(context.Background()).CompetitionRequest(competitionRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CompetitionsApi.GetCompetitions``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetCompetitions`: CompetitionResponse
    fmt.Fprintf(os.Stdout, "Response from `CompetitionsApi.GetCompetitions`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetCompetitionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **competitionRequest** | [**CompetitionRequest**](CompetitionRequest.md) |  | 

### Return type

[**CompetitionResponse**](CompetitionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

