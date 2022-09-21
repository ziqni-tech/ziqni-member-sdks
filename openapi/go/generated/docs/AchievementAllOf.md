# AchievementAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**TermsAndConditions** | Pointer to **string** |  | [optional] 
**Constraints** | Pointer to **[]string** | Additional constraints, if set means true | [optional] 
**MaxNumberOfIssues** | Pointer to **int32** | Maximum number of issued achievements | [optional] 
**Scheduling** | Pointer to [**Scheduling**](Scheduling.md) |  | [optional] 
**DependantOn** | Pointer to [**Dependancy**](Dependancy.md) |  | [optional] 
**Status** | Pointer to **string** | Achievement status | [optional] 
**StatusCode** | Pointer to **int32** |  | [optional] 
**MemberTagsFilter** | Pointer to [**DependantOn**](DependantOn.md) |  | [optional] 

## Methods

### NewAchievementAllOf

`func NewAchievementAllOf() *AchievementAllOf`

NewAchievementAllOf instantiates a new AchievementAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAchievementAllOfWithDefaults

`func NewAchievementAllOfWithDefaults() *AchievementAllOf`

NewAchievementAllOfWithDefaults instantiates a new AchievementAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AchievementAllOf) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AchievementAllOf) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AchievementAllOf) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AchievementAllOf) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *AchievementAllOf) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AchievementAllOf) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AchievementAllOf) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AchievementAllOf) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetTermsAndConditions

`func (o *AchievementAllOf) GetTermsAndConditions() string`

GetTermsAndConditions returns the TermsAndConditions field if non-nil, zero value otherwise.

### GetTermsAndConditionsOk

`func (o *AchievementAllOf) GetTermsAndConditionsOk() (*string, bool)`

GetTermsAndConditionsOk returns a tuple with the TermsAndConditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTermsAndConditions

`func (o *AchievementAllOf) SetTermsAndConditions(v string)`

SetTermsAndConditions sets TermsAndConditions field to given value.

### HasTermsAndConditions

`func (o *AchievementAllOf) HasTermsAndConditions() bool`

HasTermsAndConditions returns a boolean if a field has been set.

### GetConstraints

`func (o *AchievementAllOf) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *AchievementAllOf) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *AchievementAllOf) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *AchievementAllOf) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetMaxNumberOfIssues

`func (o *AchievementAllOf) GetMaxNumberOfIssues() int32`

GetMaxNumberOfIssues returns the MaxNumberOfIssues field if non-nil, zero value otherwise.

### GetMaxNumberOfIssuesOk

`func (o *AchievementAllOf) GetMaxNumberOfIssuesOk() (*int32, bool)`

GetMaxNumberOfIssuesOk returns a tuple with the MaxNumberOfIssues field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxNumberOfIssues

`func (o *AchievementAllOf) SetMaxNumberOfIssues(v int32)`

SetMaxNumberOfIssues sets MaxNumberOfIssues field to given value.

### HasMaxNumberOfIssues

`func (o *AchievementAllOf) HasMaxNumberOfIssues() bool`

HasMaxNumberOfIssues returns a boolean if a field has been set.

### GetScheduling

`func (o *AchievementAllOf) GetScheduling() Scheduling`

GetScheduling returns the Scheduling field if non-nil, zero value otherwise.

### GetSchedulingOk

`func (o *AchievementAllOf) GetSchedulingOk() (*Scheduling, bool)`

GetSchedulingOk returns a tuple with the Scheduling field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduling

`func (o *AchievementAllOf) SetScheduling(v Scheduling)`

SetScheduling sets Scheduling field to given value.

### HasScheduling

`func (o *AchievementAllOf) HasScheduling() bool`

HasScheduling returns a boolean if a field has been set.

### GetDependantOn

`func (o *AchievementAllOf) GetDependantOn() Dependancy`

GetDependantOn returns the DependantOn field if non-nil, zero value otherwise.

### GetDependantOnOk

`func (o *AchievementAllOf) GetDependantOnOk() (*Dependancy, bool)`

GetDependantOnOk returns a tuple with the DependantOn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDependantOn

`func (o *AchievementAllOf) SetDependantOn(v Dependancy)`

SetDependantOn sets DependantOn field to given value.

### HasDependantOn

`func (o *AchievementAllOf) HasDependantOn() bool`

HasDependantOn returns a boolean if a field has been set.

### GetStatus

`func (o *AchievementAllOf) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AchievementAllOf) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AchievementAllOf) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AchievementAllOf) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusCode

`func (o *AchievementAllOf) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *AchievementAllOf) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *AchievementAllOf) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *AchievementAllOf) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetMemberTagsFilter

`func (o *AchievementAllOf) GetMemberTagsFilter() DependantOn`

GetMemberTagsFilter returns the MemberTagsFilter field if non-nil, zero value otherwise.

### GetMemberTagsFilterOk

`func (o *AchievementAllOf) GetMemberTagsFilterOk() (*DependantOn, bool)`

GetMemberTagsFilterOk returns a tuple with the MemberTagsFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberTagsFilter

`func (o *AchievementAllOf) SetMemberTagsFilter(v DependantOn)`

SetMemberTagsFilter sets MemberTagsFilter field to given value.

### HasMemberTagsFilter

`func (o *AchievementAllOf) HasMemberTagsFilter() bool`

HasMemberTagsFilter returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


