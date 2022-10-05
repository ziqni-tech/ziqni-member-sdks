# AwardAllOf

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

## Methods

### NewAwardAllOf

`func NewAwardAllOf() *AwardAllOf`

NewAwardAllOf instantiates a new AwardAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAwardAllOfWithDefaults

`func NewAwardAllOfWithDefaults() *AwardAllOf`

NewAwardAllOfWithDefaults instantiates a new AwardAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMemberId

`func (o *AwardAllOf) GetMemberId() string`

GetMemberId returns the MemberId field if non-nil, zero value otherwise.

### GetMemberIdOk

`func (o *AwardAllOf) GetMemberIdOk() (*string, bool)`

GetMemberIdOk returns a tuple with the MemberId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberId

`func (o *AwardAllOf) SetMemberId(v string)`

SetMemberId sets MemberId field to given value.

### HasMemberId

`func (o *AwardAllOf) HasMemberId() bool`

HasMemberId returns a boolean if a field has been set.

### GetRewardId

`func (o *AwardAllOf) GetRewardId() string`

GetRewardId returns the RewardId field if non-nil, zero value otherwise.

### GetRewardIdOk

`func (o *AwardAllOf) GetRewardIdOk() (*string, bool)`

GetRewardIdOk returns a tuple with the RewardId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardId

`func (o *AwardAllOf) SetRewardId(v string)`

SetRewardId sets RewardId field to given value.

### HasRewardId

`func (o *AwardAllOf) HasRewardId() bool`

HasRewardId returns a boolean if a field has been set.

### GetRewardType

`func (o *AwardAllOf) GetRewardType() RewardTypeReduced`

GetRewardType returns the RewardType field if non-nil, zero value otherwise.

### GetRewardTypeOk

`func (o *AwardAllOf) GetRewardTypeOk() (*RewardTypeReduced, bool)`

GetRewardTypeOk returns a tuple with the RewardType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardType

`func (o *AwardAllOf) SetRewardType(v RewardTypeReduced)`

SetRewardType sets RewardType field to given value.

### HasRewardType

`func (o *AwardAllOf) HasRewardType() bool`

HasRewardType returns a boolean if a field has been set.

### GetRewardRank

`func (o *AwardAllOf) GetRewardRank() string`

GetRewardRank returns the RewardRank field if non-nil, zero value otherwise.

### GetRewardRankOk

`func (o *AwardAllOf) GetRewardRankOk() (*string, bool)`

GetRewardRankOk returns a tuple with the RewardRank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardRank

`func (o *AwardAllOf) SetRewardRank(v string)`

SetRewardRank sets RewardRank field to given value.

### HasRewardRank

`func (o *AwardAllOf) HasRewardRank() bool`

HasRewardRank returns a boolean if a field has been set.

### GetRewardValue

`func (o *AwardAllOf) GetRewardValue() float64`

GetRewardValue returns the RewardValue field if non-nil, zero value otherwise.

### GetRewardValueOk

`func (o *AwardAllOf) GetRewardValueOk() (*float64, bool)`

GetRewardValueOk returns a tuple with the RewardValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardValue

`func (o *AwardAllOf) SetRewardValue(v float64)`

SetRewardValue sets RewardValue field to given value.

### HasRewardValue

`func (o *AwardAllOf) HasRewardValue() bool`

HasRewardValue returns a boolean if a field has been set.

### GetDelay

`func (o *AwardAllOf) GetDelay() int32`

GetDelay returns the Delay field if non-nil, zero value otherwise.

### GetDelayOk

`func (o *AwardAllOf) GetDelayOk() (*int32, bool)`

GetDelayOk returns a tuple with the Delay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelay

`func (o *AwardAllOf) SetDelay(v int32)`

SetDelay sets Delay field to given value.

### HasDelay

`func (o *AwardAllOf) HasDelay() bool`

HasDelay returns a boolean if a field has been set.

### GetEntityType

`func (o *AwardAllOf) GetEntityType() EntityType`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *AwardAllOf) GetEntityTypeOk() (*EntityType, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *AwardAllOf) SetEntityType(v EntityType)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *AwardAllOf) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.

### GetEntityId

`func (o *AwardAllOf) GetEntityId() string`

GetEntityId returns the EntityId field if non-nil, zero value otherwise.

### GetEntityIdOk

`func (o *AwardAllOf) GetEntityIdOk() (*string, bool)`

GetEntityIdOk returns a tuple with the EntityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityId

`func (o *AwardAllOf) SetEntityId(v string)`

SetEntityId sets EntityId field to given value.

### HasEntityId

`func (o *AwardAllOf) HasEntityId() bool`

HasEntityId returns a boolean if a field has been set.

### GetPointInTime

`func (o *AwardAllOf) GetPointInTime() time.Time`

GetPointInTime returns the PointInTime field if non-nil, zero value otherwise.

### GetPointInTimeOk

`func (o *AwardAllOf) GetPointInTimeOk() (*time.Time, bool)`

GetPointInTimeOk returns a tuple with the PointInTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPointInTime

`func (o *AwardAllOf) SetPointInTime(v time.Time)`

SetPointInTime sets PointInTime field to given value.

### HasPointInTime

`func (o *AwardAllOf) HasPointInTime() bool`

HasPointInTime returns a boolean if a field has been set.

### GetPeriod

`func (o *AwardAllOf) GetPeriod() int32`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *AwardAllOf) GetPeriodOk() (*int32, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *AwardAllOf) SetPeriod(v int32)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *AwardAllOf) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.

### GetTags

`func (o *AwardAllOf) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *AwardAllOf) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *AwardAllOf) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *AwardAllOf) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *AwardAllOf) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *AwardAllOf) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *AwardAllOf) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *AwardAllOf) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.

### GetConstraints

`func (o *AwardAllOf) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *AwardAllOf) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *AwardAllOf) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *AwardAllOf) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetClaimedTimestamp

`func (o *AwardAllOf) GetClaimedTimestamp() time.Time`

GetClaimedTimestamp returns the ClaimedTimestamp field if non-nil, zero value otherwise.

### GetClaimedTimestampOk

`func (o *AwardAllOf) GetClaimedTimestampOk() (*time.Time, bool)`

GetClaimedTimestampOk returns a tuple with the ClaimedTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimedTimestamp

`func (o *AwardAllOf) SetClaimedTimestamp(v time.Time)`

SetClaimedTimestamp sets ClaimedTimestamp field to given value.

### HasClaimedTimestamp

`func (o *AwardAllOf) HasClaimedTimestamp() bool`

HasClaimedTimestamp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


