# Reward

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityType** | Pointer to [**EntityType**](EntityType.md) |  | [optional] 
**EntityId** | Pointer to **string** | A unique identifier of an achievement or contest. Dependant on entityType | [optional] 
**Name** | Pointer to **string** | The name of a reward | [optional] 
**Description** | Pointer to **string** | The description of a Reward | [optional] 
**RewardRank** | Pointer to **string** | If used in the context of contest this will associate with the rank of the leaderboard | [optional] 
**RewardValue** | Pointer to **float64** | Numerical value of the reward that will be issued based on the reward type | [optional] 
**RewardType** | Pointer to [**RewardTypeReduced**](RewardTypeReduced.md) |  | [optional] 
**Icon** | Pointer to **string** | An Icon id that has been pre uploaded to the system to display for reward | [optional] 
**IssueLimit** | Pointer to **int32** | how many of thsese rewards are | [optional] 
**Delay** | Pointer to **int32** | Delay of issuing a reward in minutes | [optional] 
**PointInTime** | Pointer to **time.Time** | ISO8601 timestamp for when a Reward is available until a specific point in time. All records are stored in UTC time zone | [optional] 
**Period** | Pointer to **int32** | Reward available for a period of time from issuing in minutes | [optional] 
**Constraints** | Pointer to **[]string** | Additional constraints | [optional] 

## Methods

### NewReward

`func NewReward() *Reward`

NewReward instantiates a new Reward object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRewardWithDefaults

`func NewRewardWithDefaults() *Reward`

NewRewardWithDefaults instantiates a new Reward object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityType

`func (o *Reward) GetEntityType() EntityType`

GetEntityType returns the EntityType field if non-nil, zero value otherwise.

### GetEntityTypeOk

`func (o *Reward) GetEntityTypeOk() (*EntityType, bool)`

GetEntityTypeOk returns a tuple with the EntityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityType

`func (o *Reward) SetEntityType(v EntityType)`

SetEntityType sets EntityType field to given value.

### HasEntityType

`func (o *Reward) HasEntityType() bool`

HasEntityType returns a boolean if a field has been set.

### GetEntityId

`func (o *Reward) GetEntityId() string`

GetEntityId returns the EntityId field if non-nil, zero value otherwise.

### GetEntityIdOk

`func (o *Reward) GetEntityIdOk() (*string, bool)`

GetEntityIdOk returns a tuple with the EntityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityId

`func (o *Reward) SetEntityId(v string)`

SetEntityId sets EntityId field to given value.

### HasEntityId

`func (o *Reward) HasEntityId() bool`

HasEntityId returns a boolean if a field has been set.

### GetName

`func (o *Reward) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Reward) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Reward) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Reward) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *Reward) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Reward) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Reward) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Reward) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetRewardRank

`func (o *Reward) GetRewardRank() string`

GetRewardRank returns the RewardRank field if non-nil, zero value otherwise.

### GetRewardRankOk

`func (o *Reward) GetRewardRankOk() (*string, bool)`

GetRewardRankOk returns a tuple with the RewardRank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardRank

`func (o *Reward) SetRewardRank(v string)`

SetRewardRank sets RewardRank field to given value.

### HasRewardRank

`func (o *Reward) HasRewardRank() bool`

HasRewardRank returns a boolean if a field has been set.

### GetRewardValue

`func (o *Reward) GetRewardValue() float64`

GetRewardValue returns the RewardValue field if non-nil, zero value otherwise.

### GetRewardValueOk

`func (o *Reward) GetRewardValueOk() (*float64, bool)`

GetRewardValueOk returns a tuple with the RewardValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardValue

`func (o *Reward) SetRewardValue(v float64)`

SetRewardValue sets RewardValue field to given value.

### HasRewardValue

`func (o *Reward) HasRewardValue() bool`

HasRewardValue returns a boolean if a field has been set.

### GetRewardType

`func (o *Reward) GetRewardType() RewardTypeReduced`

GetRewardType returns the RewardType field if non-nil, zero value otherwise.

### GetRewardTypeOk

`func (o *Reward) GetRewardTypeOk() (*RewardTypeReduced, bool)`

GetRewardTypeOk returns a tuple with the RewardType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewardType

`func (o *Reward) SetRewardType(v RewardTypeReduced)`

SetRewardType sets RewardType field to given value.

### HasRewardType

`func (o *Reward) HasRewardType() bool`

HasRewardType returns a boolean if a field has been set.

### GetIcon

`func (o *Reward) GetIcon() string`

GetIcon returns the Icon field if non-nil, zero value otherwise.

### GetIconOk

`func (o *Reward) GetIconOk() (*string, bool)`

GetIconOk returns a tuple with the Icon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIcon

`func (o *Reward) SetIcon(v string)`

SetIcon sets Icon field to given value.

### HasIcon

`func (o *Reward) HasIcon() bool`

HasIcon returns a boolean if a field has been set.

### GetIssueLimit

`func (o *Reward) GetIssueLimit() int32`

GetIssueLimit returns the IssueLimit field if non-nil, zero value otherwise.

### GetIssueLimitOk

`func (o *Reward) GetIssueLimitOk() (*int32, bool)`

GetIssueLimitOk returns a tuple with the IssueLimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssueLimit

`func (o *Reward) SetIssueLimit(v int32)`

SetIssueLimit sets IssueLimit field to given value.

### HasIssueLimit

`func (o *Reward) HasIssueLimit() bool`

HasIssueLimit returns a boolean if a field has been set.

### GetDelay

`func (o *Reward) GetDelay() int32`

GetDelay returns the Delay field if non-nil, zero value otherwise.

### GetDelayOk

`func (o *Reward) GetDelayOk() (*int32, bool)`

GetDelayOk returns a tuple with the Delay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelay

`func (o *Reward) SetDelay(v int32)`

SetDelay sets Delay field to given value.

### HasDelay

`func (o *Reward) HasDelay() bool`

HasDelay returns a boolean if a field has been set.

### GetPointInTime

`func (o *Reward) GetPointInTime() time.Time`

GetPointInTime returns the PointInTime field if non-nil, zero value otherwise.

### GetPointInTimeOk

`func (o *Reward) GetPointInTimeOk() (*time.Time, bool)`

GetPointInTimeOk returns a tuple with the PointInTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPointInTime

`func (o *Reward) SetPointInTime(v time.Time)`

SetPointInTime sets PointInTime field to given value.

### HasPointInTime

`func (o *Reward) HasPointInTime() bool`

HasPointInTime returns a boolean if a field has been set.

### GetPeriod

`func (o *Reward) GetPeriod() int32`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *Reward) GetPeriodOk() (*int32, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *Reward) SetPeriod(v int32)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *Reward) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.

### GetConstraints

`func (o *Reward) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *Reward) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *Reward) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *Reward) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


