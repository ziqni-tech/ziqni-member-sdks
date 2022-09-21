# RangeQuery

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gt** | Pointer to **string** | Greater than value | [optional] 
**Lt** | Pointer to **string** | Less than value | [optional] 
**Constraints** | Pointer to **[]string** | Additional constraints | [optional] 

## Methods

### NewRangeQuery

`func NewRangeQuery() *RangeQuery`

NewRangeQuery instantiates a new RangeQuery object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRangeQueryWithDefaults

`func NewRangeQueryWithDefaults() *RangeQuery`

NewRangeQueryWithDefaults instantiates a new RangeQuery object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetGt

`func (o *RangeQuery) GetGt() string`

GetGt returns the Gt field if non-nil, zero value otherwise.

### GetGtOk

`func (o *RangeQuery) GetGtOk() (*string, bool)`

GetGtOk returns a tuple with the Gt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGt

`func (o *RangeQuery) SetGt(v string)`

SetGt sets Gt field to given value.

### HasGt

`func (o *RangeQuery) HasGt() bool`

HasGt returns a boolean if a field has been set.

### GetLt

`func (o *RangeQuery) GetLt() string`

GetLt returns the Lt field if non-nil, zero value otherwise.

### GetLtOk

`func (o *RangeQuery) GetLtOk() (*string, bool)`

GetLtOk returns a tuple with the Lt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLt

`func (o *RangeQuery) SetLt(v string)`

SetLt sets Lt field to given value.

### HasLt

`func (o *RangeQuery) HasLt() bool`

HasLt returns a boolean if a field has been set.

### GetConstraints

`func (o *RangeQuery) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *RangeQuery) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *RangeQuery) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *RangeQuery) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


