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

// MemberResponse         
type MemberResponse struct {
	Meta *ResponseMeta `json:"meta,omitempty"`
	Data *Member `json:"data,omitempty"`
	// 
	Errors []Error `json:"errors,omitempty"`
}

// NewMemberResponse instantiates a new MemberResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMemberResponse() *MemberResponse {
	this := MemberResponse{}
	return &this
}

// NewMemberResponseWithDefaults instantiates a new MemberResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMemberResponseWithDefaults() *MemberResponse {
	this := MemberResponse{}
	return &this
}

// GetMeta returns the Meta field value if set, zero value otherwise.
func (o *MemberResponse) GetMeta() ResponseMeta {
	if o == nil || o.Meta == nil {
		var ret ResponseMeta
		return ret
	}
	return *o.Meta
}

// GetMetaOk returns a tuple with the Meta field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MemberResponse) GetMetaOk() (*ResponseMeta, bool) {
	if o == nil || o.Meta == nil {
		return nil, false
	}
	return o.Meta, true
}

// HasMeta returns a boolean if a field has been set.
func (o *MemberResponse) HasMeta() bool {
	if o != nil && o.Meta != nil {
		return true
	}

	return false
}

// SetMeta gets a reference to the given ResponseMeta and assigns it to the Meta field.
func (o *MemberResponse) SetMeta(v ResponseMeta) {
	o.Meta = &v
}

// GetData returns the Data field value if set, zero value otherwise.
func (o *MemberResponse) GetData() Member {
	if o == nil || o.Data == nil {
		var ret Member
		return ret
	}
	return *o.Data
}

// GetDataOk returns a tuple with the Data field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MemberResponse) GetDataOk() (*Member, bool) {
	if o == nil || o.Data == nil {
		return nil, false
	}
	return o.Data, true
}

// HasData returns a boolean if a field has been set.
func (o *MemberResponse) HasData() bool {
	if o != nil && o.Data != nil {
		return true
	}

	return false
}

// SetData gets a reference to the given Member and assigns it to the Data field.
func (o *MemberResponse) SetData(v Member) {
	o.Data = &v
}

// GetErrors returns the Errors field value if set, zero value otherwise.
func (o *MemberResponse) GetErrors() []Error {
	if o == nil || o.Errors == nil {
		var ret []Error
		return ret
	}
	return o.Errors
}

// GetErrorsOk returns a tuple with the Errors field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MemberResponse) GetErrorsOk() ([]Error, bool) {
	if o == nil || o.Errors == nil {
		return nil, false
	}
	return o.Errors, true
}

// HasErrors returns a boolean if a field has been set.
func (o *MemberResponse) HasErrors() bool {
	if o != nil && o.Errors != nil {
		return true
	}

	return false
}

// SetErrors gets a reference to the given []Error and assigns it to the Errors field.
func (o *MemberResponse) SetErrors(v []Error) {
	o.Errors = v
}

func (o MemberResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Meta != nil {
		toSerialize["meta"] = o.Meta
	}
	if o.Data != nil {
		toSerialize["data"] = o.Data
	}
	if o.Errors != nil {
		toSerialize["errors"] = o.Errors
	}
	return json.Marshal(toSerialize)
}

type NullableMemberResponse struct {
	value *MemberResponse
	isSet bool
}

func (v NullableMemberResponse) Get() *MemberResponse {
	return v.value
}

func (v *NullableMemberResponse) Set(val *MemberResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableMemberResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableMemberResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMemberResponse(val *MemberResponse) *NullableMemberResponse {
	return &NullableMemberResponse{value: val, isSet: true}
}

func (v NullableMemberResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMemberResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


