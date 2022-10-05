# ResponseMeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalRecordsFound** | **int32** |  | 
**Skip** | **int32** |  | 
**Limit** | **int32** |  | 
**ObjectType** | Pointer to **string** |  | [optional] 

## Methods

### NewResponseMeta

`func NewResponseMeta(totalRecordsFound int32, skip int32, limit int32, ) *ResponseMeta`

NewResponseMeta instantiates a new ResponseMeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseMetaWithDefaults

`func NewResponseMetaWithDefaults() *ResponseMeta`

NewResponseMetaWithDefaults instantiates a new ResponseMeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalRecordsFound

`func (o *ResponseMeta) GetTotalRecordsFound() int32`

GetTotalRecordsFound returns the TotalRecordsFound field if non-nil, zero value otherwise.

### GetTotalRecordsFoundOk

`func (o *ResponseMeta) GetTotalRecordsFoundOk() (*int32, bool)`

GetTotalRecordsFoundOk returns a tuple with the TotalRecordsFound field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalRecordsFound

`func (o *ResponseMeta) SetTotalRecordsFound(v int32)`

SetTotalRecordsFound sets TotalRecordsFound field to given value.


### GetSkip

`func (o *ResponseMeta) GetSkip() int32`

GetSkip returns the Skip field if non-nil, zero value otherwise.

### GetSkipOk

`func (o *ResponseMeta) GetSkipOk() (*int32, bool)`

GetSkipOk returns a tuple with the Skip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkip

`func (o *ResponseMeta) SetSkip(v int32)`

SetSkip sets Skip field to given value.


### GetLimit

`func (o *ResponseMeta) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *ResponseMeta) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *ResponseMeta) SetLimit(v int32)`

SetLimit sets Limit field to given value.


### GetObjectType

`func (o *ResponseMeta) GetObjectType() string`

GetObjectType returns the ObjectType field if non-nil, zero value otherwise.

### GetObjectTypeOk

`func (o *ResponseMeta) GetObjectTypeOk() (*string, bool)`

GetObjectTypeOk returns a tuple with the ObjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObjectType

`func (o *ResponseMeta) SetObjectType(v string)`

SetObjectType sets ObjectType field to given value.

### HasObjectType

`func (o *ResponseMeta) HasObjectType() bool`

HasObjectType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


