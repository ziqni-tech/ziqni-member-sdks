# RuleRoutine

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Routine** | Pointer to **string** | A routine to execute if the conditional expressions in the matching group evaluted to true | [optional] 
**Arguments** | Pointer to [**[]RuleArgument**](RuleArgument.md) | The arguments of the routine. | [optional] 
**LineNumber** | Pointer to **int32** |  | [optional] 

## Methods

### NewRuleRoutine

`func NewRuleRoutine() *RuleRoutine`

NewRuleRoutine instantiates a new RuleRoutine object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuleRoutineWithDefaults

`func NewRuleRoutineWithDefaults() *RuleRoutine`

NewRuleRoutineWithDefaults instantiates a new RuleRoutine object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRoutine

`func (o *RuleRoutine) GetRoutine() string`

GetRoutine returns the Routine field if non-nil, zero value otherwise.

### GetRoutineOk

`func (o *RuleRoutine) GetRoutineOk() (*string, bool)`

GetRoutineOk returns a tuple with the Routine field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoutine

`func (o *RuleRoutine) SetRoutine(v string)`

SetRoutine sets Routine field to given value.

### HasRoutine

`func (o *RuleRoutine) HasRoutine() bool`

HasRoutine returns a boolean if a field has been set.

### GetArguments

`func (o *RuleRoutine) GetArguments() []RuleArgument`

GetArguments returns the Arguments field if non-nil, zero value otherwise.

### GetArgumentsOk

`func (o *RuleRoutine) GetArgumentsOk() (*[]RuleArgument, bool)`

GetArgumentsOk returns a tuple with the Arguments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArguments

`func (o *RuleRoutine) SetArguments(v []RuleArgument)`

SetArguments sets Arguments field to given value.

### HasArguments

`func (o *RuleRoutine) HasArguments() bool`

HasArguments returns a boolean if a field has been set.

### GetLineNumber

`func (o *RuleRoutine) GetLineNumber() int32`

GetLineNumber returns the LineNumber field if non-nil, zero value otherwise.

### GetLineNumberOk

`func (o *RuleRoutine) GetLineNumberOk() (*int32, bool)`

GetLineNumberOk returns a tuple with the LineNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLineNumber

`func (o *RuleRoutine) SetLineNumber(v int32)`

SetLineNumber sets LineNumber field to given value.

### HasLineNumber

`func (o *RuleRoutine) HasLineNumber() bool`

HasLineNumber returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


