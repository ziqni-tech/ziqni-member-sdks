# EntityChangeSubscriptionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityType** | **string** | What you are subscribing to, like Competition, Contest, Member, Award etc. | 
**Constraints** | Pointer to **[]string** | Constraints of this subscription. | [optional] 
**Callback** | **string** | The callback operation you are subscribing too. Like entityChanged or entityStateChanged | 
**Action** | **string** | Either subscribe or unsubscribe from the data feed | 

## Methods

### NewEntityChangeSubscriptionRequest

`func NewEntityChangeSubscriptionRequest(entityType string, callback string, action string, ) *EntityChangeSubscriptionRequest`

NewEntityChangeSubscriptionRequest instantiates a new EntityChangeSubscriptionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEntityChangeSubscriptionRequestWithDefaults

`func NewEntityChangeSubscriptionRequestWithDefaults() *EntityChangeSubscriptionRequest`

NewEntityChangeSubscriptionRequestWithDefaults instantiates a new EntityChangeSubscriptionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityType

`func (o *EntityChangeSubscriptionRequest) GetEntityType() string`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *EntityChangeSubscriptionRequest) GetEntityTypeOk() (*string, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *EntityChangeSubscriptionRequest) SetEntityType(v string)`

SetEntityType sets EntityType field to given value.


### GetConstraints

`func (o *EntityChangeSubscriptionRequest) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *EntityChangeSubscriptionRequest) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *EntityChangeSubscriptionRequest) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *EntityChangeSubscriptionRequest) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetCallback

`func (o *EntityChangeSubscriptionRequest) GetCallback() string`

GetCallback returns the Callback field if non-nil, zero value otherwise.

### GetCallbackOk

`func (o *EntityChangeSubscriptionRequest) GetCallbackOk() (*string, bool)`

GetCallbackOk returns a tuple with the Callback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCallback

`func (o *EntityChangeSubscriptionRequest) SetCallback(v string)`

SetCallback sets Callback field to given value.


### GetAction

`func (o *EntityChangeSubscriptionRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *EntityChangeSubscriptionRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *EntityChangeSubscriptionRequest) SetAction(v string)`

SetAction sets Action field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


