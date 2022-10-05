# RuleExpression

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** | condition or expression or routine | 
**MustMatchAll** | Pointer to **bool** | All expressions in the condition must either evaluate to TRUE or FALSE if set to TRUE | [optional] 
**MustEvaluateTo** | Pointer to **bool** | All the expressions of this condition must either evaluate to TRUE or FALSE | [optional] 
**Scope** | Pointer to **string** | The scope of the operand used in the expression | [optional] 
**Operand** | Pointer to **string** | The order the rules have to be executed in. | [optional] 
**Operator** | Pointer to **string** | [ *.* ] or [ .* ] or [ &#x3D;&#x3D; ] or [ &gt; ] or [ &gt;&#x3D; ] or [ &lt;&#x3D;]  or [ &lt; ] or [ &lt;&gt; ] | [optional] 
**Value** | Pointer to **string** | The value associated with the expression | [optional] 
**Rules** | Pointer to [**[]RuleExpression**](RuleExpression.md) |  | [optional] 
**Then** | Pointer to [**[]RuleRoutine**](RuleRoutine.md) |  | [optional] 
**LineNumber** | Pointer to **int32** |  | [optional] 

## Methods

### NewRuleExpression

`func NewRuleExpression(type_ string, ) *RuleExpression`

NewRuleExpression instantiates a new RuleExpression object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuleExpressionWithDefaults

`func NewRuleExpressionWithDefaults() *RuleExpression`

NewRuleExpressionWithDefaults instantiates a new RuleExpression object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *RuleExpression) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *RuleExpression) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *RuleExpression) SetType(v string)`

SetType sets Type field to given value.


### GetMustMatchAll

`func (o *RuleExpression) GetMustMatchAll() bool`

GetMustMatchAll returns the MustMatchAll field if non-nil, zero value otherwise.

### GetMustMatchAllOk

`func (o *RuleExpression) GetMustMatchAllOk() (*bool, bool)`

GetMustMatchAllOk returns a tuple with the MustMatchAll field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMustMatchAll

`func (o *RuleExpression) SetMustMatchAll(v bool)`

SetMustMatchAll sets MustMatchAll field to given value.

### HasMustMatchAll

`func (o *RuleExpression) HasMustMatchAll() bool`

HasMustMatchAll returns a boolean if a field has been set.

### GetMustEvaluateTo

`func (o *RuleExpression) GetMustEvaluateTo() bool`

GetMustEvaluateTo returns the MustEvaluateTo field if non-nil, zero value otherwise.

### GetMustEvaluateToOk

`func (o *RuleExpression) GetMustEvaluateToOk() (*bool, bool)`

GetMustEvaluateToOk returns a tuple with the MustEvaluateTo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMustEvaluateTo

`func (o *RuleExpression) SetMustEvaluateTo(v bool)`

SetMustEvaluateTo sets MustEvaluateTo field to given value.

### HasMustEvaluateTo

`func (o *RuleExpression) HasMustEvaluateTo() bool`

HasMustEvaluateTo returns a boolean if a field has been set.

### GetScope

`func (o *RuleExpression) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *RuleExpression) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *RuleExpression) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *RuleExpression) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetOperand

`func (o *RuleExpression) GetOperand() string`

GetOperand returns the Operand field if non-nil, zero value otherwise.

### GetOperandOk

`func (o *RuleExpression) GetOperandOk() (*string, bool)`

GetOperandOk returns a tuple with the Operand field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperand

`func (o *RuleExpression) SetOperand(v string)`

SetOperand sets Operand field to given value.

### HasOperand

`func (o *RuleExpression) HasOperand() bool`

HasOperand returns a boolean if a field has been set.

### GetOperator

`func (o *RuleExpression) GetOperator() string`

GetOperator returns the Operator field if non-nil, zero value otherwise.

### GetOperatorOk

`func (o *RuleExpression) GetOperatorOk() (*string, bool)`

GetOperatorOk returns a tuple with the Operator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperator

`func (o *RuleExpression) SetOperator(v string)`

SetOperator sets Operator field to given value.

### HasOperator

`func (o *RuleExpression) HasOperator() bool`

HasOperator returns a boolean if a field has been set.

### GetValue

`func (o *RuleExpression) GetValue() string`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *RuleExpression) GetValueOk() (*string, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *RuleExpression) SetValue(v string)`

SetValue sets Value field to given value.

### HasValue

`func (o *RuleExpression) HasValue() bool`

HasValue returns a boolean if a field has been set.

### GetRules

`func (o *RuleExpression) GetRules() []RuleExpression`

GetRules returns the Rules field if non-nil, zero value otherwise.

### GetRulesOk

`func (o *RuleExpression) GetRulesOk() (*[]RuleExpression, bool)`

GetRulesOk returns a tuple with the Rules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRules

`func (o *RuleExpression) SetRules(v []RuleExpression)`

SetRules sets Rules field to given value.

### HasRules

`func (o *RuleExpression) HasRules() bool`

HasRules returns a boolean if a field has been set.

### GetThen

`func (o *RuleExpression) GetThen() []RuleRoutine`

GetThen returns the Then field if non-nil, zero value otherwise.

### GetThenOk

`func (o *RuleExpression) GetThenOk() (*[]RuleRoutine, bool)`

GetThenOk returns a tuple with the Then field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThen

`func (o *RuleExpression) SetThen(v []RuleRoutine)`

SetThen sets Then field to given value.

### HasThen

`func (o *RuleExpression) HasThen() bool`

HasThen returns a boolean if a field has been set.

### GetLineNumber

`func (o *RuleExpression) GetLineNumber() int32`

GetLineNumber returns the LineNumber field if non-nil, zero value otherwise.

### GetLineNumberOk

`func (o *RuleExpression) GetLineNumberOk() (*int32, bool)`

GetLineNumberOk returns a tuple with the LineNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLineNumber

`func (o *RuleExpression) SetLineNumber(v int32)`

SetLineNumber sets LineNumber field to given value.

### HasLineNumber

`func (o *RuleExpression) HasLineNumber() bool`

HasLineNumber returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


