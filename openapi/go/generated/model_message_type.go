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

// MessageType The type of message of the member
type MessageType string

// List of MessageType
const (
	ACHIEVEMENT MessageType = "Achievement"
	TICKET MessageType = "Ticket"
	REWARD MessageType = "Reward"
	TEXT MessageType = "Text"
	NOTIFICATION MessageType = "Notification"
	INBOX_ITEM MessageType = "InboxItem"
	NOTIFICATION_INBOX_ITEM MessageType = "NotificationInboxItem"
)

// All allowed values of MessageType enum
var AllowedMessageTypeEnumValues = []MessageType{
	"Achievement",
	"Ticket",
	"Reward",
	"Text",
	"Notification",
	"InboxItem",
	"NotificationInboxItem",
}

func (v *MessageType) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := MessageType(value)
	for _, existing := range AllowedMessageTypeEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid MessageType", value)
}

// NewMessageTypeFromValue returns a pointer to a valid MessageType
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewMessageTypeFromValue(v string) (*MessageType, error) {
	ev := MessageType(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for MessageType: valid values are %v", v, AllowedMessageTypeEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v MessageType) IsValid() bool {
	for _, existing := range AllowedMessageTypeEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to MessageType value
func (v MessageType) Ptr() *MessageType {
	return &v
}

type NullableMessageType struct {
	value *MessageType
	isSet bool
}

func (v NullableMessageType) Get() *MessageType {
	return v.value
}

func (v *NullableMessageType) Set(val *MessageType) {
	v.value = val
	v.isSet = true
}

func (v NullableMessageType) IsSet() bool {
	return v.isSet
}

func (v *NullableMessageType) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMessageType(val *MessageType) *NullableMessageType {
	return &NullableMessageType{value: val, isSet: true}
}

func (v NullableMessageType) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMessageType) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

