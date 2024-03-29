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

// AwardRequest 
type AwardRequest struct {
	AwardFilter *AwardFilter `json:"awardFilter,omitempty"`
	// The language codes can be found in the settings/transalations section of the back office
	LanguageKey *string `json:"languageKey,omitempty"`
}

// NewAwardRequest instantiates a new AwardRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAwardRequest() *AwardRequest {
	this := AwardRequest{}
	return &this
}

// NewAwardRequestWithDefaults instantiates a new AwardRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAwardRequestWithDefaults() *AwardRequest {
	this := AwardRequest{}
	return &this
}

// GetAwardFilter returns the AwardFilter field value if set, zero value otherwise.
func (o *AwardRequest) GetAwardFilter() AwardFilter {
	if o == nil || o.AwardFilter == nil {
		var ret AwardFilter
		return ret
	}
	return *o.AwardFilter
}

// GetAwardFilterOk returns a tuple with the AwardFilter field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AwardRequest) GetAwardFilterOk() (*AwardFilter, bool) {
	if o == nil || o.AwardFilter == nil {
		return nil, false
	}
	return o.AwardFilter, true
}

// HasAwardFilter returns a boolean if a field has been set.
func (o *AwardRequest) HasAwardFilter() bool {
	if o != nil && o.AwardFilter != nil {
		return true
	}

	return false
}

// SetAwardFilter gets a reference to the given AwardFilter and assigns it to the AwardFilter field.
func (o *AwardRequest) SetAwardFilter(v AwardFilter) {
	o.AwardFilter = &v
}

// GetLanguageKey returns the LanguageKey field value if set, zero value otherwise.
func (o *AwardRequest) GetLanguageKey() string {
	if o == nil || o.LanguageKey == nil {
		var ret string
		return ret
	}
	return *o.LanguageKey
}

// GetLanguageKeyOk returns a tuple with the LanguageKey field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AwardRequest) GetLanguageKeyOk() (*string, bool) {
	if o == nil || o.LanguageKey == nil {
		return nil, false
	}
	return o.LanguageKey, true
}

// HasLanguageKey returns a boolean if a field has been set.
func (o *AwardRequest) HasLanguageKey() bool {
	if o != nil && o.LanguageKey != nil {
		return true
	}

	return false
}

// SetLanguageKey gets a reference to the given string and assigns it to the LanguageKey field.
func (o *AwardRequest) SetLanguageKey(v string) {
	o.LanguageKey = &v
}

func (o AwardRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.AwardFilter != nil {
		toSerialize["awardFilter"] = o.AwardFilter
	}
	if o.LanguageKey != nil {
		toSerialize["languageKey"] = o.LanguageKey
	}
	return json.Marshal(toSerialize)
}

type NullableAwardRequest struct {
	value *AwardRequest
	isSet bool
}

func (v NullableAwardRequest) Get() *AwardRequest {
	return v.value
}

func (v *NullableAwardRequest) Set(val *AwardRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableAwardRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableAwardRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAwardRequest(val *AwardRequest) *NullableAwardRequest {
	return &NullableAwardRequest{value: val, isSet: true}
}

func (v NullableAwardRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAwardRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


