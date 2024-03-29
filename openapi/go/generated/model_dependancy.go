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

// Dependancy struct for Dependancy
type Dependancy struct {
	// A model that will have dependancies implemented
	EntityType *string `json:"entityType,omitempty"`
	DependantOn *DependantOn `json:"dependantOn,omitempty"`
}

// NewDependancy instantiates a new Dependancy object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDependancy() *Dependancy {
	this := Dependancy{}
	return &this
}

// NewDependancyWithDefaults instantiates a new Dependancy object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDependancyWithDefaults() *Dependancy {
	this := Dependancy{}
	return &this
}

// GetEntityType returns the EntityType field value if set, zero value otherwise.
func (o *Dependancy) GetEntityType() string {
	if o == nil || o.EntityType == nil {
		var ret string
		return ret
	}
	return *o.EntityType
}

// GetEntityTypeOk returns a tuple with the EntityType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Dependancy) GetEntityTypeOk() (*string, bool) {
	if o == nil || o.EntityType == nil {
		return nil, false
	}
	return o.EntityType, true
}

// HasEntityType returns a boolean if a field has been set.
func (o *Dependancy) HasEntityType() bool {
	if o != nil && o.EntityType != nil {
		return true
	}

	return false
}

// SetEntityType gets a reference to the given string and assigns it to the EntityType field.
func (o *Dependancy) SetEntityType(v string) {
	o.EntityType = &v
}

// GetDependantOn returns the DependantOn field value if set, zero value otherwise.
func (o *Dependancy) GetDependantOn() DependantOn {
	if o == nil || o.DependantOn == nil {
		var ret DependantOn
		return ret
	}
	return *o.DependantOn
}

// GetDependantOnOk returns a tuple with the DependantOn field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Dependancy) GetDependantOnOk() (*DependantOn, bool) {
	if o == nil || o.DependantOn == nil {
		return nil, false
	}
	return o.DependantOn, true
}

// HasDependantOn returns a boolean if a field has been set.
func (o *Dependancy) HasDependantOn() bool {
	if o != nil && o.DependantOn != nil {
		return true
	}

	return false
}

// SetDependantOn gets a reference to the given DependantOn and assigns it to the DependantOn field.
func (o *Dependancy) SetDependantOn(v DependantOn) {
	o.DependantOn = &v
}

func (o Dependancy) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.EntityType != nil {
		toSerialize["entityType"] = o.EntityType
	}
	if o.DependantOn != nil {
		toSerialize["dependantOn"] = o.DependantOn
	}
	return json.Marshal(toSerialize)
}

type NullableDependancy struct {
	value *Dependancy
	isSet bool
}

func (v NullableDependancy) Get() *Dependancy {
	return v.value
}

func (v *NullableDependancy) Set(val *Dependancy) {
	v.value = val
	v.isSet = true
}

func (v NullableDependancy) IsSet() bool {
	return v.isSet
}

func (v *NullableDependancy) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDependancy(val *Dependancy) *NullableDependancy {
	return &NullableDependancy{value: val, isSet: true}
}

func (v NullableDependancy) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDependancy) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


