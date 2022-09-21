# AwardResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meta** | Pointer to [**ResponseMeta**](ResponseMeta.md) |  | [optional] 
**Data** | Pointer to [**[]Award**](Award.md) |  | [optional] 
**Errors** | Pointer to [**[]Error**](Error.md) |  | [optional] 

## Methods

### NewAwardResponse

`func NewAwardResponse() *AwardResponse`

NewAwardResponse instantiates a new AwardResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAwardResponseWithDefaults

`func NewAwardResponseWithDefaults() *AwardResponse`

NewAwardResponseWithDefaults instantiates a new AwardResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeta

`func (o *AwardResponse) GetMeta() ResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AwardResponse) GetMetaOk() (*ResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AwardResponse) SetMeta(v ResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AwardResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetData

`func (o *AwardResponse) GetData() []Award`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AwardResponse) GetDataOk() (*[]Award, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AwardResponse) SetData(v []Award)`

SetData sets Data field to given value.

### HasData

`func (o *AwardResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErrors

`func (o *AwardResponse) GetErrors() []Error`

GetErrors returns the Errors field if non-nil, zero value otherwise.

### GetErrorsOk

`func (o *AwardResponse) GetErrorsOk() (*[]Error, bool)`

GetErrorsOk returns a tuple with the Errors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrors

`func (o *AwardResponse) SetErrors(v []Error)`

SetErrors sets Errors field to given value.

### HasErrors

`func (o *AwardResponse) HasErrors() bool`

HasErrors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


