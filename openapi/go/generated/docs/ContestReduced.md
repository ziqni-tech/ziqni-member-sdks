# ContestReduced

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CompetitionId** | Pointer to **string** | A unique identifier of a Competition | [optional] 
**Row** | Pointer to **int32** | The row number for displaying the Contest in a table | [optional] 
**Name** | Pointer to **string** | A name for the Contest. Can be translated | [optional] 
**Round** | Pointer to **int32** | To what round does the contest belong | [optional] 
**GroupStage** | Pointer to **int32** | Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2 | [optional] 
**EntrantsFromContest** | Pointer to **[]string** | A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional. | [optional] 
**Status** | Pointer to [**ContestStatus**](ContestStatus.md) |  | [optional] 
**StatusCode** | Pointer to **int32** | The code of the contest | [optional] [readonly] 
**ScheduledStartDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone | [optional] 
**ScheduledEndDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone | [optional] 
**ActualStartDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Contest started. All records are stored in UTC time zone | [optional] [readonly] 
**ActualEndDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Contest ended. All records are stored in UTC time zone | [optional] [readonly] 
**Tags** | Pointer to **[]string** | A list of id&#39;s used to tag | [optional] 
**Rewards** | Pointer to [**[]RewardReduced**](RewardReduced.md) |  | [optional] 

## Methods

### NewContestReduced

`func NewContestReduced() *ContestReduced`

NewContestReduced instantiates a new ContestReduced object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContestReducedWithDefaults

`func NewContestReducedWithDefaults() *ContestReduced`

NewContestReducedWithDefaults instantiates a new ContestReduced object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCompetitionId

`func (o *ContestReduced) GetCompetitionId() string`

GetCompetitionId returns the CompetitionId field if non-nil, zero value otherwise.

### GetCompetitionIdOk

`func (o *ContestReduced) GetCompetitionIdOk() (*string, bool)`

GetCompetitionIdOk returns a tuple with the CompetitionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompetitionId

`func (o *ContestReduced) SetCompetitionId(v string)`

SetCompetitionId sets CompetitionId field to given value.

### HasCompetitionId

`func (o *ContestReduced) HasCompetitionId() bool`

HasCompetitionId returns a boolean if a field has been set.

### GetRow

`func (o *ContestReduced) GetRow() int32`

GetRow returns the Row field if non-nil, zero value otherwise.

### GetRowOk

`func (o *ContestReduced) GetRowOk() (*int32, bool)`

GetRowOk returns a tuple with the Row field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRow

`func (o *ContestReduced) SetRow(v int32)`

SetRow sets Row field to given value.

### HasRow

`func (o *ContestReduced) HasRow() bool`

HasRow returns a boolean if a field has been set.

### GetName

`func (o *ContestReduced) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ContestReduced) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ContestReduced) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ContestReduced) HasName() bool`

HasName returns a boolean if a field has been set.

### GetRound

`func (o *ContestReduced) GetRound() int32`

GetRound returns the Round field if non-nil, zero value otherwise.

### GetRoundOk

`func (o *ContestReduced) GetRoundOk() (*int32, bool)`

GetRoundOk returns a tuple with the Round field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRound

`func (o *ContestReduced) SetRound(v int32)`

SetRound sets Round field to given value.

### HasRound

`func (o *ContestReduced) HasRound() bool`

HasRound returns a boolean if a field has been set.

### GetGroupStage

`func (o *ContestReduced) GetGroupStage() int32`

GetGroupStage returns the GroupStage field if non-nil, zero value otherwise.

### GetGroupStageOk

`func (o *ContestReduced) GetGroupStageOk() (*int32, bool)`

GetGroupStageOk returns a tuple with the GroupStage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroupStage

`func (o *ContestReduced) SetGroupStage(v int32)`

SetGroupStage sets GroupStage field to given value.

### HasGroupStage

`func (o *ContestReduced) HasGroupStage() bool`

HasGroupStage returns a boolean if a field has been set.

### GetEntrantsFromContest

`func (o *ContestReduced) GetEntrantsFromContest() []string`

GetEntrantsFromContest returns the EntrantsFromContest field if non-nil, zero value otherwise.

### GetEntrantsFromContestOk

`func (o *ContestReduced) GetEntrantsFromContestOk() (*[]string, bool)`

GetEntrantsFromContestOk returns a tuple with the EntrantsFromContest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntrantsFromContest

`func (o *ContestReduced) SetEntrantsFromContest(v []string)`

SetEntrantsFromContest sets EntrantsFromContest field to given value.

### HasEntrantsFromContest

`func (o *ContestReduced) HasEntrantsFromContest() bool`

HasEntrantsFromContest returns a boolean if a field has been set.

### GetStatus

`func (o *ContestReduced) GetStatus() ContestStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ContestReduced) GetStatusOk() (*ContestStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ContestReduced) SetStatus(v ContestStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ContestReduced) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusCode

`func (o *ContestReduced) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *ContestReduced) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *ContestReduced) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *ContestReduced) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetScheduledStartDate

`func (o *ContestReduced) GetScheduledStartDate() time.Time`

GetScheduledStartDate returns the ScheduledStartDate field if non-nil, zero value otherwise.

### GetScheduledStartDateOk

`func (o *ContestReduced) GetScheduledStartDateOk() (*time.Time, bool)`

GetScheduledStartDateOk returns a tuple with the ScheduledStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledStartDate

`func (o *ContestReduced) SetScheduledStartDate(v time.Time)`

SetScheduledStartDate sets ScheduledStartDate field to given value.

### HasScheduledStartDate

`func (o *ContestReduced) HasScheduledStartDate() bool`

HasScheduledStartDate returns a boolean if a field has been set.

### GetScheduledEndDate

`func (o *ContestReduced) GetScheduledEndDate() time.Time`

GetScheduledEndDate returns the ScheduledEndDate field if non-nil, zero value otherwise.

### GetScheduledEndDateOk

`func (o *ContestReduced) GetScheduledEndDateOk() (*time.Time, bool)`

GetScheduledEndDateOk returns a tuple with the ScheduledEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledEndDate

`func (o *ContestReduced) SetScheduledEndDate(v time.Time)`

SetScheduledEndDate sets ScheduledEndDate field to given value.

### HasScheduledEndDate

`func (o *ContestReduced) HasScheduledEndDate() bool`

HasScheduledEndDate returns a boolean if a field has been set.

### GetActualStartDate

`func (o *ContestReduced) GetActualStartDate() time.Time`

GetActualStartDate returns the ActualStartDate field if non-nil, zero value otherwise.

### GetActualStartDateOk

`func (o *ContestReduced) GetActualStartDateOk() (*time.Time, bool)`

GetActualStartDateOk returns a tuple with the ActualStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualStartDate

`func (o *ContestReduced) SetActualStartDate(v time.Time)`

SetActualStartDate sets ActualStartDate field to given value.

### HasActualStartDate

`func (o *ContestReduced) HasActualStartDate() bool`

HasActualStartDate returns a boolean if a field has been set.

### GetActualEndDate

`func (o *ContestReduced) GetActualEndDate() time.Time`

GetActualEndDate returns the ActualEndDate field if non-nil, zero value otherwise.

### GetActualEndDateOk

`func (o *ContestReduced) GetActualEndDateOk() (*time.Time, bool)`

GetActualEndDateOk returns a tuple with the ActualEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualEndDate

`func (o *ContestReduced) SetActualEndDate(v time.Time)`

SetActualEndDate sets ActualEndDate field to given value.

### HasActualEndDate

`func (o *ContestReduced) HasActualEndDate() bool`

HasActualEndDate returns a boolean if a field has been set.

### GetTags

`func (o *ContestReduced) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *ContestReduced) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *ContestReduced) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *ContestReduced) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetRewards

`func (o *ContestReduced) GetRewards() []RewardReduced`

GetRewards returns the Rewards field if non-nil, zero value otherwise.

### GetRewardsOk

`func (o *ContestReduced) GetRewardsOk() (*[]RewardReduced, bool)`

GetRewardsOk returns a tuple with the Rewards field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRewards

`func (o *ContestReduced) SetRewards(v []RewardReduced)`

SetRewards sets Rewards field to given value.

### HasRewards

`func (o *ContestReduced) HasRewards() bool`

HasRewards returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


