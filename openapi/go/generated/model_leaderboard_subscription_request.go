/*
ZIQNI Member API

The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.

API version: 1.0.0
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// LeaderboardSubscriptionRequest 
type LeaderboardSubscriptionRequest struct {
	LeaderboardFilter *LeaderboardFilter `json:"leaderboardFilter,omitempty"`
	// Either the competition, contest, tournament or match identifier
	EntityId string `json:"entityId"`
	// Either subscribe or unsubscribe from the data feed
	Action string `json:"action"`
}

// NewLeaderboardSubscriptionRequest instantiates a new LeaderboardSubscriptionRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewLeaderboardSubscriptionRequest(entityId string, action string) *LeaderboardSubscriptionRequest {
	this := LeaderboardSubscriptionRequest{}
	this.EntityId = entityId
	this.Action = action
	return &this
}

// NewLeaderboardSubscriptionRequestWithDefaults instantiates a new LeaderboardSubscriptionRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewLeaderboardSubscriptionRequestWithDefaults() *LeaderboardSubscriptionRequest {
	this := LeaderboardSubscriptionRequest{}
	return &this
}

// GetLeaderboardFilter returns the LeaderboardFilter field value if set, zero value otherwise.
func (o *LeaderboardSubscriptionRequest) GetLeaderboardFilter() LeaderboardFilter {
	if o == nil || o.LeaderboardFilter == nil {
		var ret LeaderboardFilter
		return ret
	}
	return *o.LeaderboardFilter
}

// GetLeaderboardFilterOk returns a tuple with the LeaderboardFilter field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LeaderboardSubscriptionRequest) GetLeaderboardFilterOk() (*LeaderboardFilter, bool) {
	if o == nil || o.LeaderboardFilter == nil {
		return nil, false
	}
	return o.LeaderboardFilter, true
}

// HasLeaderboardFilter returns a boolean if a field has been set.
func (o *LeaderboardSubscriptionRequest) HasLeaderboardFilter() bool {
	if o != nil && o.LeaderboardFilter != nil {
		return true
	}

	return false
}

// SetLeaderboardFilter gets a reference to the given LeaderboardFilter and assigns it to the LeaderboardFilter field.
func (o *LeaderboardSubscriptionRequest) SetLeaderboardFilter(v LeaderboardFilter) {
	o.LeaderboardFilter = &v
}

// GetEntityId returns the EntityId field value
func (o *LeaderboardSubscriptionRequest) GetEntityId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.EntityId
}

// GetEntityIdOk returns a tuple with the EntityId field value
// and a boolean to check if the value has been set.
func (o *LeaderboardSubscriptionRequest) GetEntityIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.EntityId, true
}

// SetEntityId sets field value
func (o *LeaderboardSubscriptionRequest) SetEntityId(v string) {
	o.EntityId = v
}

// GetAction returns the Action field value
func (o *LeaderboardSubscriptionRequest) GetAction() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Action
}

// GetActionOk returns a tuple with the Action field value
// and a boolean to check if the value has been set.
func (o *LeaderboardSubscriptionRequest) GetActionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Action, true
}

// SetAction sets field value
func (o *LeaderboardSubscriptionRequest) SetAction(v string) {
	o.Action = v
}

func (o LeaderboardSubscriptionRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.LeaderboardFilter != nil {
		toSerialize["leaderboardFilter"] = o.LeaderboardFilter
	}
	if true {
		toSerialize["entityId"] = o.EntityId
	}
	if true {
		toSerialize["action"] = o.Action
	}
	return json.Marshal(toSerialize)
}

type NullableLeaderboardSubscriptionRequest struct {
	value *LeaderboardSubscriptionRequest
	isSet bool
}

func (v NullableLeaderboardSubscriptionRequest) Get() *LeaderboardSubscriptionRequest {
	return v.value
}

func (v *NullableLeaderboardSubscriptionRequest) Set(val *LeaderboardSubscriptionRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableLeaderboardSubscriptionRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableLeaderboardSubscriptionRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableLeaderboardSubscriptionRequest(val *LeaderboardSubscriptionRequest) *NullableLeaderboardSubscriptionRequest {
	return &NullableLeaderboardSubscriptionRequest{value: val, isSet: true}
}

func (v NullableLeaderboardSubscriptionRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableLeaderboardSubscriptionRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


