# OptionalModelFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomFields** | Pointer to **map[string]interface{}** |  | [optional] 
**Tags** | Pointer to **[]string** | A list of id&#39;s used to tag models | [optional] 
**Metadata** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewOptionalModelFields

`func NewOptionalModelFields() *OptionalModelFields`

NewOptionalModelFields instantiates a new OptionalModelFields object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionalModelFieldsWithDefaults

`func NewOptionalModelFieldsWithDefaults() *OptionalModelFields`

NewOptionalModelFieldsWithDefaults instantiates a new OptionalModelFields object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCustomFields

`func (o *OptionalModelFields) GetCustomFields() map[string]interface{}`

GetCustomFields returns the CustomFields field if non-nil, zero value otherwise.

### GetCustomFieldsOk

`func (o *OptionalModelFields) GetCustomFieldsOk() (*map[string]interface{}, bool)`

GetCustomFieldsOk returns a tuple with the CustomFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomFields

`func (o *OptionalModelFields) SetCustomFields(v map[string]interface{})`

SetCustomFields sets CustomFields field to given value.

### HasCustomFields

`func (o *OptionalModelFields) HasCustomFields() bool`

HasCustomFields returns a boolean if a field has been set.

### GetTags

`func (o *OptionalModelFields) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *OptionalModelFields) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *OptionalModelFields) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *OptionalModelFields) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *OptionalModelFields) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *OptionalModelFields) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *OptionalModelFields) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *OptionalModelFields) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


