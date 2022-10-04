# EntityFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityType** | Pointer to **string** |  | [optional] 
**EntityIds** | Pointer to **[]string** |  | [optional] 

## Methods

### NewEntityFilter

`func NewEntityFilter() *EntityFilter`

NewEntityFilter instantiates a new EntityFilter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEntityFilterWithDefaults

`func NewEntityFilterWithDefaults() *EntityFilter`

NewEntityFilterWithDefaults instantiates a new EntityFilter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityType

`func (o *EntityFilter) GetEntityType() string`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *EntityFilter) GetEntityTypeOk() (*string, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *EntityFilter) SetEntityType(v string)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *EntityFilter) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.

### GetEntityIds

`func (o *EntityFilter) GetEntityIds() []string`

GetEntityIds returns the EntityIds field if non-nil, zero value otherwise.

### GetEntityIdsOk

`func (o *EntityFilter) GetEntityIdsOk() (*[]string, bool)`

GetEntityIdsOk returns a tuple with the EntityIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityIds

`func (o *EntityFilter) SetEntityIds(v []string)`

SetEntityIds sets EntityIds field to given value.

### HasEntityIds

`func (o *EntityFilter) HasEntityIds() bool`

HasEntityIds returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


