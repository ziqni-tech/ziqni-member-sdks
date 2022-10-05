# QueryMultipleFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryFields** | Pointer to **[]string** | Multiple fields to be included in search for the given value. | [optional] 
**QueryValue** | Pointer to **string** | The value to search for across given fields. | [optional] 

## Methods

### NewQueryMultipleFields

`func NewQueryMultipleFields() *QueryMultipleFields`

NewQueryMultipleFields instantiates a new QueryMultipleFields object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQueryMultipleFieldsWithDefaults

`func NewQueryMultipleFieldsWithDefaults() *QueryMultipleFields`

NewQueryMultipleFieldsWithDefaults instantiates a new QueryMultipleFields object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQueryFields

`func (o *QueryMultipleFields) GetQueryFields() []string`

GetQueryFields returns the QueryFields field if non-nil, zero value otherwise.

### GetQueryFieldsOk

`func (o *QueryMultipleFields) GetQueryFieldsOk() (*[]string, bool)`

GetQueryFieldsOk returns a tuple with the QueryFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueryFields

`func (o *QueryMultipleFields) SetQueryFields(v []string)`

SetQueryFields sets QueryFields field to given value.

### HasQueryFields

`func (o *QueryMultipleFields) HasQueryFields() bool`

HasQueryFields returns a boolean if a field has been set.

### GetQueryValue

`func (o *QueryMultipleFields) GetQueryValue() string`

GetQueryValue returns the QueryValue field if non-nil, zero value otherwise.

### GetQueryValueOk

`func (o *QueryMultipleFields) GetQueryValueOk() (*string, bool)`

GetQueryValueOk returns a tuple with the QueryValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueryValue

`func (o *QueryMultipleFields) SetQueryValue(v string)`

SetQueryValue sets QueryValue field to given value.

### HasQueryValue

`func (o *QueryMultipleFields) HasQueryValue() bool`

HasQueryValue returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


