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

// CompetitionType 
type CompetitionType string

// List of CompetitionType
const (
	LEADERBOARD CompetitionType = "Leaderboard"
)

// All allowed values of CompetitionType enum
var AllowedCompetitionTypeEnumValues = []CompetitionType{
	"Leaderboard",
}

func (v *CompetitionType) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := CompetitionType(value)
	for _, existing := range AllowedCompetitionTypeEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid CompetitionType", value)
}

// NewCompetitionTypeFromValue returns a pointer to a valid CompetitionType
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewCompetitionTypeFromValue(v string) (*CompetitionType, error) {
	ev := CompetitionType(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for CompetitionType: valid values are %v", v, AllowedCompetitionTypeEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v CompetitionType) IsValid() bool {
	for _, existing := range AllowedCompetitionTypeEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to CompetitionType value
func (v CompetitionType) Ptr() *CompetitionType {
	return &v
}

type NullableCompetitionType struct {
	value *CompetitionType
	isSet bool
}

func (v NullableCompetitionType) Get() *CompetitionType {
	return v.value
}

func (v *NullableCompetitionType) Set(val *CompetitionType) {
	v.value = val
	v.isSet = true
}

func (v NullableCompetitionType) IsSet() bool {
	return v.isSet
}

func (v *NullableCompetitionType) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCompetitionType(val *CompetitionType) *NullableCompetitionType {
	return &NullableCompetitionType{value: val, isSet: true}
}

func (v NullableCompetitionType) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCompetitionType) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

