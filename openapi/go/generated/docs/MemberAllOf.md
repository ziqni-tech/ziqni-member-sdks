# MemberAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | The name of the member that is used on leader boards and public displays | [optional] 
**MemberRefId** | Pointer to **string** | The reference to this member in your system | [optional] 
**MemberType** | Pointer to [**MemberType**](MemberType.md) |  | [optional] 
**TeamMembers** | Pointer to **[]string** | A social group like Guilds | [optional] 
**Constraints** | Pointer to **[]string** | Additional constraints | [optional] 
**TimeZoneOffset** | Pointer to **string** | To what time zone teh emmber belongs to | [optional] 

## Methods

### NewMemberAllOf

`func NewMemberAllOf() *MemberAllOf`

NewMemberAllOf instantiates a new MemberAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMemberAllOfWithDefaults

`func NewMemberAllOfWithDefaults() *MemberAllOf`

NewMemberAllOfWithDefaults instantiates a new MemberAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *MemberAllOf) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *MemberAllOf) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *MemberAllOf) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *MemberAllOf) HasName() bool`

HasName returns a boolean if a field has been set.

### GetMemberRefId

`func (o *MemberAllOf) GetMemberRefId() string`

GetMemberRefId returns the MemberRefId field if non-nil, zero value otherwise.

### GetMemberRefIdOk

`func (o *MemberAllOf) GetMemberRefIdOk() (*string, bool)`

GetMemberRefIdOk returns a tuple with the MemberRefId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberRefId

`func (o *MemberAllOf) SetMemberRefId(v string)`

SetMemberRefId sets MemberRefId field to given value.

### HasMemberRefId

`func (o *MemberAllOf) HasMemberRefId() bool`

HasMemberRefId returns a boolean if a field has been set.

### GetMemberType

`func (o *MemberAllOf) GetMemberType() MemberType`

GetMemberType returns the MemberType field if non-nil, zero value otherwise.

### GetMemberTypeOk

`func (o *MemberAllOf) GetMemberTypeOk() (*MemberType, bool)`

GetMemberTypeOk returns a tuple with the MemberType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberType

`func (o *MemberAllOf) SetMemberType(v MemberType)`

SetMemberType sets MemberType field to given value.

### HasMemberType

`func (o *MemberAllOf) HasMemberType() bool`

HasMemberType returns a boolean if a field has been set.

### GetTeamMembers

`func (o *MemberAllOf) GetTeamMembers() []string`

GetTeamMembers returns the TeamMembers field if non-nil, zero value otherwise.

### GetTeamMembersOk

`func (o *MemberAllOf) GetTeamMembersOk() (*[]string, bool)`

GetTeamMembersOk returns a tuple with the TeamMembers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTeamMembers

`func (o *MemberAllOf) SetTeamMembers(v []string)`

SetTeamMembers sets TeamMembers field to given value.

### HasTeamMembers

`func (o *MemberAllOf) HasTeamMembers() bool`

HasTeamMembers returns a boolean if a field has been set.

### GetConstraints

`func (o *MemberAllOf) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *MemberAllOf) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *MemberAllOf) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *MemberAllOf) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetTimeZoneOffset

`func (o *MemberAllOf) GetTimeZoneOffset() string`

GetTimeZoneOffset returns the TimeZoneOffset field if non-nil, zero value otherwise.

### GetTimeZoneOffsetOk

`func (o *MemberAllOf) GetTimeZoneOffsetOk() (*string, bool)`

GetTimeZoneOffsetOk returns a tuple with the TimeZoneOffset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeZoneOffset

`func (o *MemberAllOf) SetTimeZoneOffset(v string)`

SetTimeZoneOffset sets TimeZoneOffset field to given value.

### HasTimeZoneOffset

`func (o *MemberAllOf) HasTimeZoneOffset() bool`

HasTimeZoneOffset returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


