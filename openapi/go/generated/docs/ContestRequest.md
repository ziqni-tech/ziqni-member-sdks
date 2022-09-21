# ContestRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LanguageKey** | Pointer to **string** | The language codes can be found in the settings/transalations section of the back office | [optional] 
**ContestFilter** | Pointer to [**ContestFilter**](ContestFilter.md) |  | [optional] 

## Methods

### NewContestRequest

`func NewContestRequest() *ContestRequest`

NewContestRequest instantiates a new ContestRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContestRequestWithDefaults

`func NewContestRequestWithDefaults() *ContestRequest`

NewContestRequestWithDefaults instantiates a new ContestRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLanguageKey

`func (o *ContestRequest) GetLanguageKey() string`

GetLanguageKey returns the LanguageKey field if non-nil, zero value otherwise.

### GetLanguageKeyOk

`func (o *ContestRequest) GetLanguageKeyOk() (*string, bool)`

GetLanguageKeyOk returns a tuple with the LanguageKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguageKey

`func (o *ContestRequest) SetLanguageKey(v string)`

SetLanguageKey sets LanguageKey field to given value.

### HasLanguageKey

`func (o *ContestRequest) HasLanguageKey() bool`

HasLanguageKey returns a boolean if a field has been set.

### GetContestFilter

`func (o *ContestRequest) GetContestFilter() ContestFilter`

GetContestFilter returns the ContestFilter field if non-nil, zero value otherwise.

### GetContestFilterOk

`func (o *ContestRequest) GetContestFilterOk() (*ContestFilter, bool)`

GetContestFilterOk returns a tuple with the ContestFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContestFilter

`func (o *ContestRequest) SetContestFilter(v ContestFilter)`

SetContestFilter sets ContestFilter field to given value.

### HasContestFilter

`func (o *ContestRequest) HasContestFilter() bool`

HasContestFilter returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


