# RewardRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityIds** | **[]string** |  | 
**LanguageKey** | Pointer to **string** | The language codes can be found in the settings/transalations section of the back office | [optional] 

## Methods

### NewRewardRequest

`func NewRewardRequest(entityIds []string, ) *RewardRequest`

NewRewardRequest instantiates a new RewardRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRewardRequestWithDefaults

`func NewRewardRequestWithDefaults() *RewardRequest`

NewRewardRequestWithDefaults instantiates a new RewardRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntityIds

`func (o *RewardRequest) GetEntityIds() []string`

GetEntityIds returns the EntityIds field if non-nil, zero value otherwise.

### GetEntityIdsOk

`func (o *RewardRequest) GetEntityIdsOk() (*[]string, bool)`

GetEntityIdsOk returns a tuple with the EntityIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityIds

`func (o *RewardRequest) SetEntityIds(v []string)`

SetEntityIds sets EntityIds field to given value.


### GetLanguageKey

`func (o *RewardRequest) GetLanguageKey() string`

GetLanguageKey returns the LanguageKey field if non-nil, zero value otherwise.

### GetLanguageKeyOk

`func (o *RewardRequest) GetLanguageKeyOk() (*string, bool)`

GetLanguageKeyOk returns a tuple with the LanguageKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguageKey

`func (o *RewardRequest) SetLanguageKey(v string)`

SetLanguageKey sets LanguageKey field to given value.

### HasLanguageKey

`func (o *RewardRequest) HasLanguageKey() bool`

HasLanguageKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


