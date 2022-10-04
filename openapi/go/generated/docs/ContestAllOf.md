# ContestAllOf

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

## Methods

### NewContestAllOf

`func NewContestAllOf() *ContestAllOf`

NewContestAllOf instantiates a new ContestAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContestAllOfWithDefaults

`func NewContestAllOfWithDefaults() *ContestAllOf`

NewContestAllOfWithDefaults instantiates a new ContestAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ContestAllOf) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ContestAllOf) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ContestAllOf) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ContestAllOf) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *ContestAllOf) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *ContestAllOf) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *ContestAllOf) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *ContestAllOf) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetTermsAndConditions

`func (o *ContestAllOf) GetTermsAndConditions() string`

GetTermsAndConditions returns the TermsAndConditions field if non-nil, zero value otherwise.

### GetTermsAndConditionsOk

`func (o *ContestAllOf) GetTermsAndConditionsOk() (*string, bool)`

GetTermsAndConditionsOk returns a tuple with the TermsAndConditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTermsAndConditions

`func (o *ContestAllOf) SetTermsAndConditions(v string)`

SetTermsAndConditions sets TermsAndConditions field to given value.

### HasTermsAndConditions

`func (o *ContestAllOf) HasTermsAndConditions() bool`

HasTermsAndConditions returns a boolean if a field has been set.

### GetCompetitionId

`func (o *ContestAllOf) GetCompetitionId() string`

GetCompetitionId returns the CompetitionId field if non-nil, zero value otherwise.

### GetCompetitionIdOk

`func (o *ContestAllOf) GetCompetitionIdOk() (*string, bool)`

GetCompetitionIdOk returns a tuple with the CompetitionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompetitionId

`func (o *ContestAllOf) SetCompetitionId(v string)`

SetCompetitionId sets CompetitionId field to given value.

### HasCompetitionId

`func (o *ContestAllOf) HasCompetitionId() bool`

HasCompetitionId returns a boolean if a field has been set.

### GetRound

`func (o *ContestAllOf) GetRound() int32`

GetRound returns the Round field if non-nil, zero value otherwise.

### GetRoundOk

`func (o *ContestAllOf) GetRoundOk() (*int32, bool)`

GetRoundOk returns a tuple with the Round field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRound

`func (o *ContestAllOf) SetRound(v int32)`

SetRound sets Round field to given value.

### HasRound

`func (o *ContestAllOf) HasRound() bool`

HasRound returns a boolean if a field has been set.

### GetRoundType

`func (o *ContestAllOf) GetRoundType() RoundType`

GetRoundType returns the RoundType field if non-nil, zero value otherwise.

### GetRoundTypeOk

`func (o *ContestAllOf) GetRoundTypeOk() (*RoundType, bool)`

GetRoundTypeOk returns a tuple with the RoundType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoundType

`func (o *ContestAllOf) SetRoundType(v RoundType)`

SetRoundType sets RoundType field to given value.

### HasRoundType

`func (o *ContestAllOf) HasRoundType() bool`

HasRoundType returns a boolean if a field has been set.

### GetGroupStage

`func (o *ContestAllOf) GetGroupStage() int32`

GetGroupStage returns the GroupStage field if non-nil, zero value otherwise.

### GetGroupStageOk

`func (o *ContestAllOf) GetGroupStageOk() (*int32, bool)`

GetGroupStageOk returns a tuple with the GroupStage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroupStage

`func (o *ContestAllOf) SetGroupStage(v int32)`

SetGroupStage sets GroupStage field to given value.

### HasGroupStage

`func (o *ContestAllOf) HasGroupStage() bool`

HasGroupStage returns a boolean if a field has been set.

### GetGroupStageLabel

`func (o *ContestAllOf) GetGroupStageLabel() string`

GetGroupStageLabel returns the GroupStageLabel field if non-nil, zero value otherwise.

### GetGroupStageLabelOk

`func (o *ContestAllOf) GetGroupStageLabelOk() (*string, bool)`

GetGroupStageLabelOk returns a tuple with the GroupStageLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroupStageLabel

`func (o *ContestAllOf) SetGroupStageLabel(v string)`

SetGroupStageLabel sets GroupStageLabel field to given value.

### HasGroupStageLabel

`func (o *ContestAllOf) HasGroupStageLabel() bool`

HasGroupStageLabel returns a boolean if a field has been set.

### GetMaxNumberOfEntrants

`func (o *ContestAllOf) GetMaxNumberOfEntrants() int32`

GetMaxNumberOfEntrants returns the MaxNumberOfEntrants field if non-nil, zero value otherwise.

### GetMaxNumberOfEntrantsOk

`func (o *ContestAllOf) GetMaxNumberOfEntrantsOk() (*int32, bool)`

GetMaxNumberOfEntrantsOk returns a tuple with the MaxNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxNumberOfEntrants

`func (o *ContestAllOf) SetMaxNumberOfEntrants(v int32)`

SetMaxNumberOfEntrants sets MaxNumberOfEntrants field to given value.

### HasMaxNumberOfEntrants

`func (o *ContestAllOf) HasMaxNumberOfEntrants() bool`

HasMaxNumberOfEntrants returns a boolean if a field has been set.

### GetMinNumberOfEntrants

`func (o *ContestAllOf) GetMinNumberOfEntrants() int32`

GetMinNumberOfEntrants returns the MinNumberOfEntrants field if non-nil, zero value otherwise.

### GetMinNumberOfEntrantsOk

`func (o *ContestAllOf) GetMinNumberOfEntrantsOk() (*int32, bool)`

GetMinNumberOfEntrantsOk returns a tuple with the MinNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinNumberOfEntrants

`func (o *ContestAllOf) SetMinNumberOfEntrants(v int32)`

SetMinNumberOfEntrants sets MinNumberOfEntrants field to given value.

### HasMinNumberOfEntrants

`func (o *ContestAllOf) HasMinNumberOfEntrants() bool`

HasMinNumberOfEntrants returns a boolean if a field has been set.

### GetScheduledStartDate

`func (o *ContestAllOf) GetScheduledStartDate() time.Time`

GetScheduledStartDate returns the ScheduledStartDate field if non-nil, zero value otherwise.

### GetScheduledStartDateOk

`func (o *ContestAllOf) GetScheduledStartDateOk() (*time.Time, bool)`

GetScheduledStartDateOk returns a tuple with the ScheduledStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledStartDate

`func (o *ContestAllOf) SetScheduledStartDate(v time.Time)`

SetScheduledStartDate sets ScheduledStartDate field to given value.

### HasScheduledStartDate

`func (o *ContestAllOf) HasScheduledStartDate() bool`

HasScheduledStartDate returns a boolean if a field has been set.

### GetScheduledEndDate

`func (o *ContestAllOf) GetScheduledEndDate() time.Time`

GetScheduledEndDate returns the ScheduledEndDate field if non-nil, zero value otherwise.

### GetScheduledEndDateOk

`func (o *ContestAllOf) GetScheduledEndDateOk() (*time.Time, bool)`

GetScheduledEndDateOk returns a tuple with the ScheduledEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledEndDate

`func (o *ContestAllOf) SetScheduledEndDate(v time.Time)`

SetScheduledEndDate sets ScheduledEndDate field to given value.

### HasScheduledEndDate

`func (o *ContestAllOf) HasScheduledEndDate() bool`

HasScheduledEndDate returns a boolean if a field has been set.

### GetActualStartDate

`func (o *ContestAllOf) GetActualStartDate() time.Time`

GetActualStartDate returns the ActualStartDate field if non-nil, zero value otherwise.

### GetActualStartDateOk

`func (o *ContestAllOf) GetActualStartDateOk() (*time.Time, bool)`

GetActualStartDateOk returns a tuple with the ActualStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualStartDate

`func (o *ContestAllOf) SetActualStartDate(v time.Time)`

SetActualStartDate sets ActualStartDate field to given value.

### HasActualStartDate

`func (o *ContestAllOf) HasActualStartDate() bool`

HasActualStartDate returns a boolean if a field has been set.

### GetActualEndDate

`func (o *ContestAllOf) GetActualEndDate() time.Time`

GetActualEndDate returns the ActualEndDate field if non-nil, zero value otherwise.

### GetActualEndDateOk

`func (o *ContestAllOf) GetActualEndDateOk() (*time.Time, bool)`

GetActualEndDateOk returns a tuple with the ActualEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualEndDate

`func (o *ContestAllOf) SetActualEndDate(v time.Time)`

SetActualEndDate sets ActualEndDate field to given value.

### HasActualEndDate

`func (o *ContestAllOf) HasActualEndDate() bool`

HasActualEndDate returns a boolean if a field has been set.

### GetStrategies

`func (o *ContestAllOf) GetStrategies() Strategy`

GetStrategies returns the Strategies field if non-nil, zero value otherwise.

### GetStrategiesOk

`func (o *ContestAllOf) GetStrategiesOk() (*Strategy, bool)`

GetStrategiesOk returns a tuple with the Strategies field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategies

`func (o *ContestAllOf) SetStrategies(v Strategy)`

SetStrategies sets Strategies field to given value.

### HasStrategies

`func (o *ContestAllOf) HasStrategies() bool`

HasStrategies returns a boolean if a field has been set.

### GetStatus

`func (o *ContestAllOf) GetStatus() ContestStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ContestAllOf) GetStatusOk() (*ContestStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ContestAllOf) SetStatus(v ContestStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ContestAllOf) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusCode

`func (o *ContestAllOf) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *ContestAllOf) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *ContestAllOf) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *ContestAllOf) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetMemberTagsFilter

`func (o *ContestAllOf) GetMemberTagsFilter() DependantOn`

GetMemberTagsFilter returns the MemberTagsFilter field if non-nil, zero value otherwise.

### GetMemberTagsFilterOk

`func (o *ContestAllOf) GetMemberTagsFilterOk() (*DependantOn, bool)`

GetMemberTagsFilterOk returns a tuple with the MemberTagsFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberTagsFilter

`func (o *ContestAllOf) SetMemberTagsFilter(v DependantOn)`

SetMemberTagsFilter sets MemberTagsFilter field to given value.

### HasMemberTagsFilter

`func (o *ContestAllOf) HasMemberTagsFilter() bool`

HasMemberTagsFilter returns a boolean if a field has been set.

### GetConstraints

`func (o *ContestAllOf) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *ContestAllOf) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *ContestAllOf) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *ContestAllOf) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


