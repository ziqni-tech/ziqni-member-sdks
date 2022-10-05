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

// MemberRequest 
type MemberRequest struct {
	// ALL, or else the name of the top level fields you want to include
	IncludeFields []string `json:"includeFields,omitempty"`
	// Only include custom fields that have these keys
	IncludeCustomFields []string `json:"includeCustomFields"`
	// Only include metadata that have these keys
	IncludeMetaDataFields []string `json:"includeMetaDataFields,omitempty"`
}

// NewMemberRequest instantiates a new MemberRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMemberRequest(includeCustomFields []string) *MemberRequest {
	this := MemberRequest{}
	this.IncludeCustomFields = includeCustomFields
	return &this
}

// NewMemberRequestWithDefaults instantiates a new MemberRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMemberRequestWithDefaults() *MemberRequest {
	this := MemberRequest{}
	return &this
}

// GetIncludeFields returns the IncludeFields field value if set, zero value otherwise.
func (o *MemberRequest) GetIncludeFields() []string {
	if o == nil || o.IncludeFields == nil {
		var ret []string
		return ret
	}
	return o.IncludeFields
}

// GetIncludeFieldsOk returns a tuple with the IncludeFields field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MemberRequest) GetIncludeFieldsOk() ([]string, bool) {
	if o == nil || o.IncludeFields == nil {
		return nil, false
	}
	return o.IncludeFields, true
}

// HasIncludeFields returns a boolean if a field has been set.
func (o *MemberRequest) HasIncludeFields() bool {
	if o != nil && o.IncludeFields != nil {
		return true
	}

	return false
}

// SetIncludeFields gets a reference to the given []string and assigns it to the IncludeFields field.
func (o *MemberRequest) SetIncludeFields(v []string) {
	o.IncludeFields = v
}

// GetIncludeCustomFields returns the IncludeCustomFields field value
func (o *MemberRequest) GetIncludeCustomFields() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.IncludeCustomFields
}

// GetIncludeCustomFieldsOk returns a tuple with the IncludeCustomFields field value
// and a boolean to check if the value has been set.
func (o *MemberRequest) GetIncludeCustomFieldsOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.IncludeCustomFields, true
}

// SetIncludeCustomFields sets field value
func (o *MemberRequest) SetIncludeCustomFields(v []string) {
	o.IncludeCustomFields = v
}

// GetIncludeMetaDataFields returns the IncludeMetaDataFields field value if set, zero value otherwise.
func (o *MemberRequest) GetIncludeMetaDataFields() []string {
	if o == nil || o.IncludeMetaDataFields == nil {
		var ret []string
		return ret
	}
	return o.IncludeMetaDataFields
}

// GetIncludeMetaDataFieldsOk returns a tuple with the IncludeMetaDataFields field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MemberRequest) GetIncludeMetaDataFieldsOk() ([]string, bool) {
	if o == nil || o.IncludeMetaDataFields == nil {
		return nil, false
	}
	return o.IncludeMetaDataFields, true
}

// HasIncludeMetaDataFields returns a boolean if a field has been set.
func (o *MemberRequest) HasIncludeMetaDataFields() bool {
	if o != nil && o.IncludeMetaDataFields != nil {
		return true
	}

	return false
}

// SetIncludeMetaDataFields gets a reference to the given []string and assigns it to the IncludeMetaDataFields field.
func (o *MemberRequest) SetIncludeMetaDataFields(v []string) {
	o.IncludeMetaDataFields = v
}

func (o MemberRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.IncludeFields != nil {
		toSerialize["includeFields"] = o.IncludeFields
	}
	if true {
		toSerialize["includeCustomFields"] = o.IncludeCustomFields
	}
	if o.IncludeMetaDataFields != nil {
		toSerialize["includeMetaDataFields"] = o.IncludeMetaDataFields
	}
	return json.Marshal(toSerialize)
}

type NullableMemberRequest struct {
	value *MemberRequest
	isSet bool
}

func (v NullableMemberRequest) Get() *MemberRequest {
	return v.value
}

func (v *NullableMemberRequest) Set(val *MemberRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableMemberRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableMemberRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMemberRequest(val *MemberRequest) *NullableMemberRequest {
	return &NullableMemberRequest{value: val, isSet: true}
}

func (v NullableMemberRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMemberRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


