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

// RewardTypeReduced 
type RewardTypeReduced struct {
	// A unique key that represents the reward type
	Key *string `json:"key,omitempty"`
}

// NewRewardTypeReduced instantiates a new RewardTypeReduced object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRewardTypeReduced() *RewardTypeReduced {
	this := RewardTypeReduced{}
	return &this
}

// NewRewardTypeReducedWithDefaults instantiates a new RewardTypeReduced object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRewardTypeReducedWithDefaults() *RewardTypeReduced {
	this := RewardTypeReduced{}
	return &this
}

// GetKey returns the Key field value if set, zero value otherwise.
func (o *RewardTypeReduced) GetKey() string {
	if o == nil || o.Key == nil {
		var ret string
		return ret
	}
	return *o.Key
}

// GetKeyOk returns a tuple with the Key field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RewardTypeReduced) GetKeyOk() (*string, bool) {
	if o == nil || o.Key == nil {
		return nil, false
	}
	return o.Key, true
}

// HasKey returns a boolean if a field has been set.
func (o *RewardTypeReduced) HasKey() bool {
	if o != nil && o.Key != nil {
		return true
	}

	return false
}

// SetKey gets a reference to the given string and assigns it to the Key field.
func (o *RewardTypeReduced) SetKey(v string) {
	o.Key = &v
}

func (o RewardTypeReduced) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Key != nil {
		toSerialize["key"] = o.Key
	}
	return json.Marshal(toSerialize)
}

type NullableRewardTypeReduced struct {
	value *RewardTypeReduced
	isSet bool
}

func (v NullableRewardTypeReduced) Get() *RewardTypeReduced {
	return v.value
}

func (v *NullableRewardTypeReduced) Set(val *RewardTypeReduced) {
	v.value = val
	v.isSet = true
}

func (v NullableRewardTypeReduced) IsSet() bool {
	return v.isSet
}

func (v *NullableRewardTypeReduced) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRewardTypeReduced(val *RewardTypeReduced) *NullableRewardTypeReduced {
	return &NullableRewardTypeReduced{value: val, isSet: true}
}

func (v NullableRewardTypeReduced) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRewardTypeReduced) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


