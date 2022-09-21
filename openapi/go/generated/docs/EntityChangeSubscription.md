# EntityChangeSubscription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityType** | **string** |  | 
**SubscriptionId** | **string** |  | 
**Constraints** | Pointer to **[]string** | Constraints of this subscription like gauranteedDelivery | [optional] 
**Topic** | Pointer to **string** | /user/queue/callbacks | [optional] 

## Methods

### NewEntityChangeSubscription

`func NewEntityChangeSubscription(entityType string, subscriptionId string, ) *EntityChangeSubscription`

NewEntityChangeSubscription instantiates a new EntityChangeSubscription object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEntityChangeSubscriptionWithDefaults

`func NewEntityChangeSubscriptionWithDefaults() *EntityChangeSubscription`

NewEntityChangeSubscriptionWithDefaults instantiates a new EntityChangeSubscription object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityType

`func (o *EntityChangeSubscription) GetEntityType() string`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *EntityChangeSubscription) GetEntityTypeOk() (*string, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *EntityChangeSubscription) SetEntityType(v string)`

SetEntityType sets EntityType field to given value.


### GetSubscriptionId

`func (o *EntityChangeSubscription) GetSubscriptionId() string`

GetSubscriptionId returns the SubscriptionId field if non-nil, zero value otherwise.

### GetSubscriptionIdOk

`func (o *EntityChangeSubscription) GetSubscriptionIdOk() (*string, bool)`

GetSubscriptionIdOk returns a tuple with the SubscriptionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubscriptionId

`func (o *EntityChangeSubscription) SetSubscriptionId(v string)`

SetSubscriptionId sets SubscriptionId field to given value.


### GetConstraints

`func (o *EntityChangeSubscription) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *EntityChangeSubscription) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *EntityChangeSubscription) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *EntityChangeSubscription) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetTopic

`func (o *EntityChangeSubscription) GetTopic() string`

GetTopic returns the Topic field if non-nil, zero value otherwise.

### GetTopicOk

`func (o *EntityChangeSubscription) GetTopicOk() (*string, bool)`

GetTopicOk returns a tuple with the Topic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopic

`func (o *EntityChangeSubscription) SetTopic(v string)`

SetTopic sets Topic field to given value.

### HasTopic

`func (o *EntityChangeSubscription) HasTopic() bool`

HasTopic returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


