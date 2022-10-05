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

// ClaimAwardRequest 
type ClaimAwardRequest struct {
	// The language codes can be found in the settings/transalations section of the back office
	LanguageKey *string `json:"languageKey,omitempty"`
	// 
	AwardIds []string `json:"awardIds,omitempty"`
}

// NewClaimAwardRequest instantiates a new ClaimAwardRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewClaimAwardRequest() *ClaimAwardRequest {
	this := ClaimAwardRequest{}
	return &this
}

// NewClaimAwardRequestWithDefaults instantiates a new ClaimAwardRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewClaimAwardRequestWithDefaults() *ClaimAwardRequest {
	this := ClaimAwardRequest{}
	return &this
}

// GetLanguageKey returns the LanguageKey field value if set, zero value otherwise.
func (o *ClaimAwardRequest) GetLanguageKey() string {
	if o == nil || o.LanguageKey == nil {
		var ret string
		return ret
	}
	return *o.LanguageKey
}

// GetLanguageKeyOk returns a tuple with the LanguageKey field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ClaimAwardRequest) GetLanguageKeyOk() (*string, bool) {
	if o == nil || o.LanguageKey == nil {
		return nil, false
	}
	return o.LanguageKey, true
}

// HasLanguageKey returns a boolean if a field has been set.
func (o *ClaimAwardRequest) HasLanguageKey() bool {
	if o != nil && o.LanguageKey != nil {
		return true
	}

	return false
}

// SetLanguageKey gets a reference to the given string and assigns it to the LanguageKey field.
func (o *ClaimAwardRequest) SetLanguageKey(v string) {
	o.LanguageKey = &v
}

// GetAwardIds returns the AwardIds field value if set, zero value otherwise.
func (o *ClaimAwardRequest) GetAwardIds() []string {
	if o == nil || o.AwardIds == nil {
		var ret []string
		return ret
	}
	return o.AwardIds
}

// GetAwardIdsOk returns a tuple with the AwardIds field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ClaimAwardRequest) GetAwardIdsOk() ([]string, bool) {
	if o == nil || o.AwardIds == nil {
		return nil, false
	}
	return o.AwardIds, true
}

// HasAwardIds returns a boolean if a field has been set.
func (o *ClaimAwardRequest) HasAwardIds() bool {
	if o != nil && o.AwardIds != nil {
		return true
	}

	return false
}

// SetAwardIds gets a reference to the given []string and assigns it to the AwardIds field.
func (o *ClaimAwardRequest) SetAwardIds(v []string) {
	o.AwardIds = v
}

func (o ClaimAwardRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.LanguageKey != nil {
		toSerialize["languageKey"] = o.LanguageKey
	}
	if o.AwardIds != nil {
		toSerialize["awardIds"] = o.AwardIds
	}
	return json.Marshal(toSerialize)
}

type NullableClaimAwardRequest struct {
	value *ClaimAwardRequest
	isSet bool
}

func (v NullableClaimAwardRequest) Get() *ClaimAwardRequest {
	return v.value
}

func (v *NullableClaimAwardRequest) Set(val *ClaimAwardRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableClaimAwardRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableClaimAwardRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableClaimAwardRequest(val *ClaimAwardRequest) *NullableClaimAwardRequest {
	return &NullableClaimAwardRequest{value: val, isSet: true}
}

func (v NullableClaimAwardRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableClaimAwardRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

