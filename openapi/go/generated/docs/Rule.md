# Rule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityId** | Pointer to **string** | The id of the context object this rule refers to | [optional] 
**Action** | Pointer to **string** | The action this rule describes, like start.contest, or points.awarded | [optional] 
**Context** | Pointer to **string** | The context of this rule like achievement, competition, or contest  | [optional] 
**Rules** | Pointer to [**RuleExpression**](RuleExpression.md) |  | [optional] 
**Id** | Pointer to **string** | Unique system identifier of a Main Rule | [optional] [readonly] 
**EntityType** | Pointer to **string** |  | [optional] 

## Methods

### NewRule

`func NewRule() *Rule`

NewRule instantiates a new Rule object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuleWithDefaults

`func NewRuleWithDefaults() *Rule`

NewRuleWithDefaults instantiates a new Rule object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityId

`func (o *Rule) GetEntityId() string`

GetEntityId returns the EntityId field if non-nil, zero value otherwise.

### GetEntityIdOk

`func (o *Rule) GetEntityIdOk() (*string, bool)`

GetEntityIdOk returns a tuple with the EntityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityId

`func (o *Rule) SetEntityId(v string)`

SetEntityId sets EntityId field to given value.

### HasEntityId

`func (o *Rule) HasEntityId() bool`

HasEntityId returns a boolean if a field has been set.

### GetAction

`func (o *Rule) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *Rule) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *Rule) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *Rule) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetContext

`func (o *Rule) GetContext() string`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *Rule) GetContextOk() (*string, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *Rule) SetContext(v string)`

SetContext sets Context field to given value.

### HasContext

`func (o *Rule) HasContext() bool`

HasContext returns a boolean if a field has been set.

### GetRules

`func (o *Rule) GetRules() RuleExpression`

GetRules returns the Rules field if non-nil, zero value otherwise.

### GetRulesOk

`func (o *Rule) GetRulesOk() (*RuleExpression, bool)`

GetRulesOk returns a tuple with the Rules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRules

`func (o *Rule) SetRules(v RuleExpression)`

SetRules sets Rules field to given value.

### HasRules

`func (o *Rule) HasRules() bool`

HasRules returns a boolean if a field has been set.

### GetId

`func (o *Rule) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Rule) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Rule) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Rule) HasId() bool`

HasId returns a boolean if a field has been set.

### GetEntityType

`func (o *Rule) GetEntityType() string`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *Rule) GetEntityTypeOk() (*string, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *Rule) SetEntityType(v string)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *Rule) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


