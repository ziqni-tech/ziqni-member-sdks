# CompetitionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LanguageKey** | Pointer to **string** | The language codes can be found in the settings/transalations section of the back office | [optional] 
**CompetitionFilter** | Pointer to [**CompetitionFilter**](CompetitionFilter.md) |  | [optional] 

## Methods

### NewCompetitionRequest

`func NewCompetitionRequest() *CompetitionRequest`

NewCompetitionRequest instantiates a new CompetitionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCompetitionRequestWithDefaults

`func NewCompetitionRequestWithDefaults() *CompetitionRequest`

NewCompetitionRequestWithDefaults instantiates a new CompetitionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLanguageKey

`func (o *CompetitionRequest) GetLanguageKey() string`

GetLanguageKey returns the LanguageKey field if non-nil, zero value otherwise.

### GetLanguageKeyOk

`func (o *CompetitionRequest) GetLanguageKeyOk() (*string, bool)`

GetLanguageKeyOk returns a tuple with the LanguageKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguageKey

`func (o *CompetitionRequest) SetLanguageKey(v string)`

SetLanguageKey sets LanguageKey field to given value.

### HasLanguageKey

`func (o *CompetitionRequest) HasLanguageKey() bool`

HasLanguageKey returns a boolean if a field has been set.

### GetCompetitionFilter

`func (o *CompetitionRequest) GetCompetitionFilter() CompetitionFilter`

GetCompetitionFilter returns the CompetitionFilter field if non-nil, zero value otherwise.

### GetCompetitionFilterOk

`func (o *CompetitionRequest) GetCompetitionFilterOk() (*CompetitionFilter, bool)`

GetCompetitionFilterOk returns a tuple with the CompetitionFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompetitionFilter

`func (o *CompetitionRequest) SetCompetitionFilter(v CompetitionFilter)`

SetCompetitionFilter sets CompetitionFilter field to given value.

### HasCompetitionFilter

`func (o *CompetitionRequest) HasCompetitionFilter() bool`

HasCompetitionFilter returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


