# AwardRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AwardFilter** | Pointer to [**AwardFilter**](AwardFilter.md) |  | [optional] 
**LanguageKey** | Pointer to **string** | The language codes can be found in the settings/transalations section of the back office | [optional] 

## Methods

### NewAwardRequest

`func NewAwardRequest() *AwardRequest`

NewAwardRequest instantiates a new AwardRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAwardRequestWithDefaults

`func NewAwardRequestWithDefaults() *AwardRequest`

NewAwardRequestWithDefaults instantiates a new AwardRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAwardFilter

`func (o *AwardRequest) GetAwardFilter() AwardFilter`

GetAwardFilter returns the AwardFilter field if non-nil, zero value otherwise.

### GetAwardFilterOk

`func (o *AwardRequest) GetAwardFilterOk() (*AwardFilter, bool)`

GetAwardFilterOk returns a tuple with the AwardFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAwardFilter

`func (o *AwardRequest) SetAwardFilter(v AwardFilter)`

SetAwardFilter sets AwardFilter field to given value.

### HasAwardFilter

`func (o *AwardRequest) HasAwardFilter() bool`

HasAwardFilter returns a boolean if a field has been set.

### GetLanguageKey

`func (o *AwardRequest) GetLanguageKey() string`

GetLanguageKey returns the LanguageKey field if non-nil, zero value otherwise.

### GetLanguageKeyOk

`func (o *AwardRequest) GetLanguageKeyOk() (*string, bool)`

GetLanguageKeyOk returns a tuple with the LanguageKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguageKey

`func (o *AwardRequest) SetLanguageKey(v string)`

SetLanguageKey sets LanguageKey field to given value.

### HasLanguageKey

`func (o *AwardRequest) HasLanguageKey() bool`

HasLanguageKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


