# RuleResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meta** | Pointer to [**ResponseMeta**](ResponseMeta.md) |  | [optional] 
**Data** | Pointer to [**[]Rule**](Rule.md) |  | [optional] 
**Errors** | Pointer to [**[]Error**](Error.md) |  | [optional] 

## Methods

### NewRuleResponse

`func NewRuleResponse() *RuleResponse`

NewRuleResponse instantiates a new RuleResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuleResponseWithDefaults

`func NewRuleResponseWithDefaults() *RuleResponse`

NewRuleResponseWithDefaults instantiates a new RuleResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeta

`func (o *RuleResponse) GetMeta() ResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *RuleResponse) GetMetaOk() (*ResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *RuleResponse) SetMeta(v ResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *RuleResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetData

`func (o *RuleResponse) GetData() []Rule`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *RuleResponse) GetDataOk() (*[]Rule, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *RuleResponse) SetData(v []Rule)`

SetData sets Data field to given value.

### HasData

`func (o *RuleResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErrors

`func (o *RuleResponse) GetErrors() []Error`

GetErrors returns the Errors field if non-nil, zero value otherwise.

### GetErrorsOk

`func (o *RuleResponse) GetErrorsOk() (*[]Error, bool)`

GetErrorsOk returns a tuple with the Errors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrors

`func (o *RuleResponse) SetErrors(v []Error)`

SetErrors sets Errors field to given value.

### HasErrors

`func (o *RuleResponse) HasErrors() bool`

HasErrors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


