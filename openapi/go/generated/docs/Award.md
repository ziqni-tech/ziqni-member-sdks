# Award

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MemberId** | Pointer to **string** | A unique identifier of a Member | [optional] 
**RewardId** | Pointer to **string** | A unique identifier of a Reward | [optional] 
**RewardType** | Pointer to [**RewardTypeReduced**](RewardTypeReduced.md) |  | [optional] 
**RewardRank** | Pointer to **string** | If used in the context of contest this will associate with the rank of the leaderboard | [optional] 
**RewardValue** | Pointer to **float64** | Numerical value of the reward that will be issued based on the reward type | [optional] 
**Delay** | Pointer to **int32** | Delay of issuing a reward in minutes | [optional] 
**EntityType** | Pointer to [**EntityType**](EntityType.md) |  | [optional] 
**EntityId** | Pointer to **string** | The Id of the contest or achievement related to this Award. Dependant on entityType | [optional] 
**PointInTime** | Pointer to **time.Time** | ISO8601 timestamp for when an Award is available until a specific point in time. All records are stored in UTC time zone. * There can only be one time definition used for claim period either \&quot;pointInTime\&quot; or \&quot;period\&quot; | [optional] 
**Period** | Pointer to **int32** | Claimable duration in minutes, this value will set the controls until when the award is claimable. * There can only be one time definition used for claim period either \&quot;pointInTime\&quot; or \&quot;period\&quot; | [optional] 
**Tags** | Pointer to **[]string** | A list of Strings of groups that the reward belongs to. | [optional] 
**Metadata** | Pointer to **map[string]string** | The metadata associated with this award | [optional] 
**Constraints** | Pointer to **[]string** | Additional constraints, if the value is present it means the | [optional] 
**ClaimedTimestamp** | Pointer to **time.Time** | ISO8601 timestamp for when an Award is claimed. All records are stored in UTC time zone. * | [optional] 
**Id** | **string** | Ziqni id of the model | 
**SpaceName** | Pointer to **string** | This is the space name which is linked to the account | [optional] 
**Created** | Pointer to **time.Time** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 

## Methods

### NewAward

`func NewAward(id string, ) *Award`

NewAward instantiates a new Award object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAwardWithDefaults

`func NewAwardWithDefaults() *Award`

NewAwardWithDefaults instantiates a new Award object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMemberId

`func (o *Award) GetMemberId() string`

GetMemberId returns the MemberId field if non-nil, zero value otherwise.

### GetMemberIdOk

`func (o *Award) GetMemberIdOk() (*string, bool)`

GetMemberIdOk returns a tuple with the MemberId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberId

`func (o *Award) SetMemberId(v string)`

SetMemberId sets MemberId field to given value.

### HasMemberId

`func (o *Award) HasMemberId() bool`

HasMemberId returns a boolean if a field has been set.

### GetRewardId

`func (o *Award) GetRewardId() string`

GetRewardId returns the RewardId field if non-nil, zero value otherwise.

### GetRewardIdOk

`func (o *Award) GetRewardIdOk() (*string, bool)`

GetRewardIdOk returns a tuple with the RewardId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardId

`func (o *Award) SetRewardId(v string)`

SetRewardId sets RewardId field to given value.

### HasRewardId

`func (o *Award) HasRewardId() bool`

HasRewardId returns a boolean if a field has been set.

### GetRewardType

`func (o *Award) GetRewardType() RewardTypeReduced`

GetRewardType returns the RewardType field if non-nil, zero value otherwise.

### GetRewardTypeOk

`func (o *Award) GetRewardTypeOk() (*RewardTypeReduced, bool)`

GetRewardTypeOk returns a tuple with the RewardType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardType

`func (o *Award) SetRewardType(v RewardTypeReduced)`

SetRewardType sets RewardType field to given value.

### HasRewardType

`func (o *Award) HasRewardType() bool`

HasRewardType returns a boolean if a field has been set.

### GetRewardRank

`func (o *Award) GetRewardRank() string`

GetRewardRank returns the RewardRank field if non-nil, zero value otherwise.

### GetRewardRankOk

`func (o *Award) GetRewardRankOk() (*string, bool)`

GetRewardRankOk returns a tuple with the RewardRank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardRank

`func (o *Award) SetRewardRank(v string)`

SetRewardRank sets RewardRank field to given value.

### HasRewardRank

`func (o *Award) HasRewardRank() bool`

HasRewardRank returns a boolean if a field has been set.

### GetRewardValue

`func (o *Award) GetRewardValue() float64`

GetRewardValue returns the RewardValue field if non-nil, zero value otherwise.

### GetRewardValueOk

`func (o *Award) GetRewardValueOk() (*float64, bool)`

GetRewardValueOk returns a tuple with the RewardValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardValue

`func (o *Award) SetRewardValue(v float64)`

SetRewardValue sets RewardValue field to given value.

### HasRewardValue

`func (o *Award) HasRewardValue() bool`

HasRewardValue returns a boolean if a field has been set.

### GetDelay

`func (o *Award) GetDelay() int32`

GetDelay returns the Delay field if non-nil, zero value otherwise.

### GetDelayOk

`func (o *Award) GetDelayOk() (*int32, bool)`

GetDelayOk returns a tuple with the Delay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelay

`func (o *Award) SetDelay(v int32)`

SetDelay sets Delay field to given value.

### HasDelay

`func (o *Award) HasDelay() bool`

HasDelay returns a boolean if a field has been set.

### GetEntityType

`func (o *Award) GetEntityType() EntityType`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *Award) GetEntityTypeOk() (*EntityType, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *Award) SetEntityType(v EntityType)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *Award) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.

### GetEntityId

`func (o *Award) GetEntityId() string`

GetEntityId returns the EntityId field if non-nil, zero value otherwise.

### GetEntityIdOk

`func (o *Award) GetEntityIdOk() (*string, bool)`

GetEntityIdOk returns a tuple with the EntityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityId

`func (o *Award) SetEntityId(v string)`

SetEntityId sets EntityId field to given value.

### HasEntityId

`func (o *Award) HasEntityId() bool`

HasEntityId returns a boolean if a field has been set.

### GetPointInTime

`func (o *Award) GetPointInTime() time.Time`

GetPointInTime returns the PointInTime field if non-nil, zero value otherwise.

### GetPointInTimeOk

`func (o *Award) GetPointInTimeOk() (*time.Time, bool)`

GetPointInTimeOk returns a tuple with the PointInTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPointInTime

`func (o *Award) SetPointInTime(v time.Time)`

SetPointInTime sets PointInTime field to given value.

### HasPointInTime

`func (o *Award) HasPointInTime() bool`

HasPointInTime returns a boolean if a field has been set.

### GetPeriod

`func (o *Award) GetPeriod() int32`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *Award) GetPeriodOk() (*int32, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *Award) SetPeriod(v int32)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *Award) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.

### GetTags

`func (o *Award) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *Award) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *Award) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *Award) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *Award) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *Award) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *Award) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *Award) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.

### GetConstraints

`func (o *Award) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *Award) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *Award) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *Award) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetClaimedTimestamp

`func (o *Award) GetClaimedTimestamp() time.Time`

GetClaimedTimestamp returns the ClaimedTimestamp field if non-nil, zero value otherwise.

### GetClaimedTimestampOk

`func (o *Award) GetClaimedTimestampOk() (*time.Time, bool)`

GetClaimedTimestampOk returns a tuple with the ClaimedTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimedTimestamp

`func (o *Award) SetClaimedTimestamp(v time.Time)`

SetClaimedTimestamp sets ClaimedTimestamp field to given value.

### HasClaimedTimestamp

`func (o *Award) HasClaimedTimestamp() bool`

HasClaimedTimestamp returns a boolean if a field has been set.

### GetId

`func (o *Award) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Award) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Award) SetId(v string)`

SetId sets Id field to given value.


### GetSpaceName

`func (o *Award) GetSpaceName() string`

GetSpaceName returns the SpaceName field if non-nil, zero value otherwise.

### GetSpaceNameOk

`func (o *Award) GetSpaceNameOk() (*string, bool)`

GetSpaceNameOk returns a tuple with the SpaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpaceName

`func (o *Award) SetSpaceName(v string)`

SetSpaceName sets SpaceName field to given value.

### HasSpaceName

`func (o *Award) HasSpaceName() bool`

HasSpaceName returns a boolean if a field has been set.

### GetCreated

`func (o *Award) GetCreated() time.Time`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *Award) GetCreatedOk() (*time.Time, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *Award) SetCreated(v time.Time)`

SetCreated sets Created field to given value.

### HasCreated

`func (o *Award) HasCreated() bool`

HasCreated returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


