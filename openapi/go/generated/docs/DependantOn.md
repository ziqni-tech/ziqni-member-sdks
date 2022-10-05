# DependantOn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Must** | Pointer to **[]string** | A rule indicating that it has to be included. Players that are in the EU group with a MUST rule - that means only players that have that group can participate | [optional] 
**MustNot** | Pointer to **[]string** | A rule indicating that it will not be included. Players that are in the EU group with a MUST-NOT rule - that means that players that have that group can NOT participate | [optional] 
**Should** | Pointer to **[]string** | A rule indicating that some of them have to be included. Dependancy on shouldMatchAtLeast parameter. Players that are in the EU and DE groups with a SHOULD rule and a shouldMatchAtLeast with a value of 1 - that means that players that have 1 of the groups can participate | [optional] 
**ShouldMatchAtLeast** | Pointer to **int32** | Dependant on should. Triggered when 2 or more should parameters selected | [optional] 

## Methods

### NewDependantOn

`func NewDependantOn() *DependantOn`

NewDependantOn instantiates a new DependantOn object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDependantOnWithDefaults

`func NewDependantOnWithDefaults() *DependantOn`

NewDependantOnWithDefaults instantiates a new DependantOn object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMust

`func (o *DependantOn) GetMust() []string`

GetMust returns the Must field if non-nil, zero value otherwise.

### GetMustOk

`func (o *DependantOn) GetMustOk() (*[]string, bool)`

GetMustOk returns a tuple with the Must field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMust

`func (o *DependantOn) SetMust(v []string)`

SetMust sets Must field to given value.

### HasMust

`func (o *DependantOn) HasMust() bool`

HasMust returns a boolean if a field has been set.

### GetMustNot

`func (o *DependantOn) GetMustNot() []string`

GetMustNot returns the MustNot field if non-nil, zero value otherwise.

### GetMustNotOk

`func (o *DependantOn) GetMustNotOk() (*[]string, bool)`

GetMustNotOk returns a tuple with the MustNot field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMustNot

`func (o *DependantOn) SetMustNot(v []string)`

SetMustNot sets MustNot field to given value.

### HasMustNot

`func (o *DependantOn) HasMustNot() bool`

HasMustNot returns a boolean if a field has been set.

### GetShould

`func (o *DependantOn) GetShould() []string`

GetShould returns the Should field if non-nil, zero value otherwise.

### GetShouldOk

`func (o *DependantOn) GetShouldOk() (*[]string, bool)`

GetShouldOk returns a tuple with the Should field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShould

`func (o *DependantOn) SetShould(v []string)`

SetShould sets Should field to given value.

### HasShould

`func (o *DependantOn) HasShould() bool`

HasShould returns a boolean if a field has been set.

### GetShouldMatchAtLeast

`func (o *DependantOn) GetShouldMatchAtLeast() int32`

GetShouldMatchAtLeast returns the ShouldMatchAtLeast field if non-nil, zero value otherwise.

### GetShouldMatchAtLeastOk

`func (o *DependantOn) GetShouldMatchAtLeastOk() (*int32, bool)`

GetShouldMatchAtLeastOk returns a tuple with the ShouldMatchAtLeast field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShouldMatchAtLeast

`func (o *DependantOn) SetShouldMatchAtLeast(v int32)`

SetShouldMatchAtLeast sets ShouldMatchAtLeast field to given value.

### HasShouldMatchAtLeast

`func (o *DependantOn) HasShouldMatchAtLeast() bool`

HasShouldMatchAtLeast returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


