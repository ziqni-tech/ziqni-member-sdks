# EntityChanged

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

## Methods

### NewEntityChanged

`func NewEntityChanged() *EntityChanged`

NewEntityChanged instantiates a new EntityChanged object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEntityChangedWithDefaults

`func NewEntityChangedWithDefaults() *EntityChanged`

NewEntityChangedWithDefaults instantiates a new EntityChanged object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityId

`func (o *EntityChanged) GetEntityId() string`

GetEntityId returns the EntityId field if non-nil, zero value otherwise.

### GetEntityIdOk

`func (o *EntityChanged) GetEntityIdOk() (*string, bool)`

GetEntityIdOk returns a tuple with the EntityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityId

`func (o *EntityChanged) SetEntityId(v string)`

SetEntityId sets EntityId field to given value.

### HasEntityId

`func (o *EntityChanged) HasEntityId() bool`

HasEntityId returns a boolean if a field has been set.

### GetEntityType

`func (o *EntityChanged) GetEntityType() string`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *EntityChanged) GetEntityTypeOk() (*string, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *EntityChanged) SetEntityType(v string)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *EntityChanged) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.

### GetChangedAt

`func (o *EntityChanged) GetChangedAt() time.Time`

GetChangedAt returns the ChangedAt field if non-nil, zero value otherwise.

### GetChangedAtOk

`func (o *EntityChanged) GetChangedAtOk() (*time.Time, bool)`

GetChangedAtOk returns a tuple with the ChangedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChangedAt

`func (o *EntityChanged) SetChangedAt(v time.Time)`

SetChangedAt sets ChangedAt field to given value.

### HasChangedAt

`func (o *EntityChanged) HasChangedAt() bool`

HasChangedAt returns a boolean if a field has been set.

### GetTypeOffChange

`func (o *EntityChanged) GetTypeOffChange() int32`

GetTypeOffChange returns the TypeOffChange field if non-nil, zero value otherwise.

### GetTypeOffChangeOk

`func (o *EntityChanged) GetTypeOffChangeOk() (*int32, bool)`

GetTypeOffChangeOk returns a tuple with the TypeOffChange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTypeOffChange

`func (o *EntityChanged) SetTypeOffChange(v int32)`

SetTypeOffChange sets TypeOffChange field to given value.

### HasTypeOffChange

`func (o *EntityChanged) HasTypeOffChange() bool`

HasTypeOffChange returns a boolean if a field has been set.

### GetDisplayName

`func (o *EntityChanged) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *EntityChanged) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *EntityChanged) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *EntityChanged) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetAccountId

`func (o *EntityChanged) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *EntityChanged) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *EntityChanged) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.

### HasAccountId

`func (o *EntityChanged) HasAccountId() bool`

HasAccountId returns a boolean if a field has been set.

### GetSequenceNumber

`func (o *EntityChanged) GetSequenceNumber() int64`

GetSequenceNumber returns the SequenceNumber field if non-nil, zero value otherwise.

### GetSequenceNumberOk

`func (o *EntityChanged) GetSequenceNumberOk() (*int64, bool)`

GetSequenceNumberOk returns a tuple with the SequenceNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSequenceNumber

`func (o *EntityChanged) SetSequenceNumber(v int64)`

SetSequenceNumber sets SequenceNumber field to given value.

### HasSequenceNumber

`func (o *EntityChanged) HasSequenceNumber() bool`

HasSequenceNumber returns a boolean if a field has been set.

### GetEntityRefId

`func (o *EntityChanged) GetEntityRefId() string`

GetEntityRefId returns the EntityRefId field if non-nil, zero value otherwise.

### GetEntityRefIdOk

`func (o *EntityChanged) GetEntityRefIdOk() (*string, bool)`

GetEntityRefIdOk returns a tuple with the EntityRefId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityRefId

`func (o *EntityChanged) SetEntityRefId(v string)`

SetEntityRefId sets EntityRefId field to given value.

### HasEntityRefId

`func (o *EntityChanged) HasEntityRefId() bool`

HasEntityRefId returns a boolean if a field has been set.

### GetEntityParentId

`func (o *EntityChanged) GetEntityParentId() string`

GetEntityParentId returns the EntityParentId field if non-nil, zero value otherwise.

### GetEntityParentIdOk

`func (o *EntityChanged) GetEntityParentIdOk() (*string, bool)`

GetEntityParentIdOk returns a tuple with the EntityParentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityParentId

`func (o *EntityChanged) SetEntityParentId(v string)`

SetEntityParentId sets EntityParentId field to given value.

### HasEntityParentId

`func (o *EntityChanged) HasEntityParentId() bool`

HasEntityParentId returns a boolean if a field has been set.

### GetMetadata

`func (o *EntityChanged) GetMetadata() map[string]interface{}`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *EntityChanged) GetMetadataOk() (*map[string]interface{}, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *EntityChanged) SetMetadata(v map[string]interface{})`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *EntityChanged) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


