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

// ProxyRequest 
type ProxyRequest struct {
	// 
	Id *string `json:"id,omitempty"`
}

// NewProxyRequest instantiates a new ProxyRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewProxyRequest() *ProxyRequest {
	this := ProxyRequest{}
	return &this
}

// NewProxyRequestWithDefaults instantiates a new ProxyRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewProxyRequestWithDefaults() *ProxyRequest {
	this := ProxyRequest{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *ProxyRequest) GetId() string {
	if o == nil || o.Id == nil {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ProxyRequest) GetIdOk() (*string, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *ProxyRequest) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *ProxyRequest) SetId(v string) {
	o.Id = &v
}

func (o ProxyRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	return json.Marshal(toSerialize)
}

type NullableProxyRequest struct {
	value *ProxyRequest
	isSet bool
}

func (v NullableProxyRequest) Get() *ProxyRequest {
	return v.value
}

func (v *NullableProxyRequest) Set(val *ProxyRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableProxyRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableProxyRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableProxyRequest(val *ProxyRequest) *NullableProxyRequest {
	return &NullableProxyRequest{value: val, isSet: true}
}

func (v NullableProxyRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableProxyRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


