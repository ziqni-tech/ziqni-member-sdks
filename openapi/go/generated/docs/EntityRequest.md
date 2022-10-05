# EntityRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LanguageKey** | Pointer to **string** | The language codes can be found in the settings/transalations section of the back office | [optional] 
**EntityFilter** | Pointer to [**[]EntityFilter**](EntityFilter.md) |  | [optional] 
**SortBy** | Pointer to [**[]QuerySortBy**](QuerySortBy.md) |  | [optional] 
**Skip** | Pointer to **int32** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 

## Methods

### NewEntityRequest

`func NewEntityRequest() *EntityRequest`

NewEntityRequest instantiates a new EntityRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEntityRequestWithDefaults

`func NewEntityRequestWithDefaults() *EntityRequest`

NewEntityRequestWithDefaults instantiates a new EntityRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLanguageKey

`func (o *EntityRequest) GetLanguageKey() string`

GetLanguageKey returns the LanguageKey field if non-nil, zero value otherwise.

### GetLanguageKeyOk

`func (o *EntityRequest) GetLanguageKeyOk() (*string, bool)`

GetLanguageKeyOk returns a tuple with the LanguageKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguageKey

`func (o *EntityRequest) SetLanguageKey(v string)`

SetLanguageKey sets LanguageKey field to given value.

### HasLanguageKey

`func (o *EntityRequest) HasLanguageKey() bool`

HasLanguageKey returns a boolean if a field has been set.

### GetEntityFilter

`func (o *EntityRequest) GetEntityFilter() []EntityFilter`

GetEntityFilter returns the EntityFilter field if non-nil, zero value otherwise.

### GetEntityFilterOk

`func (o *EntityRequest) GetEntityFilterOk() (*[]EntityFilter, bool)`

GetEntityFilterOk returns a tuple with the EntityFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityFilter

`func (o *EntityRequest) SetEntityFilter(v []EntityFilter)`

SetEntityFilter sets EntityFilter field to given value.

### HasEntityFilter

`func (o *EntityRequest) HasEntityFilter() bool`

HasEntityFilter returns a boolean if a field has been set.

### GetSortBy

`func (o *EntityRequest) GetSortBy() []QuerySortBy`

GetSortBy returns the SortBy field if non-nil, zero value otherwise.

### GetSortByOk

`func (o *EntityRequest) GetSortByOk() (*[]QuerySortBy, bool)`

GetSortByOk returns a tuple with the SortBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSortBy

`func (o *EntityRequest) SetSortBy(v []QuerySortBy)`

SetSortBy sets SortBy field to given value.

### HasSortBy

`func (o *EntityRequest) HasSortBy() bool`

HasSortBy returns a boolean if a field has been set.

### GetSkip

`func (o *EntityRequest) GetSkip() int32`

GetSkip returns the Skip field if non-nil, zero value otherwise.

### GetSkipOk

`func (o *EntityRequest) GetSkipOk() (*int32, bool)`

GetSkipOk returns a tuple with the Skip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkip

`func (o *EntityRequest) SetSkip(v int32)`

SetSkip sets Skip field to given value.

### HasSkip

`func (o *EntityRequest) HasSkip() bool`

HasSkip returns a boolean if a field has been set.

### GetLimit

`func (o *EntityRequest) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *EntityRequest) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *EntityRequest) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *EntityRequest) HasLimit() bool`

HasLimit returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


