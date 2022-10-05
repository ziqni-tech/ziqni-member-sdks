# Contest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**TermsAndConditions** | Pointer to **string** |  | [optional] 
**CompetitionId** | Pointer to **string** | A unique identifier of a Competition | [optional] 
**Round** | Pointer to **int32** | To what round does the contest belong | [optional] 
**RoundType** | Pointer to [**RoundType**](RoundType.md) |  | [optional] 
**GroupStage** | Pointer to **int32** | Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2 | [optional] 
**GroupStageLabel** | Pointer to **string** | The name of the group stages | [optional] 
**MaxNumberOfEntrants** | Pointer to **int32** | Maximum number of entrants for the contest | [optional] 
**MinNumberOfEntrants** | Pointer to **int32** | Minimum number of entrants for the contest | [optional] 
**ScheduledStartDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone | [optional] 
**ScheduledEndDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone | [optional] 
**ActualStartDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone | [optional] [readonly] 
**ActualEndDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone | [optional] [readonly] 
**Strategies** | Pointer to [**Strategy**](Strategy.md) |  | [optional] 
**Status** | Pointer to [**ContestStatus**](ContestStatus.md) |  | [optional] 
**StatusCode** | Pointer to **int32** | The code of the contest | [optional] [readonly] 
**MemberTagsFilter** | Pointer to [**DependantOn**](DependantOn.md) |  | [optional] 
**Constraints** | Pointer to **[]string** | Additional constraints | [optional] 
**Id** | **string** | Ziqni id of the model | 
**SpaceName** | Pointer to **string** | This is the space name which is linked to the account | [optional] 
**Created** | Pointer to **time.Time** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**CustomFields** | Pointer to **map[string]interface{}** |  | [optional] 
**Tags** | Pointer to **[]string** | A list of id&#39;s used to tag models | [optional] 
**Metadata** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewContest

`func NewContest(id string, ) *Contest`

NewContest instantiates a new Contest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContestWithDefaults

`func NewContestWithDefaults() *Contest`

NewContestWithDefaults instantiates a new Contest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *Contest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Contest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Contest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Contest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *Contest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Contest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Contest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Contest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetTermsAndConditions

`func (o *Contest) GetTermsAndConditions() string`

GetTermsAndConditions returns the TermsAndConditions field if non-nil, zero value otherwise.

### GetTermsAndConditionsOk

`func (o *Contest) GetTermsAndConditionsOk() (*string, bool)`

GetTermsAndConditionsOk returns a tuple with the TermsAndConditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTermsAndConditions

`func (o *Contest) SetTermsAndConditions(v string)`

SetTermsAndConditions sets TermsAndConditions field to given value.

### HasTermsAndConditions

`func (o *Contest) HasTermsAndConditions() bool`

HasTermsAndConditions returns a boolean if a field has been set.

### GetCompetitionId

`func (o *Contest) GetCompetitionId() string`

GetCompetitionId returns the CompetitionId field if non-nil, zero value otherwise.

### GetCompetitionIdOk

`func (o *Contest) GetCompetitionIdOk() (*string, bool)`

GetCompetitionIdOk returns a tuple with the CompetitionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompetitionId

`func (o *Contest) SetCompetitionId(v string)`

SetCompetitionId sets CompetitionId field to given value.

### HasCompetitionId

`func (o *Contest) HasCompetitionId() bool`

HasCompetitionId returns a boolean if a field has been set.

### GetRound

`func (o *Contest) GetRound() int32`

GetRound returns the Round field if non-nil, zero value otherwise.

### GetRoundOk

`func (o *Contest) GetRoundOk() (*int32, bool)`

GetRoundOk returns a tuple with the Round field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRound

`func (o *Contest) SetRound(v int32)`

SetRound sets Round field to given value.

### HasRound

`func (o *Contest) HasRound() bool`

HasRound returns a boolean if a field has been set.

### GetRoundType

`func (o *Contest) GetRoundType() RoundType`

GetRoundType returns the RoundType field if non-nil, zero value otherwise.

### GetRoundTypeOk

`func (o *Contest) GetRoundTypeOk() (*RoundType, bool)`

GetRoundTypeOk returns a tuple with the RoundType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoundType

`func (o *Contest) SetRoundType(v RoundType)`

SetRoundType sets RoundType field to given value.

### HasRoundType

`func (o *Contest) HasRoundType() bool`

HasRoundType returns a boolean if a field has been set.

### GetGroupStage

`func (o *Contest) GetGroupStage() int32`

GetGroupStage returns the GroupStage field if non-nil, zero value otherwise.

### GetGroupStageOk

`func (o *Contest) GetGroupStageOk() (*int32, bool)`

GetGroupStageOk returns a tuple with the GroupStage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroupStage

`func (o *Contest) SetGroupStage(v int32)`

SetGroupStage sets GroupStage field to given value.

### HasGroupStage

`func (o *Contest) HasGroupStage() bool`

HasGroupStage returns a boolean if a field has been set.

### GetGroupStageLabel

`func (o *Contest) GetGroupStageLabel() string`

GetGroupStageLabel returns the GroupStageLabel field if non-nil, zero value otherwise.

### GetGroupStageLabelOk

`func (o *Contest) GetGroupStageLabelOk() (*string, bool)`

GetGroupStageLabelOk returns a tuple with the GroupStageLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroupStageLabel

`func (o *Contest) SetGroupStageLabel(v string)`

SetGroupStageLabel sets GroupStageLabel field to given value.

### HasGroupStageLabel

`func (o *Contest) HasGroupStageLabel() bool`

HasGroupStageLabel returns a boolean if a field has been set.

### GetMaxNumberOfEntrants

`func (o *Contest) GetMaxNumberOfEntrants() int32`

GetMaxNumberOfEntrants returns the MaxNumberOfEntrants field if non-nil, zero value otherwise.

### GetMaxNumberOfEntrantsOk

`func (o *Contest) GetMaxNumberOfEntrantsOk() (*int32, bool)`

GetMaxNumberOfEntrantsOk returns a tuple with the MaxNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxNumberOfEntrants

`func (o *Contest) SetMaxNumberOfEntrants(v int32)`

SetMaxNumberOfEntrants sets MaxNumberOfEntrants field to given value.

### HasMaxNumberOfEntrants

`func (o *Contest) HasMaxNumberOfEntrants() bool`

HasMaxNumberOfEntrants returns a boolean if a field has been set.

### GetMinNumberOfEntrants

`func (o *Contest) GetMinNumberOfEntrants() int32`

GetMinNumberOfEntrants returns the MinNumberOfEntrants field if non-nil, zero value otherwise.

### GetMinNumberOfEntrantsOk

`func (o *Contest) GetMinNumberOfEntrantsOk() (*int32, bool)`

GetMinNumberOfEntrantsOk returns a tuple with the MinNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinNumberOfEntrants

`func (o *Contest) SetMinNumberOfEntrants(v int32)`

SetMinNumberOfEntrants sets MinNumberOfEntrants field to given value.

### HasMinNumberOfEntrants

`func (o *Contest) HasMinNumberOfEntrants() bool`

HasMinNumberOfEntrants returns a boolean if a field has been set.

### GetScheduledStartDate

`func (o *Contest) GetScheduledStartDate() time.Time`

GetScheduledStartDate returns the ScheduledStartDate field if non-nil, zero value otherwise.

### GetScheduledStartDateOk

`func (o *Contest) GetScheduledStartDateOk() (*time.Time, bool)`

GetScheduledStartDateOk returns a tuple with the ScheduledStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledStartDate

`func (o *Contest) SetScheduledStartDate(v time.Time)`

SetScheduledStartDate sets ScheduledStartDate field to given value.

### HasScheduledStartDate

`func (o *Contest) HasScheduledStartDate() bool`

HasScheduledStartDate returns a boolean if a field has been set.

### GetScheduledEndDate

`func (o *Contest) GetScheduledEndDate() time.Time`

GetScheduledEndDate returns the ScheduledEndDate field if non-nil, zero value otherwise.

### GetScheduledEndDateOk

`func (o *Contest) GetScheduledEndDateOk() (*time.Time, bool)`

GetScheduledEndDateOk returns a tuple with the ScheduledEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledEndDate

`func (o *Contest) SetScheduledEndDate(v time.Time)`

SetScheduledEndDate sets ScheduledEndDate field to given value.

### HasScheduledEndDate

`func (o *Contest) HasScheduledEndDate() bool`

HasScheduledEndDate returns a boolean if a field has been set.

### GetActualStartDate

`func (o *Contest) GetActualStartDate() time.Time`

GetActualStartDate returns the ActualStartDate field if non-nil, zero value otherwise.

### GetActualStartDateOk

`func (o *Contest) GetActualStartDateOk() (*time.Time, bool)`

GetActualStartDateOk returns a tuple with the ActualStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualStartDate

`func (o *Contest) SetActualStartDate(v time.Time)`

SetActualStartDate sets ActualStartDate field to given value.

### HasActualStartDate

`func (o *Contest) HasActualStartDate() bool`

HasActualStartDate returns a boolean if a field has been set.

### GetActualEndDate

`func (o *Contest) GetActualEndDate() time.Time`

GetActualEndDate returns the ActualEndDate field if non-nil, zero value otherwise.

### GetActualEndDateOk

`func (o *Contest) GetActualEndDateOk() (*time.Time, bool)`

GetActualEndDateOk returns a tuple with the ActualEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualEndDate

`func (o *Contest) SetActualEndDate(v time.Time)`

SetActualEndDate sets ActualEndDate field to given value.

### HasActualEndDate

`func (o *Contest) HasActualEndDate() bool`

HasActualEndDate returns a boolean if a field has been set.

### GetStrategies

`func (o *Contest) GetStrategies() Strategy`

GetStrategies returns the Strategies field if non-nil, zero value otherwise.

### GetStrategiesOk

`func (o *Contest) GetStrategiesOk() (*Strategy, bool)`

GetStrategiesOk returns a tuple with the Strategies field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategies

`func (o *Contest) SetStrategies(v Strategy)`

SetStrategies sets Strategies field to given value.

### HasStrategies

`func (o *Contest) HasStrategies() bool`

HasStrategies returns a boolean if a field has been set.

### GetStatus

`func (o *Contest) GetStatus() ContestStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Contest) GetStatusOk() (*ContestStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Contest) SetStatus(v ContestStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *Contest) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusCode

`func (o *Contest) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *Contest) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *Contest) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *Contest) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetMemberTagsFilter

`func (o *Contest) GetMemberTagsFilter() DependantOn`

GetMemberTagsFilter returns the MemberTagsFilter field if non-nil, zero value otherwise.

### GetMemberTagsFilterOk

`func (o *Contest) GetMemberTagsFilterOk() (*DependantOn, bool)`

GetMemberTagsFilterOk returns a tuple with the MemberTagsFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberTagsFilter

`func (o *Contest) SetMemberTagsFilter(v DependantOn)`

SetMemberTagsFilter sets MemberTagsFilter field to given value.

### HasMemberTagsFilter

`func (o *Contest) HasMemberTagsFilter() bool`

HasMemberTagsFilter returns a boolean if a field has been set.

### GetConstraints

`func (o *Contest) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *Contest) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *Contest) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *Contest) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetId

`func (o *Contest) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Contest) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Contest) SetId(v string)`

SetId sets Id field to given value.


### GetSpaceName

`func (o *Contest) GetSpaceName() string`

GetSpaceName returns the SpaceName field if non-nil, zero value otherwise.

### GetSpaceNameOk

`func (o *Contest) GetSpaceNameOk() (*string, bool)`

GetSpaceNameOk returns a tuple with the SpaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpaceName

`func (o *Contest) SetSpaceName(v string)`

SetSpaceName sets SpaceName field to given value.

### HasSpaceName

`func (o *Contest) HasSpaceName() bool`

HasSpaceName returns a boolean if a field has been set.

### GetCreated

`func (o *Contest) GetCreated() time.Time`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *Contest) GetCreatedOk() (*time.Time, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *Contest) SetCreated(v time.Time)`

SetCreated sets Created field to given value.

### HasCreated

`func (o *Contest) HasCreated() bool`

HasCreated returns a boolean if a field has been set.

### GetCustomFields

`func (o *Contest) GetCustomFields() map[string]interface{}`

GetCustomFields returns the CustomFields field if non-nil, zero value otherwise.

### GetCustomFieldsOk

`func (o *Contest) GetCustomFieldsOk() (*map[string]interface{}, bool)`

GetCustomFieldsOk returns a tuple with the CustomFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomFields

`func (o *Contest) SetCustomFields(v map[string]interface{})`

SetCustomFields sets CustomFields field to given value.

### HasCustomFields

`func (o *Contest) HasCustomFields() bool`

HasCustomFields returns a boolean if a field has been set.

### GetTags

`func (o *Contest) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *Contest) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *Contest) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *Contest) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *Contest) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *Contest) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *Contest) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *Contest) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


