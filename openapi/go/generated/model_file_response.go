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

// FileResponse         
type FileResponse struct {
	Meta *ResponseMeta `json:"meta,omitempty"`
	// 
	Data []File `json:"data,omitempty"`
	// 
	Errors []Error `json:"errors,omitempty"`
}

// NewFileResponse instantiates a new FileResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFileResponse() *FileResponse {
	this := FileResponse{}
	return &this
}

// NewFileResponseWithDefaults instantiates a new FileResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFileResponseWithDefaults() *FileResponse {
	this := FileResponse{}
	return &this
}

// GetMeta returns the Meta field value if set, zero value otherwise.
func (o *FileResponse) GetMeta() ResponseMeta {
	if o == nil || o.Meta == nil {
		var ret ResponseMeta
		return ret
	}
	return *o.Meta
}

// GetMetaOk returns a tuple with the Meta field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FileResponse) GetMetaOk() (*ResponseMeta, bool) {
	if o == nil || o.Meta == nil {
		return nil, false
	}
	return o.Meta, true
}

// HasMeta returns a boolean if a field has been set.
func (o *FileResponse) HasMeta() bool {
	if o != nil && o.Meta != nil {
		return true
	}

	return false
}

// SetMeta gets a reference to the given ResponseMeta and assigns it to the Meta field.
func (o *FileResponse) SetMeta(v ResponseMeta) {
	o.Meta = &v
}

// GetData returns the Data field value if set, zero value otherwise.
func (o *FileResponse) GetData() []File {
	if o == nil || o.Data == nil {
		var ret []File
		return ret
	}
	return o.Data
}

// GetDataOk returns a tuple with the Data field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FileResponse) GetDataOk() ([]File, bool) {
	if o == nil || o.Data == nil {
		return nil, false
	}
	return o.Data, true
}

// HasData returns a boolean if a field has been set.
func (o *FileResponse) HasData() bool {
	if o != nil && o.Data != nil {
		return true
	}

	return false
}

// SetData gets a reference to the given []File and assigns it to the Data field.
func (o *FileResponse) SetData(v []File) {
	o.Data = v
}

// GetErrors returns the Errors field value if set, zero value otherwise.
func (o *FileResponse) GetErrors() []Error {
	if o == nil || o.Errors == nil {
		var ret []Error
		return ret
	}
	return o.Errors
}

// GetErrorsOk returns a tuple with the Errors field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FileResponse) GetErrorsOk() ([]Error, bool) {
	if o == nil || o.Errors == nil {
		return nil, false
	}
	return o.Errors, true
}

// HasErrors returns a boolean if a field has been set.
func (o *FileResponse) HasErrors() bool {
	if o != nil && o.Errors != nil {
		return true
	}

	return false
}

// SetErrors gets a reference to the given []Error and assigns it to the Errors field.
func (o *FileResponse) SetErrors(v []Error) {
	o.Errors = v
}

func (o FileResponse) MarshalJSON() ([]byte, error) {
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

type NullableFileResponse struct {
	value *FileResponse
	isSet bool
}

func (v NullableFileResponse) Get() *FileResponse {
	return v.value
}

func (v *NullableFileResponse) Set(val *FileResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableFileResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableFileResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFileResponse(val *FileResponse) *NullableFileResponse {
	return &NullableFileResponse{value: val, isSet: true}
}

func (v NullableFileResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFileResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


