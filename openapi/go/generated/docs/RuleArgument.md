# RuleArgument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Argument** | **string** |  | 
**Value** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**Order** | Pointer to **int32** |  | [optional] 

## Methods

### NewRuleArgument

`func NewRuleArgument(argument string, ) *RuleArgument`

NewRuleArgument instantiates a new RuleArgument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuleArgumentWithDefaults

`func NewRuleArgumentWithDefaults() *RuleArgument`

NewRuleArgumentWithDefaults instantiates a new RuleArgument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetArgument

`func (o *RuleArgument) GetArgument() string`

GetArgument returns the Argument field if non-nil, zero value otherwise.

### GetArgumentOk

`func (o *RuleArgument) GetArgumentOk() (*string, bool)`

GetArgumentOk returns a tuple with the Argument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArgument

`func (o *RuleArgument) SetArgument(v string)`

SetArgument sets Argument field to given value.


### GetValue

`func (o *RuleArgument) GetValue() string`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *RuleArgument) GetValueOk() (*string, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *RuleArgument) SetValue(v string)`

SetValue sets Value field to given value.

### HasValue

`func (o *RuleArgument) HasValue() bool`

HasValue returns a boolean if a field has been set.

### GetType

`func (o *RuleArgument) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *RuleArgument) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *RuleArgument) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *RuleArgument) HasType() bool`

HasType returns a boolean if a field has been set.

### GetOrder

`func (o *RuleArgument) GetOrder() int32`

GetOrder returns the Order field if non-nil, zero value otherwise.

### GetOrderOk

`func (o *RuleArgument) GetOrderOk() (*int32, bool)`

GetOrderOk returns a tuple with the Order field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrder

`func (o *RuleArgument) SetOrder(v int32)`

SetOrder sets Order field to given value.

### HasOrder

`func (o *RuleArgument) HasOrder() bool`

HasOrder returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


