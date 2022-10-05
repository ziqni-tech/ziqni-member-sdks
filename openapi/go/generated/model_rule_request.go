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

// RuleRequest 
type RuleRequest struct {
	// 
	EntityIds []string `json:"entityIds"`
}

// NewRuleRequest instantiates a new RuleRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRuleRequest(entityIds []string) *RuleRequest {
	this := RuleRequest{}
	this.EntityIds = entityIds
	return &this
}

// NewRuleRequestWithDefaults instantiates a new RuleRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRuleRequestWithDefaults() *RuleRequest {
	this := RuleRequest{}
	return &this
}

// GetEntityIds returns the EntityIds field value
func (o *RuleRequest) GetEntityIds() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.EntityIds
}

// GetEntityIdsOk returns a tuple with the EntityIds field value
// and a boolean to check if the value has been set.
func (o *RuleRequest) GetEntityIdsOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.EntityIds, true
}

// SetEntityIds sets field value
func (o *RuleRequest) SetEntityIds(v []string) {
	o.EntityIds = v
}

func (o RuleRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["entityIds"] = o.EntityIds
	}
	return json.Marshal(toSerialize)
}

type NullableRuleRequest struct {
	value *RuleRequest
	isSet bool
}

func (v NullableRuleRequest) Get() *RuleRequest {
	return v.value
}

func (v *NullableRuleRequest) Set(val *RuleRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableRuleRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableRuleRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRuleRequest(val *RuleRequest) *NullableRuleRequest {
	return &NullableRuleRequest{value: val, isSet: true}
}

func (v NullableRuleRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRuleRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

