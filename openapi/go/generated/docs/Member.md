# Member

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | The name of the member that is used on leader boards and public displays | [optional] 
**MemberRefId** | Pointer to **string** | The reference to this member in your system | [optional] 
**MemberType** | Pointer to [**MemberType**](MemberType.md) |  | [optional] 
**TeamMembers** | Pointer to **[]string** | A social group like Guilds | [optional] 
**Constraints** | Pointer to **[]string** | Additional constraints | [optional] 
**TimeZoneOffset** | Pointer to **string** | To what time zone teh emmber belongs to | [optional] 
**Id** | **string** | Ziqni id of the model | 
**SpaceName** | Pointer to **string** | This is the space name which is linked to the account | [optional] 
**Created** | Pointer to **time.Time** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**CustomFields** | Pointer to **map[string]interface{}** |  | [optional] 
**Tags** | Pointer to **[]string** | A list of id&#39;s used to tag models | [optional] 
**Metadata** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewMember

`func NewMember(id string, ) *Member`

NewMember instantiates a new Member object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMemberWithDefaults

`func NewMemberWithDefaults() *Member`

NewMemberWithDefaults instantiates a new Member object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *Member) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Member) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Member) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Member) HasName() bool`

HasName returns a boolean if a field has been set.

### GetMemberRefId

`func (o *Member) GetMemberRefId() string`

GetMemberRefId returns the MemberRefId field if non-nil, zero value otherwise.

### GetMemberRefIdOk

`func (o *Member) GetMemberRefIdOk() (*string, bool)`

GetMemberRefIdOk returns a tuple with the MemberRefId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberRefId

`func (o *Member) SetMemberRefId(v string)`

SetMemberRefId sets MemberRefId field to given value.

### HasMemberRefId

`func (o *Member) HasMemberRefId() bool`

HasMemberRefId returns a boolean if a field has been set.

### GetMemberType

`func (o *Member) GetMemberType() MemberType`

GetMemberType returns the MemberType field if non-nil, zero value otherwise.

### GetMemberTypeOk

`func (o *Member) GetMemberTypeOk() (*MemberType, bool)`

GetMemberTypeOk returns a tuple with the MemberType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberType

`func (o *Member) SetMemberType(v MemberType)`

SetMemberType sets MemberType field to given value.

### HasMemberType

`func (o *Member) HasMemberType() bool`

HasMemberType returns a boolean if a field has been set.

### GetTeamMembers

`func (o *Member) GetTeamMembers() []string`

GetTeamMembers returns the TeamMembers field if non-nil, zero value otherwise.

### GetTeamMembersOk

`func (o *Member) GetTeamMembersOk() (*[]string, bool)`

GetTeamMembersOk returns a tuple with the TeamMembers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTeamMembers

`func (o *Member) SetTeamMembers(v []string)`

SetTeamMembers sets TeamMembers field to given value.

### HasTeamMembers

`func (o *Member) HasTeamMembers() bool`

HasTeamMembers returns a boolean if a field has been set.

### GetConstraints

`func (o *Member) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *Member) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *Member) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *Member) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetTimeZoneOffset

`func (o *Member) GetTimeZoneOffset() string`

GetTimeZoneOffset returns the TimeZoneOffset field if non-nil, zero value otherwise.

### GetTimeZoneOffsetOk

`func (o *Member) GetTimeZoneOffsetOk() (*string, bool)`

GetTimeZoneOffsetOk returns a tuple with the TimeZoneOffset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeZoneOffset

`func (o *Member) SetTimeZoneOffset(v string)`

SetTimeZoneOffset sets TimeZoneOffset field to given value.

### HasTimeZoneOffset

`func (o *Member) HasTimeZoneOffset() bool`

HasTimeZoneOffset returns a boolean if a field has been set.

### GetId

`func (o *Member) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Member) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Member) SetId(v string)`

SetId sets Id field to given value.


### GetSpaceName

`func (o *Member) GetSpaceName() string`

GetSpaceName returns the SpaceName field if non-nil, zero value otherwise.

### GetSpaceNameOk

`func (o *Member) GetSpaceNameOk() (*string, bool)`

GetSpaceNameOk returns a tuple with the SpaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpaceName

`func (o *Member) SetSpaceName(v string)`

SetSpaceName sets SpaceName field to given value.

### HasSpaceName

`func (o *Member) HasSpaceName() bool`

HasSpaceName returns a boolean if a field has been set.

### GetCreated

`func (o *Member) GetCreated() time.Time`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *Member) GetCreatedOk() (*time.Time, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *Member) SetCreated(v time.Time)`

SetCreated sets Created field to given value.

### HasCreated

`func (o *Member) HasCreated() bool`

HasCreated returns a boolean if a field has been set.

### GetCustomFields

`func (o *Member) GetCustomFields() map[string]interface{}`

GetCustomFields returns the CustomFields field if non-nil, zero value otherwise.

### GetCustomFieldsOk

`func (o *Member) GetCustomFieldsOk() (*map[string]interface{}, bool)`

GetCustomFieldsOk returns a tuple with the CustomFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomFields

`func (o *Member) SetCustomFields(v map[string]interface{})`

SetCustomFields sets CustomFields field to given value.

### HasCustomFields

`func (o *Member) HasCustomFields() bool`

HasCustomFields returns a boolean if a field has been set.

### GetTags

`func (o *Member) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *Member) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *Member) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *Member) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *Member) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *Member) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *Member) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *Member) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


