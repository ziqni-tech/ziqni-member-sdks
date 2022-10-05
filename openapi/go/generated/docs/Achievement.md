# Achievement

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
**Id** | **string** | Ziqni id of the model | 
**SpaceName** | Pointer to **string** | This is the space name which is linked to the account | [optional] 
**Created** | Pointer to **time.Time** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**CustomFields** | Pointer to **map[string]interface{}** |  | [optional] 
**Tags** | Pointer to **[]string** | A list of id&#39;s used to tag models | [optional] 
**Metadata** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewAchievement

`func NewAchievement(id string, ) *Achievement`

NewAchievement instantiates a new Achievement object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAchievementWithDefaults

`func NewAchievementWithDefaults() *Achievement`

NewAchievementWithDefaults instantiates a new Achievement object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *Achievement) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Achievement) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Achievement) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Achievement) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *Achievement) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Achievement) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Achievement) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Achievement) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetTermsAndConditions

`func (o *Achievement) GetTermsAndConditions() string`

GetTermsAndConditions returns the TermsAndConditions field if non-nil, zero value otherwise.

### GetTermsAndConditionsOk

`func (o *Achievement) GetTermsAndConditionsOk() (*string, bool)`

GetTermsAndConditionsOk returns a tuple with the TermsAndConditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTermsAndConditions

`func (o *Achievement) SetTermsAndConditions(v string)`

SetTermsAndConditions sets TermsAndConditions field to given value.

### HasTermsAndConditions

`func (o *Achievement) HasTermsAndConditions() bool`

HasTermsAndConditions returns a boolean if a field has been set.

### GetConstraints

`func (o *Achievement) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *Achievement) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *Achievement) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *Achievement) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetMaxNumberOfIssues

`func (o *Achievement) GetMaxNumberOfIssues() int32`

GetMaxNumberOfIssues returns the MaxNumberOfIssues field if non-nil, zero value otherwise.

### GetMaxNumberOfIssuesOk

`func (o *Achievement) GetMaxNumberOfIssuesOk() (*int32, bool)`

GetMaxNumberOfIssuesOk returns a tuple with the MaxNumberOfIssues field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxNumberOfIssues

`func (o *Achievement) SetMaxNumberOfIssues(v int32)`

SetMaxNumberOfIssues sets MaxNumberOfIssues field to given value.

### HasMaxNumberOfIssues

`func (o *Achievement) HasMaxNumberOfIssues() bool`

HasMaxNumberOfIssues returns a boolean if a field has been set.

### GetScheduling

`func (o *Achievement) GetScheduling() Scheduling`

GetScheduling returns the Scheduling field if non-nil, zero value otherwise.

### GetSchedulingOk

`func (o *Achievement) GetSchedulingOk() (*Scheduling, bool)`

GetSchedulingOk returns a tuple with the Scheduling field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduling

`func (o *Achievement) SetScheduling(v Scheduling)`

SetScheduling sets Scheduling field to given value.

### HasScheduling

`func (o *Achievement) HasScheduling() bool`

HasScheduling returns a boolean if a field has been set.

### GetDependantOn

`func (o *Achievement) GetDependantOn() Dependancy`

GetDependantOn returns the DependantOn field if non-nil, zero value otherwise.

### GetDependantOnOk

`func (o *Achievement) GetDependantOnOk() (*Dependancy, bool)`

GetDependantOnOk returns a tuple with the DependantOn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDependantOn

`func (o *Achievement) SetDependantOn(v Dependancy)`

SetDependantOn sets DependantOn field to given value.

### HasDependantOn

`func (o *Achievement) HasDependantOn() bool`

HasDependantOn returns a boolean if a field has been set.

### GetStatus

`func (o *Achievement) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Achievement) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Achievement) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *Achievement) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusCode

`func (o *Achievement) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *Achievement) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *Achievement) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *Achievement) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetMemberTagsFilter

`func (o *Achievement) GetMemberTagsFilter() DependantOn`

GetMemberTagsFilter returns the MemberTagsFilter field if non-nil, zero value otherwise.

### GetMemberTagsFilterOk

`func (o *Achievement) GetMemberTagsFilterOk() (*DependantOn, bool)`

GetMemberTagsFilterOk returns a tuple with the MemberTagsFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberTagsFilter

`func (o *Achievement) SetMemberTagsFilter(v DependantOn)`

SetMemberTagsFilter sets MemberTagsFilter field to given value.

### HasMemberTagsFilter

`func (o *Achievement) HasMemberTagsFilter() bool`

HasMemberTagsFilter returns a boolean if a field has been set.

### GetId

`func (o *Achievement) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Achievement) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Achievement) SetId(v string)`

SetId sets Id field to given value.


### GetSpaceName

`func (o *Achievement) GetSpaceName() string`

GetSpaceName returns the SpaceName field if non-nil, zero value otherwise.

### GetSpaceNameOk

`func (o *Achievement) GetSpaceNameOk() (*string, bool)`

GetSpaceNameOk returns a tuple with the SpaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpaceName

`func (o *Achievement) SetSpaceName(v string)`

SetSpaceName sets SpaceName field to given value.

### HasSpaceName

`func (o *Achievement) HasSpaceName() bool`

HasSpaceName returns a boolean if a field has been set.

### GetCreated

`func (o *Achievement) GetCreated() time.Time`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *Achievement) GetCreatedOk() (*time.Time, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *Achievement) SetCreated(v time.Time)`

SetCreated sets Created field to given value.

### HasCreated

`func (o *Achievement) HasCreated() bool`

HasCreated returns a boolean if a field has been set.

### GetCustomFields

`func (o *Achievement) GetCustomFields() map[string]interface{}`

GetCustomFields returns the CustomFields field if non-nil, zero value otherwise.

### GetCustomFieldsOk

`func (o *Achievement) GetCustomFieldsOk() (*map[string]interface{}, bool)`

GetCustomFieldsOk returns a tuple with the CustomFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomFields

`func (o *Achievement) SetCustomFields(v map[string]interface{})`

SetCustomFields sets CustomFields field to given value.

### HasCustomFields

`func (o *Achievement) HasCustomFields() bool`

HasCustomFields returns a boolean if a field has been set.

### GetTags

`func (o *Achievement) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *Achievement) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *Achievement) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *Achievement) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *Achievement) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *Achievement) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *Achievement) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *Achievement) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


