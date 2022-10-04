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

// EntityChangeSubscriptionRequest 
type EntityChangeSubscriptionRequest struct {
	// What you are subscribing to, like Competition, Contest, Member, Award etc.
	EntityType string `json:"entityType"`
	// Constraints of this subscription.
	Constraints []string `json:"constraints,omitempty"`
	// The callback operation you are subscribing too. Like entityChanged or entityStateChanged
	Callback string `json:"callback"`
	// Either subscribe or unsubscribe from the data feed
	Action string `json:"action"`
}

// NewEntityChangeSubscriptionRequest instantiates a new EntityChangeSubscriptionRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewEntityChangeSubscriptionRequest(entityType string, callback string, action string) *EntityChangeSubscriptionRequest {
	this := EntityChangeSubscriptionRequest{}
	this.EntityType = entityType
	this.Callback = callback
	this.Action = action
	return &this
}

// NewEntityChangeSubscriptionRequestWithDefaults instantiates a new EntityChangeSubscriptionRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewEntityChangeSubscriptionRequestWithDefaults() *EntityChangeSubscriptionRequest {
	this := EntityChangeSubscriptionRequest{}
	return &this
}

// GetEntityType returns the EntityType field value
func (o *EntityChangeSubscriptionRequest) GetEntityType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.EntityType
}

// GetEntityTypeOk returns a tuple with the EntityType field value
// and a boolean to check if the value has been set.
func (o *EntityChangeSubscriptionRequest) GetEntityTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.EntityType, true
}

// SetEntityType sets field value
func (o *EntityChangeSubscriptionRequest) SetEntityType(v string) {
	o.EntityType = v
}

// GetConstraints returns the Constraints field value if set, zero value otherwise.
func (o *EntityChangeSubscriptionRequest) GetConstraints() []string {
	if o == nil || o.Constraints == nil {
		var ret []string
		return ret
	}
	return o.Constraints
}

// GetConstraintsOk returns a tuple with the Constraints field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EntityChangeSubscriptionRequest) GetConstraintsOk() ([]string, bool) {
	if o == nil || o.Constraints == nil {
		return nil, false
	}
	return o.Constraints, true
}

// HasConstraints returns a boolean if a field has been set.
func (o *EntityChangeSubscriptionRequest) HasConstraints() bool {
	if o != nil && o.Constraints != nil {
		return true
	}

	return false
}

// SetConstraints gets a reference to the given []string and assigns it to the Constraints field.
func (o *EntityChangeSubscriptionRequest) SetConstraints(v []string) {
	o.Constraints = v
}

// GetCallback returns the Callback field value
func (o *EntityChangeSubscriptionRequest) GetCallback() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Callback
}

// GetCallbackOk returns a tuple with the Callback field value
// and a boolean to check if the value has been set.
func (o *EntityChangeSubscriptionRequest) GetCallbackOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Callback, true
}

// SetCallback sets field value
func (o *EntityChangeSubscriptionRequest) SetCallback(v string) {
	o.Callback = v
}

// GetAction returns the Action field value
func (o *EntityChangeSubscriptionRequest) GetAction() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Action
}

// GetActionOk returns a tuple with the Action field value
// and a boolean to check if the value has been set.
func (o *EntityChangeSubscriptionRequest) GetActionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Action, true
}

// SetAction sets field value
func (o *EntityChangeSubscriptionRequest) SetAction(v string) {
	o.Action = v
}

func (o EntityChangeSubscriptionRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["entityType"] = o.EntityType
	}
	if o.Constraints != nil {
		toSerialize["constraints"] = o.Constraints
	}
	if true {
		toSerialize["callback"] = o.Callback
	}
	if true {
		toSerialize["action"] = o.Action
	}
	return json.Marshal(toSerialize)
}

type NullableEntityChangeSubscriptionRequest struct {
	value *EntityChangeSubscriptionRequest
	isSet bool
}

func (v NullableEntityChangeSubscriptionRequest) Get() *EntityChangeSubscriptionRequest {
	return v.value
}

func (v *NullableEntityChangeSubscriptionRequest) Set(val *EntityChangeSubscriptionRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableEntityChangeSubscriptionRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableEntityChangeSubscriptionRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableEntityChangeSubscriptionRequest(val *EntityChangeSubscriptionRequest) *NullableEntityChangeSubscriptionRequest {
	return &NullableEntityChangeSubscriptionRequest{value: val, isSet: true}
}

func (v NullableEntityChangeSubscriptionRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableEntityChangeSubscriptionRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


