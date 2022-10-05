# ModelDefault

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Ziqni id of the model | 
**SpaceName** | Pointer to **string** | This is the space name which is linked to the account | [optional] 
**Created** | Pointer to **time.Time** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 

## Methods

### NewModelDefault

`func NewModelDefault(id string, ) *ModelDefault`

NewModelDefault instantiates a new ModelDefault object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewModelDefaultWithDefaults

`func NewModelDefaultWithDefaults() *ModelDefault`

NewModelDefaultWithDefaults instantiates a new ModelDefault object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ModelDefault) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ModelDefault) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ModelDefault) SetId(v string)`

SetId sets Id field to given value.


### GetSpaceName

`func (o *ModelDefault) GetSpaceName() string`

GetSpaceName returns the SpaceName field if non-nil, zero value otherwise.

### GetSpaceNameOk

`func (o *ModelDefault) GetSpaceNameOk() (*string, bool)`

GetSpaceNameOk returns a tuple with the SpaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpaceName

`func (o *ModelDefault) SetSpaceName(v string)`

SetSpaceName sets SpaceName field to given value.

### HasSpaceName

`func (o *ModelDefault) HasSpaceName() bool`

HasSpaceName returns a boolean if a field has been set.

### GetCreated

`func (o *ModelDefault) GetCreated() time.Time`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *ModelDefault) GetCreatedOk() (*time.Time, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *ModelDefault) SetCreated(v time.Time)`

SetCreated sets Created field to given value.

### HasCreated

`func (o *ModelDefault) HasCreated() bool`

HasCreated returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


