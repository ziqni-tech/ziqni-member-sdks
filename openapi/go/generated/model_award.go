/*
ZIQNI Member API

The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.

API version: 1.0.0
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"time"
)

// Award 
type Award struct {
	// A unique identifier of a Member
	MemberId *string `json:"memberId,omitempty"`
	// A unique identifier of a Reward
	RewardId *string `json:"rewardId,omitempty"`
	RewardType *RewardTypeReduced `json:"rewardType,omitempty"`
	// If used in the context of contest this will associate with the rank of the leaderboard
	RewardRank *string `json:"rewardRank,omitempty"`
	// Numerical value of the reward that will be issued based on the reward type
	RewardValue *float64 `json:"rewardValue,omitempty"`
	// Delay of issuing a reward in minutes
	Delay *int32 `json:"delay,omitempty"`
	EntityType *EntityType `json:"entityType,omitempty"`
	// The Id of the contest or achievement related to this Award. Dependant on entityType
	EntityId *string `json:"entityId,omitempty"`
	// ISO8601 timestamp for when an Award is available until a specific point in time. All records are stored in UTC time zone. * There can only be one time definition used for claim period either \"pointInTime\" or \"period\"
	PointInTime *time.Time `json:"pointInTime,omitempty"`
	// Claimable duration in minutes, this value will set the controls until when the award is claimable. * There can only be one time definition used for claim period either \"pointInTime\" or \"period\"
	Period *int32 `json:"period,omitempty"`
	// A list of Strings of groups that the reward belongs to.
	Tags []string `json:"tags,omitempty"`
	// The metadata associated with this award
	Metadata *map[string]string `json:"metadata,omitempty"`
	// Additional constraints, if the value is present it means the
	Constraints []string `json:"constraints,omitempty"`
	// ISO8601 timestamp for when an Award is claimed. All records are stored in UTC time zone. *
	ClaimedTimestamp *time.Time `json:"claimedTimestamp,omitempty"`
	// Ziqni id of the model
	Id string `json:"id"`
	// This is the space name which is linked to the account
	SpaceName *string `json:"spaceName,omitempty"`
	// ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
	Created *time.Time `json:"created,omitempty"`
}

// NewAward instantiates a new Award object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAward(id string) *Award {
	this := Award{}
	this.Id = id
	return &this
}

// NewAwardWithDefaults instantiates a new Award object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAwardWithDefaults() *Award {
	this := Award{}
	return &this
}

// GetMemberId returns the MemberId field value if set, zero value otherwise.
func (o *Award) GetMemberId() string {
	if o == nil || o.MemberId == nil {
		var ret string
		return ret
	}
	return *o.MemberId
}

// GetMemberIdOk returns a tuple with the MemberId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetMemberIdOk() (*string, bool) {
	if o == nil || o.MemberId == nil {
		return nil, false
	}
	return o.MemberId, true
}

// HasMemberId returns a boolean if a field has been set.
func (o *Award) HasMemberId() bool {
	if o != nil && o.MemberId != nil {
		return true
	}

	return false
}

// SetMemberId gets a reference to the given string and assigns it to the MemberId field.
func (o *Award) SetMemberId(v string) {
	o.MemberId = &v
}

// GetRewardId returns the RewardId field value if set, zero value otherwise.
func (o *Award) GetRewardId() string {
	if o == nil || o.RewardId == nil {
		var ret string
		return ret
	}
	return *o.RewardId
}

// GetRewardIdOk returns a tuple with the RewardId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetRewardIdOk() (*string, bool) {
	if o == nil || o.RewardId == nil {
		return nil, false
	}
	return o.RewardId, true
}

// HasRewardId returns a boolean if a field has been set.
func (o *Award) HasRewardId() bool {
	if o != nil && o.RewardId != nil {
		return true
	}

	return false
}

// SetRewardId gets a reference to the given string and assigns it to the RewardId field.
func (o *Award) SetRewardId(v string) {
	o.RewardId = &v
}

// GetRewardType returns the RewardType field value if set, zero value otherwise.
func (o *Award) GetRewardType() RewardTypeReduced {
	if o == nil || o.RewardType == nil {
		var ret RewardTypeReduced
		return ret
	}
	return *o.RewardType
}

// GetRewardTypeOk returns a tuple with the RewardType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetRewardTypeOk() (*RewardTypeReduced, bool) {
	if o == nil || o.RewardType == nil {
		return nil, false
	}
	return o.RewardType, true
}

// HasRewardType returns a boolean if a field has been set.
func (o *Award) HasRewardType() bool {
	if o != nil && o.RewardType != nil {
		return true
	}

	return false
}

// SetRewardType gets a reference to the given RewardTypeReduced and assigns it to the RewardType field.
func (o *Award) SetRewardType(v RewardTypeReduced) {
	o.RewardType = &v
}

// GetRewardRank returns the RewardRank field value if set, zero value otherwise.
func (o *Award) GetRewardRank() string {
	if o == nil || o.RewardRank == nil {
		var ret string
		return ret
	}
	return *o.RewardRank
}

// GetRewardRankOk returns a tuple with the RewardRank field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetRewardRankOk() (*string, bool) {
	if o == nil || o.RewardRank == nil {
		return nil, false
	}
	return o.RewardRank, true
}

// HasRewardRank returns a boolean if a field has been set.
func (o *Award) HasRewardRank() bool {
	if o != nil && o.RewardRank != nil {
		return true
	}

	return false
}

// SetRewardRank gets a reference to the given string and assigns it to the RewardRank field.
func (o *Award) SetRewardRank(v string) {
	o.RewardRank = &v
}

// GetRewardValue returns the RewardValue field value if set, zero value otherwise.
func (o *Award) GetRewardValue() float64 {
	if o == nil || o.RewardValue == nil {
		var ret float64
		return ret
	}
	return *o.RewardValue
}

// GetRewardValueOk returns a tuple with the RewardValue field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetRewardValueOk() (*float64, bool) {
	if o == nil || o.RewardValue == nil {
		return nil, false
	}
	return o.RewardValue, true
}

// HasRewardValue returns a boolean if a field has been set.
func (o *Award) HasRewardValue() bool {
	if o != nil && o.RewardValue != nil {
		return true
	}

	return false
}

// SetRewardValue gets a reference to the given float64 and assigns it to the RewardValue field.
func (o *Award) SetRewardValue(v float64) {
	o.RewardValue = &v
}

// GetDelay returns the Delay field value if set, zero value otherwise.
func (o *Award) GetDelay() int32 {
	if o == nil || o.Delay == nil {
		var ret int32
		return ret
	}
	return *o.Delay
}

// GetDelayOk returns a tuple with the Delay field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetDelayOk() (*int32, bool) {
	if o == nil || o.Delay == nil {
		return nil, false
	}
	return o.Delay, true
}

// HasDelay returns a boolean if a field has been set.
func (o *Award) HasDelay() bool {
	if o != nil && o.Delay != nil {
		return true
	}

	return false
}

// SetDelay gets a reference to the given int32 and assigns it to the Delay field.
func (o *Award) SetDelay(v int32) {
	o.Delay = &v
}

// GetEntityType returns the EntityType field value if set, zero value otherwise.
func (o *Award) GetEntityType() EntityType {
	if o == nil || o.EntityType == nil {
		var ret EntityType
		return ret
	}
	return *o.EntityType
}

// GetEntityTypeOk returns a tuple with the EntityType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetEntityTypeOk() (*EntityType, bool) {
	if o == nil || o.EntityType == nil {
		return nil, false
	}
	return o.EntityType, true
}

// HasEntityType returns a boolean if a field has been set.
func (o *Award) HasEntityType() bool {
	if o != nil && o.EntityType != nil {
		return true
	}

	return false
}

// SetEntityType gets a reference to the given EntityType and assigns it to the EntityType field.
func (o *Award) SetEntityType(v EntityType) {
	o.EntityType = &v
}

// GetEntityId returns the EntityId field value if set, zero value otherwise.
func (o *Award) GetEntityId() string {
	if o == nil || o.EntityId == nil {
		var ret string
		return ret
	}
	return *o.EntityId
}

// GetEntityIdOk returns a tuple with the EntityId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetEntityIdOk() (*string, bool) {
	if o == nil || o.EntityId == nil {
		return nil, false
	}
	return o.EntityId, true
}

// HasEntityId returns a boolean if a field has been set.
func (o *Award) HasEntityId() bool {
	if o != nil && o.EntityId != nil {
		return true
	}

	return false
}

// SetEntityId gets a reference to the given string and assigns it to the EntityId field.
func (o *Award) SetEntityId(v string) {
	o.EntityId = &v
}

// GetPointInTime returns the PointInTime field value if set, zero value otherwise.
func (o *Award) GetPointInTime() time.Time {
	if o == nil || o.PointInTime == nil {
		var ret time.Time
		return ret
	}
	return *o.PointInTime
}

// GetPointInTimeOk returns a tuple with the PointInTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetPointInTimeOk() (*time.Time, bool) {
	if o == nil || o.PointInTime == nil {
		return nil, false
	}
	return o.PointInTime, true
}

// HasPointInTime returns a boolean if a field has been set.
func (o *Award) HasPointInTime() bool {
	if o != nil && o.PointInTime != nil {
		return true
	}

	return false
}

// SetPointInTime gets a reference to the given time.Time and assigns it to the PointInTime field.
func (o *Award) SetPointInTime(v time.Time) {
	o.PointInTime = &v
}

// GetPeriod returns the Period field value if set, zero value otherwise.
func (o *Award) GetPeriod() int32 {
	if o == nil || o.Period == nil {
		var ret int32
		return ret
	}
	return *o.Period
}

// GetPeriodOk returns a tuple with the Period field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetPeriodOk() (*int32, bool) {
	if o == nil || o.Period == nil {
		return nil, false
	}
	return o.Period, true
}

// HasPeriod returns a boolean if a field has been set.
func (o *Award) HasPeriod() bool {
	if o != nil && o.Period != nil {
		return true
	}

	return false
}

// SetPeriod gets a reference to the given int32 and assigns it to the Period field.
func (o *Award) SetPeriod(v int32) {
	o.Period = &v
}

// GetTags returns the Tags field value if set, zero value otherwise.
func (o *Award) GetTags() []string {
	if o == nil || o.Tags == nil {
		var ret []string
		return ret
	}
	return o.Tags
}

// GetTagsOk returns a tuple with the Tags field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetTagsOk() ([]string, bool) {
	if o == nil || o.Tags == nil {
		return nil, false
	}
	return o.Tags, true
}

// HasTags returns a boolean if a field has been set.
func (o *Award) HasTags() bool {
	if o != nil && o.Tags != nil {
		return true
	}

	return false
}

// SetTags gets a reference to the given []string and assigns it to the Tags field.
func (o *Award) SetTags(v []string) {
	o.Tags = v
}

// GetMetadata returns the Metadata field value if set, zero value otherwise.
func (o *Award) GetMetadata() map[string]string {
	if o == nil || o.Metadata == nil {
		var ret map[string]string
		return ret
	}
	return *o.Metadata
}

// GetMetadataOk returns a tuple with the Metadata field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetMetadataOk() (*map[string]string, bool) {
	if o == nil || o.Metadata == nil {
		return nil, false
	}
	return o.Metadata, true
}

// HasMetadata returns a boolean if a field has been set.
func (o *Award) HasMetadata() bool {
	if o != nil && o.Metadata != nil {
		return true
	}

	return false
}

// SetMetadata gets a reference to the given map[string]string and assigns it to the Metadata field.
func (o *Award) SetMetadata(v map[string]string) {
	o.Metadata = &v
}

// GetConstraints returns the Constraints field value if set, zero value otherwise.
func (o *Award) GetConstraints() []string {
	if o == nil || o.Constraints == nil {
		var ret []string
		return ret
	}
	return o.Constraints
}

// GetConstraintsOk returns a tuple with the Constraints field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetConstraintsOk() ([]string, bool) {
	if o == nil || o.Constraints == nil {
		return nil, false
	}
	return o.Constraints, true
}

// HasConstraints returns a boolean if a field has been set.
func (o *Award) HasConstraints() bool {
	if o != nil && o.Constraints != nil {
		return true
	}

	return false
}

// SetConstraints gets a reference to the given []string and assigns it to the Constraints field.
func (o *Award) SetConstraints(v []string) {
	o.Constraints = v
}

// GetClaimedTimestamp returns the ClaimedTimestamp field value if set, zero value otherwise.
func (o *Award) GetClaimedTimestamp() time.Time {
	if o == nil || o.ClaimedTimestamp == nil {
		var ret time.Time
		return ret
	}
	return *o.ClaimedTimestamp
}

// GetClaimedTimestampOk returns a tuple with the ClaimedTimestamp field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetClaimedTimestampOk() (*time.Time, bool) {
	if o == nil || o.ClaimedTimestamp == nil {
		return nil, false
	}
	return o.ClaimedTimestamp, true
}

// HasClaimedTimestamp returns a boolean if a field has been set.
func (o *Award) HasClaimedTimestamp() bool {
	if o != nil && o.ClaimedTimestamp != nil {
		return true
	}

	return false
}

// SetClaimedTimestamp gets a reference to the given time.Time and assigns it to the ClaimedTimestamp field.
func (o *Award) SetClaimedTimestamp(v time.Time) {
	o.ClaimedTimestamp = &v
}

// GetId returns the Id field value
func (o *Award) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *Award) GetIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *Award) SetId(v string) {
	o.Id = v
}

// GetSpaceName returns the SpaceName field value if set, zero value otherwise.
func (o *Award) GetSpaceName() string {
	if o == nil || o.SpaceName == nil {
		var ret string
		return ret
	}
	return *o.SpaceName
}

// GetSpaceNameOk returns a tuple with the SpaceName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetSpaceNameOk() (*string, bool) {
	if o == nil || o.SpaceName == nil {
		return nil, false
	}
	return o.SpaceName, true
}

// HasSpaceName returns a boolean if a field has been set.
func (o *Award) HasSpaceName() bool {
	if o != nil && o.SpaceName != nil {
		return true
	}

	return false
}

// SetSpaceName gets a reference to the given string and assigns it to the SpaceName field.
func (o *Award) SetSpaceName(v string) {
	o.SpaceName = &v
}

// GetCreated returns the Created field value if set, zero value otherwise.
func (o *Award) GetCreated() time.Time {
	if o == nil || o.Created == nil {
		var ret time.Time
		return ret
	}
	return *o.Created
}

// GetCreatedOk returns a tuple with the Created field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Award) GetCreatedOk() (*time.Time, bool) {
	if o == nil || o.Created == nil {
		return nil, false
	}
	return o.Created, true
}

// HasCreated returns a boolean if a field has been set.
func (o *Award) HasCreated() bool {
	if o != nil && o.Created != nil {
		return true
	}

	return false
}

// SetCreated gets a reference to the given time.Time and assigns it to the Created field.
func (o *Award) SetCreated(v time.Time) {
	o.Created = &v
}

func (o Award) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.MemberId != nil {
		toSerialize["memberId"] = o.MemberId
	}
	if o.RewardId != nil {
		toSerialize["rewardId"] = o.RewardId
	}
	if o.RewardType != nil {
		toSerialize["rewardType"] = o.RewardType
	}
	if o.RewardRank != nil {
		toSerialize["rewardRank"] = o.RewardRank
	}
	if o.RewardValue != nil {
		toSerialize["rewardValue"] = o.RewardValue
	}
	if o.Delay != nil {
		toSerialize["delay"] = o.Delay
	}
	if o.EntityType != nil {
		toSerialize["entityType"] = o.EntityType
	}
	if o.EntityId != nil {
		toSerialize["entityId"] = o.EntityId
	}
	if o.PointInTime != nil {
		toSerialize["pointInTime"] = o.PointInTime
	}
	if o.Period != nil {
		toSerialize["period"] = o.Period
	}
	if o.Tags != nil {
		toSerialize["tags"] = o.Tags
	}
	if o.Metadata != nil {
		toSerialize["metadata"] = o.Metadata
	}
	if o.Constraints != nil {
		toSerialize["constraints"] = o.Constraints
	}
	if o.ClaimedTimestamp != nil {
		toSerialize["claimedTimestamp"] = o.ClaimedTimestamp
	}
	if true {
		toSerialize["id"] = o.Id
	}
	if o.SpaceName != nil {
		toSerialize["spaceName"] = o.SpaceName
	}
	if o.Created != nil {
		toSerialize["created"] = o.Created
	}
	return json.Marshal(toSerialize)
}

type NullableAward struct {
	value *Award
	isSet bool
}

func (v NullableAward) Get() *Award {
	return v.value
}

func (v *NullableAward) Set(val *Award) {
	v.value = val
	v.isSet = true
}

func (v NullableAward) IsSet() bool {
	return v.isSet
}

func (v *NullableAward) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAward(val *Award) *NullableAward {
	return &NullableAward{value: val, isSet: true}
}

func (v NullableAward) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAward) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


