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

// MessageStatus The status of the message
type MessageStatus string

// List of MessageStatus
const (
	NEW MessageStatus = "New"
	READ MessageStatus = "Read"
	COLLABORATION_REQUEST MessageStatus = "CollaborationRequest"
	ACTIONED MessageStatus = "Actioned"
	CLAIMED MessageStatus = "Claimed"
	EXPIRED MessageStatus = "Expired"
	CANCELED MessageStatus = "Canceled"
	DEPRECATED MessageStatus = "Deprecated"
)

// All allowed values of MessageStatus enum
var AllowedMessageStatusEnumValues = []MessageStatus{
	"New",
	"Read",
	"CollaborationRequest",
	"Actioned",
	"Claimed",
	"Expired",
	"Canceled",
	"Deprecated",
}

func (v *MessageStatus) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := MessageStatus(value)
	for _, existing := range AllowedMessageStatusEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid MessageStatus", value)
}

// NewMessageStatusFromValue returns a pointer to a valid MessageStatus
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewMessageStatusFromValue(v string) (*MessageStatus, error) {
	ev := MessageStatus(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for MessageStatus: valid values are %v", v, AllowedMessageStatusEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v MessageStatus) IsValid() bool {
	for _, existing := range AllowedMessageStatusEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to MessageStatus value
func (v MessageStatus) Ptr() *MessageStatus {
	return &v
}

type NullableMessageStatus struct {
	value *MessageStatus
	isSet bool
}

func (v NullableMessageStatus) Get() *MessageStatus {
	return v.value
}

func (v *NullableMessageStatus) Set(val *MessageStatus) {
	v.value = val
	v.isSet = true
}

func (v NullableMessageStatus) IsSet() bool {
	return v.isSet
}

func (v *NullableMessageStatus) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMessageStatus(val *MessageStatus) *NullableMessageStatus {
	return &NullableMessageStatus{value: val, isSet: true}
}

func (v NullableMessageStatus) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMessageStatus) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
