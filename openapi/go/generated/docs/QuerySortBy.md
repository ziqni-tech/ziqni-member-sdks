# QuerySortBy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryField** | **string** | The key of the parameter that is being searched | 
**Order** | [**SortOrder**](SortOrder.md) |  | 

## Methods

### NewQuerySortBy

`func NewQuerySortBy(queryField string, order SortOrder, ) *QuerySortBy`

NewQuerySortBy instantiates a new QuerySortBy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQuerySortByWithDefaults

`func NewQuerySortByWithDefaults() *QuerySortBy`

NewQuerySortByWithDefaults instantiates a new QuerySortBy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQueryField

`func (o *QuerySortBy) GetQueryField() string`

GetQueryField returns the QueryField field if non-nil, zero value otherwise.

### GetQueryFieldOk

`func (o *QuerySortBy) GetQueryFieldOk() (*string, bool)`

GetQueryFieldOk returns a tuple with the QueryField field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueryField

`func (o *QuerySortBy) SetQueryField(v string)`

SetQueryField sets QueryField field to given value.


### GetOrder

`func (o *QuerySortBy) GetOrder() SortOrder`

GetOrder returns the Order field if non-nil, zero value otherwise.

### GetOrderOk

`func (o *QuerySortBy) GetOrderOk() (*SortOrder, bool)`

GetOrderOk returns a tuple with the Order field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrder

`func (o *QuerySortBy) SetOrder(v SortOrder)`

SetOrder sets Order field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


