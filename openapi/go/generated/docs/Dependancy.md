# Dependancy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityType** | Pointer to **string** | A model that will have dependancies implemented | [optional] 
**DependantOn** | Pointer to [**DependantOn**](DependantOn.md) |  | [optional] 

## Methods

### NewDependancy

`func NewDependancy() *Dependancy`

NewDependancy instantiates a new Dependancy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDependancyWithDefaults

`func NewDependancyWithDefaults() *Dependancy`

NewDependancyWithDefaults instantiates a new Dependancy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityType

`func (o *Dependancy) GetEntityType() string`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *Dependancy) GetEntityTypeOk() (*string, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *Dependancy) SetEntityType(v string)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *Dependancy) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.

### GetDependantOn

`func (o *Dependancy) GetDependantOn() DependantOn`

GetDependantOn returns the DependantOn field if non-nil, zero value otherwise.

### GetDependantOnOk

`func (o *Dependancy) GetDependantOnOk() (*DependantOn, bool)`

GetDependantOnOk returns a tuple with the DependantOn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDependantOn

`func (o *Dependancy) SetDependantOn(v DependantOn)`

SetDependantOn sets DependantOn field to given value.

### HasDependantOn

`func (o *Dependancy) HasDependantOn() bool`

HasDependantOn returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


