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

// QueryMultipleFields 
type QueryMultipleFields struct {
	// Multiple fields to be included in search for the given value.
	QueryFields []string `json:"queryFields,omitempty"`
	// The value to search for across given fields.
	QueryValue *string `json:"queryValue,omitempty"`
}

// NewQueryMultipleFields instantiates a new QueryMultipleFields object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewQueryMultipleFields() *QueryMultipleFields {
	this := QueryMultipleFields{}
	return &this
}

// NewQueryMultipleFieldsWithDefaults instantiates a new QueryMultipleFields object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewQueryMultipleFieldsWithDefaults() *QueryMultipleFields {
	this := QueryMultipleFields{}
	return &this
}

// GetQueryFields returns the QueryFields field value if set, zero value otherwise.
func (o *QueryMultipleFields) GetQueryFields() []string {
	if o == nil || o.QueryFields == nil {
		var ret []string
		return ret
	}
	return o.QueryFields
}

// GetQueryFieldsOk returns a tuple with the QueryFields field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueryMultipleFields) GetQueryFieldsOk() ([]string, bool) {
	if o == nil || o.QueryFields == nil {
		return nil, false
	}
	return o.QueryFields, true
}

// HasQueryFields returns a boolean if a field has been set.
func (o *QueryMultipleFields) HasQueryFields() bool {
	if o != nil && o.QueryFields != nil {
		return true
	}

	return false
}

// SetQueryFields gets a reference to the given []string and assigns it to the QueryFields field.
func (o *QueryMultipleFields) SetQueryFields(v []string) {
	o.QueryFields = v
}

// GetQueryValue returns the QueryValue field value if set, zero value otherwise.
func (o *QueryMultipleFields) GetQueryValue() string {
	if o == nil || o.QueryValue == nil {
		var ret string
		return ret
	}
	return *o.QueryValue
}

// GetQueryValueOk returns a tuple with the QueryValue field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueryMultipleFields) GetQueryValueOk() (*string, bool) {
	if o == nil || o.QueryValue == nil {
		return nil, false
	}
	return o.QueryValue, true
}

// HasQueryValue returns a boolean if a field has been set.
func (o *QueryMultipleFields) HasQueryValue() bool {
	if o != nil && o.QueryValue != nil {
		return true
	}

	return false
}

// SetQueryValue gets a reference to the given string and assigns it to the QueryValue field.
func (o *QueryMultipleFields) SetQueryValue(v string) {
	o.QueryValue = &v
}

func (o QueryMultipleFields) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.QueryFields != nil {
		toSerialize["queryFields"] = o.QueryFields
	}
	if o.QueryValue != nil {
		toSerialize["queryValue"] = o.QueryValue
	}
	return json.Marshal(toSerialize)
}

type NullableQueryMultipleFields struct {
	value *QueryMultipleFields
	isSet bool
}

func (v NullableQueryMultipleFields) Get() *QueryMultipleFields {
	return v.value
}

func (v *NullableQueryMultipleFields) Set(val *QueryMultipleFields) {
	v.value = val
	v.isSet = true
}

func (v NullableQueryMultipleFields) IsSet() bool {
	return v.isSet
}

func (v *NullableQueryMultipleFields) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableQueryMultipleFields(val *QueryMultipleFields) *NullableQueryMultipleFields {
	return &NullableQueryMultipleFields{value: val, isSet: true}
}

func (v NullableQueryMultipleFields) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableQueryMultipleFields) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

