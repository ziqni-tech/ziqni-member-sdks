# ClaimAwardRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LanguageKey** | Pointer to **string** | The language codes can be found in the settings/transalations section of the back office | [optional] 
**AwardIds** | Pointer to **[]string** |  | [optional] 

## Methods

### NewClaimAwardRequest

`func NewClaimAwardRequest() *ClaimAwardRequest`

NewClaimAwardRequest instantiates a new ClaimAwardRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewClaimAwardRequestWithDefaults

`func NewClaimAwardRequestWithDefaults() *ClaimAwardRequest`

NewClaimAwardRequestWithDefaults instantiates a new ClaimAwardRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLanguageKey

`func (o *ClaimAwardRequest) GetLanguageKey() string`

GetLanguageKey returns the LanguageKey field if non-nil, zero value otherwise.

### GetLanguageKeyOk

`func (o *ClaimAwardRequest) GetLanguageKeyOk() (*string, bool)`

GetLanguageKeyOk returns a tuple with the LanguageKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguageKey

`func (o *ClaimAwardRequest) SetLanguageKey(v string)`

SetLanguageKey sets LanguageKey field to given value.

### HasLanguageKey

`func (o *ClaimAwardRequest) HasLanguageKey() bool`

HasLanguageKey returns a boolean if a field has been set.

### GetAwardIds

`func (o *ClaimAwardRequest) GetAwardIds() []string`

GetAwardIds returns the AwardIds field if non-nil, zero value otherwise.

### GetAwardIdsOk

`func (o *ClaimAwardRequest) GetAwardIdsOk() (*[]string, bool)`

GetAwardIdsOk returns a tuple with the AwardIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAwardIds

`func (o *ClaimAwardRequest) SetAwardIds(v []string)`

SetAwardIds sets AwardIds field to given value.

### HasAwardIds

`func (o *ClaimAwardRequest) HasAwardIds() bool`

HasAwardIds returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


