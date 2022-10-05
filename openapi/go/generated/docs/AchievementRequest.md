# AchievementRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AchievementFilter** | Pointer to [**AchievementFilter**](AchievementFilter.md) |  | [optional] 
**LanguageKey** | Pointer to **string** | The language codes can be found in the settings/transalations section of the back office | [optional] 

## Methods

### NewAchievementRequest

`func NewAchievementRequest() *AchievementRequest`

NewAchievementRequest instantiates a new AchievementRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAchievementRequestWithDefaults

`func NewAchievementRequestWithDefaults() *AchievementRequest`

NewAchievementRequestWithDefaults instantiates a new AchievementRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAchievementFilter

`func (o *AchievementRequest) GetAchievementFilter() AchievementFilter`

GetAchievementFilter returns the AchievementFilter field if non-nil, zero value otherwise.

### GetAchievementFilterOk

`func (o *AchievementRequest) GetAchievementFilterOk() (*AchievementFilter, bool)`

GetAchievementFilterOk returns a tuple with the AchievementFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAchievementFilter

`func (o *AchievementRequest) SetAchievementFilter(v AchievementFilter)`

SetAchievementFilter sets AchievementFilter field to given value.

### HasAchievementFilter

`func (o *AchievementRequest) HasAchievementFilter() bool`

HasAchievementFilter returns a boolean if a field has been set.

### GetLanguageKey

`func (o *AchievementRequest) GetLanguageKey() string`

GetLanguageKey returns the LanguageKey field if non-nil, zero value otherwise.

### GetLanguageKeyOk

`func (o *AchievementRequest) GetLanguageKeyOk() (*string, bool)`

GetLanguageKeyOk returns a tuple with the LanguageKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguageKey

`func (o *AchievementRequest) SetLanguageKey(v string)`

SetLanguageKey sets LanguageKey field to given value.

### HasLanguageKey

`func (o *AchievementRequest) HasLanguageKey() bool`

HasLanguageKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


