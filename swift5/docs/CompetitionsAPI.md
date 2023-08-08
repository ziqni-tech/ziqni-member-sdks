# CompetitionsAPI

All URIs are relative to *https://member-api.ziqni.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCompetitions**](CompetitionsAPI.md#getcompetitions) | **POST** /competitions | Get competitions by member reference id


# **getCompetitions**
```swift
    open class func getCompetitions(competitionRequest: CompetitionRequest, completion: @escaping (_ data: CompetitionResponse?, _ error: Error?) -> Void)
```

Get competitions by member reference id

Returns a list of competitions for the provided member ref id and applied filters.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let competitionRequest = CompetitionRequest(languageKey: "languageKey_example", competitionFilter: CompetitionFilter(tags: ["tags_example"], startDate: DateRange(before: Date(), after: Date()), endDate: nil, productIds: ["productIds_example"], statusCode: NumberRange(moreThan: 123, lessThan: 123), sortBy: [QuerySortBy(queryField: "queryField_example", order: SortOrder())], ids: ["ids_example"], skip: 123, limit: 123, constraints: ["constraints_example"])) // CompetitionRequest | 

// Get competitions by member reference id
CompetitionsAPI.getCompetitions(competitionRequest: competitionRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

