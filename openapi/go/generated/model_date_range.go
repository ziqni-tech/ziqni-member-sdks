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

// DateRange 
type DateRange struct {
	// 
	Before *time.Time `json:"before,omitempty"`
	// 
	After *time.Time `json:"after,omitempty"`
}

// NewDateRange instantiates a new DateRange object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDateRange() *DateRange {
	this := DateRange{}
	return &this
}

// NewDateRangeWithDefaults instantiates a new DateRange object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDateRangeWithDefaults() *DateRange {
	this := DateRange{}
	return &this
}

// GetBefore returns the Before field value if set, zero value otherwise.
func (o *DateRange) GetBefore() time.Time {
	if o == nil || o.Before == nil {
		var ret time.Time
		return ret
	}
	return *o.Before
}

// GetBeforeOk returns a tuple with the Before field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DateRange) GetBeforeOk() (*time.Time, bool) {
	if o == nil || o.Before == nil {
		return nil, false
	}
	return o.Before, true
}

// HasBefore returns a boolean if a field has been set.
func (o *DateRange) HasBefore() bool {
	if o != nil && o.Before != nil {
		return true
	}

	return false
}

// SetBefore gets a reference to the given time.Time and assigns it to the Before field.
func (o *DateRange) SetBefore(v time.Time) {
	o.Before = &v
}

// GetAfter returns the After field value if set, zero value otherwise.
func (o *DateRange) GetAfter() time.Time {
	if o == nil || o.After == nil {
		var ret time.Time
		return ret
	}
	return *o.After
}

// GetAfterOk returns a tuple with the After field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DateRange) GetAfterOk() (*time.Time, bool) {
	if o == nil || o.After == nil {
		return nil, false
	}
	return o.After, true
}

// HasAfter returns a boolean if a field has been set.
func (o *DateRange) HasAfter() bool {
	if o != nil && o.After != nil {
		return true
	}

	return false
}

// SetAfter gets a reference to the given time.Time and assigns it to the After field.
func (o *DateRange) SetAfter(v time.Time) {
	o.After = &v
}

func (o DateRange) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Before != nil {
		toSerialize["before"] = o.Before
	}
	if o.After != nil {
		toSerialize["after"] = o.After
	}
	return json.Marshal(toSerialize)
}

type NullableDateRange struct {
	value *DateRange
	isSet bool
}

func (v NullableDateRange) Get() *DateRange {
	return v.value
}

func (v *NullableDateRange) Set(val *DateRange) {
	v.value = val
	v.isSet = true
}

func (v NullableDateRange) IsSet() bool {
	return v.isSet
}

func (v *NullableDateRange) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDateRange(val *DateRange) *NullableDateRange {
	return &NullableDateRange{value: val, isSet: true}
}

func (v NullableDateRange) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDateRange) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


