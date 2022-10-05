/*
ZIQNI Member API

The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.

API version: 1.0.0
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"fmt"
)

// OptinAction 
type OptinAction string

// List of OptinAction
const (
	IN OptinAction = "opt-in"
	OUT OptinAction = "opt-out"
)

// All allowed values of OptinAction enum
var AllowedOptinActionEnumValues = []OptinAction{
	"opt-in",
	"opt-out",
}

func (v *OptinAction) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := OptinAction(value)
	for _, existing := range AllowedOptinActionEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid OptinAction", value)
}

// NewOptinActionFromValue returns a pointer to a valid OptinAction
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewOptinActionFromValue(v string) (*OptinAction, error) {
	ev := OptinAction(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for OptinAction: valid values are %v", v, AllowedOptinActionEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v OptinAction) IsValid() bool {
	for _, existing := range AllowedOptinActionEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to OptinAction value
func (v OptinAction) Ptr() *OptinAction {
	return &v
}

type NullableOptinAction struct {
	value *OptinAction
	isSet bool
}

func (v NullableOptinAction) Get() *OptinAction {
	return v.value
}

func (v *NullableOptinAction) Set(val *OptinAction) {
	v.value = val
	v.isSet = true
}

func (v NullableOptinAction) IsSet() bool {
	return v.isSet
}

func (v *NullableOptinAction) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOptinAction(val *OptinAction) *NullableOptinAction {
	return &NullableOptinAction{value: val, isSet: true}
}

func (v NullableOptinAction) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOptinAction) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
