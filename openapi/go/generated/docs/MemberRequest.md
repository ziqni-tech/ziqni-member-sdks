# MemberRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludeFields** | Pointer to **[]string** | ALL, or else the name of the top level fields you want to include | [optional] 
**IncludeCustomFields** | **[]string** | Only include custom fields that have these keys | 
**IncludeMetaDataFields** | Pointer to **[]string** | Only include metadata that have these keys | [optional] 

## Methods

### NewMemberRequest

`func NewMemberRequest(includeCustomFields []string, ) *MemberRequest`

NewMemberRequest instantiates a new MemberRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMemberRequestWithDefaults

`func NewMemberRequestWithDefaults() *MemberRequest`

NewMemberRequestWithDefaults instantiates a new MemberRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIncludeFields

`func (o *MemberRequest) GetIncludeFields() []string`

GetIncludeFields returns the IncludeFields field if non-nil, zero value otherwise.

### GetIncludeFieldsOk

`func (o *MemberRequest) GetIncludeFieldsOk() (*[]string, bool)`

GetIncludeFieldsOk returns a tuple with the IncludeFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIncludeFields

`func (o *MemberRequest) SetIncludeFields(v []string)`

SetIncludeFields sets IncludeFields field to given value.

### HasIncludeFields

`func (o *MemberRequest) HasIncludeFields() bool`

HasIncludeFields returns a boolean if a field has been set.

### GetIncludeCustomFields

`func (o *MemberRequest) GetIncludeCustomFields() []string`

GetIncludeCustomFields returns the IncludeCustomFields field if non-nil, zero value otherwise.

### GetIncludeCustomFieldsOk

`func (o *MemberRequest) GetIncludeCustomFieldsOk() (*[]string, bool)`

GetIncludeCustomFieldsOk returns a tuple with the IncludeCustomFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIncludeCustomFields

`func (o *MemberRequest) SetIncludeCustomFields(v []string)`

SetIncludeCustomFields sets IncludeCustomFields field to given value.


### GetIncludeMetaDataFields

`func (o *MemberRequest) GetIncludeMetaDataFields() []string`

GetIncludeMetaDataFields returns the IncludeMetaDataFields field if non-nil, zero value otherwise.

### GetIncludeMetaDataFieldsOk

`func (o *MemberRequest) GetIncludeMetaDataFieldsOk() (*[]string, bool)`

GetIncludeMetaDataFieldsOk returns a tuple with the IncludeMetaDataFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIncludeMetaDataFields

`func (o *MemberRequest) SetIncludeMetaDataFields(v []string)`

SetIncludeMetaDataFields sets IncludeMetaDataFields field to given value.

### HasIncludeMetaDataFields

`func (o *MemberRequest) HasIncludeMetaDataFields() bool`

HasIncludeMetaDataFields returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


