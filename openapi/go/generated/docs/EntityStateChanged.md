# EntityStateChanged

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityId** | Pointer to **string** |  | [optional] 
**EntityType** | Pointer to **string** |  | [optional] 
**ChangedAt** | Pointer to **time.Time** |  | [optional] 
**TypeOffChange** | Pointer to **int32** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**AccountId** | Pointer to **string** |  | [optional] 
**SequenceNumber** | Pointer to **int64** |  | [optional] 
**EntityRefId** | Pointer to **string** |  | [optional] 
**EntityParentId** | Pointer to **string** |  | [optional] 
**Metadata** | Pointer to **map[string]interface{}** |  | [optional] 
**PreviousState** | Pointer to **int32** |  | [optional] 
**CurrentState** | Pointer to **int32** |  | [optional] 

## Methods

### NewEntityStateChanged

`func NewEntityStateChanged() *EntityStateChanged`

NewEntityStateChanged instantiates a new EntityStateChanged object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEntityStateChangedWithDefaults

`func NewEntityStateChangedWithDefaults() *EntityStateChanged`

NewEntityStateChangedWithDefaults instantiates a new EntityStateChanged object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityId

`func (o *EntityStateChanged) GetEntityId() string`

GetEntityId returns the EntityId field if non-nil, zero value otherwise.

### GetEntityIdOk

`func (o *EntityStateChanged) GetEntityIdOk() (*string, bool)`

GetEntityIdOk returns a tuple with the EntityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityId

`func (o *EntityStateChanged) SetEntityId(v string)`

SetEntityId sets EntityId field to given value.

### HasEntityId

`func (o *EntityStateChanged) HasEntityId() bool`

HasEntityId returns a boolean if a field has been set.

### GetEntityType

`func (o *EntityStateChanged) GetEntityType() string`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *EntityStateChanged) GetEntityTypeOk() (*string, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *EntityStateChanged) SetEntityType(v string)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *EntityStateChanged) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.

### GetChangedAt

`func (o *EntityStateChanged) GetChangedAt() time.Time`

GetChangedAt returns the ChangedAt field if non-nil, zero value otherwise.

### GetChangedAtOk

`func (o *EntityStateChanged) GetChangedAtOk() (*time.Time, bool)`

GetChangedAtOk returns a tuple with the ChangedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChangedAt

`func (o *EntityStateChanged) SetChangedAt(v time.Time)`

SetChangedAt sets ChangedAt field to given value.

### HasChangedAt

`func (o *EntityStateChanged) HasChangedAt() bool`

HasChangedAt returns a boolean if a field has been set.

### GetTypeOffChange

`func (o *EntityStateChanged) GetTypeOffChange() int32`

GetTypeOffChange returns the TypeOffChange field if non-nil, zero value otherwise.

### GetTypeOffChangeOk

`func (o *EntityStateChanged) GetTypeOffChangeOk() (*int32, bool)`

GetTypeOffChangeOk returns a tuple with the TypeOffChange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTypeOffChange

`func (o *EntityStateChanged) SetTypeOffChange(v int32)`

SetTypeOffChange sets TypeOffChange field to given value.

### HasTypeOffChange

`func (o *EntityStateChanged) HasTypeOffChange() bool`

HasTypeOffChange returns a boolean if a field has been set.

### GetDisplayName

`func (o *EntityStateChanged) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *EntityStateChanged) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *EntityStateChanged) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *EntityStateChanged) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetAccountId

`func (o *EntityStateChanged) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *EntityStateChanged) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *EntityStateChanged) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.

### HasAccountId

`func (o *EntityStateChanged) HasAccountId() bool`

HasAccountId returns a boolean if a field has been set.

### GetSequenceNumber

`func (o *EntityStateChanged) GetSequenceNumber() int64`

GetSequenceNumber returns the SequenceNumber field if non-nil, zero value otherwise.

### GetSequenceNumberOk

`func (o *EntityStateChanged) GetSequenceNumberOk() (*int64, bool)`

GetSequenceNumberOk returns a tuple with the SequenceNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSequenceNumber

`func (o *EntityStateChanged) SetSequenceNumber(v int64)`

SetSequenceNumber sets SequenceNumber field to given value.

### HasSequenceNumber

`func (o *EntityStateChanged) HasSequenceNumber() bool`

HasSequenceNumber returns a boolean if a field has been set.

### GetEntityRefId

`func (o *EntityStateChanged) GetEntityRefId() string`

GetEntityRefId returns the EntityRefId field if non-nil, zero value otherwise.

### GetEntityRefIdOk

`func (o *EntityStateChanged) GetEntityRefIdOk() (*string, bool)`

GetEntityRefIdOk returns a tuple with the EntityRefId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityRefId

`func (o *EntityStateChanged) SetEntityRefId(v string)`

SetEntityRefId sets EntityRefId field to given value.

### HasEntityRefId

`func (o *EntityStateChanged) HasEntityRefId() bool`

HasEntityRefId returns a boolean if a field has been set.

### GetEntityParentId

`func (o *EntityStateChanged) GetEntityParentId() string`

GetEntityParentId returns the EntityParentId field if non-nil, zero value otherwise.

### GetEntityParentIdOk

`func (o *EntityStateChanged) GetEntityParentIdOk() (*string, bool)`

GetEntityParentIdOk returns a tuple with the EntityParentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityParentId

`func (o *EntityStateChanged) SetEntityParentId(v string)`

SetEntityParentId sets EntityParentId field to given value.

### HasEntityParentId

`func (o *EntityStateChanged) HasEntityParentId() bool`

HasEntityParentId returns a boolean if a field has been set.

### GetMetadata

`func (o *EntityStateChanged) GetMetadata() map[string]interface{}`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *EntityStateChanged) GetMetadataOk() (*map[string]interface{}, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *EntityStateChanged) SetMetadata(v map[string]interface{})`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *EntityStateChanged) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.

### GetPreviousState

`func (o *EntityStateChanged) GetPreviousState() int32`

GetPreviousState returns the PreviousState field if non-nil, zero value otherwise.

### GetPreviousStateOk

`func (o *EntityStateChanged) GetPreviousStateOk() (*int32, bool)`

GetPreviousStateOk returns a tuple with the PreviousState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreviousState

`func (o *EntityStateChanged) SetPreviousState(v int32)`

SetPreviousState sets PreviousState field to given value.

### HasPreviousState

`func (o *EntityStateChanged) HasPreviousState() bool`

HasPreviousState returns a boolean if a field has been set.

### GetCurrentState

`func (o *EntityStateChanged) GetCurrentState() int32`

GetCurrentState returns the CurrentState field if non-nil, zero value otherwise.

### GetCurrentStateOk

`func (o *EntityStateChanged) GetCurrentStateOk() (*int32, bool)`

GetCurrentStateOk returns a tuple with the CurrentState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrentState

`func (o *EntityStateChanged) SetCurrentState(v int32)`

SetCurrentState sets CurrentState field to given value.

### HasCurrentState

`func (o *EntityStateChanged) HasCurrentState() bool`

HasCurrentState returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


