# ContestFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductIds** | Pointer to **[]string** |  | [optional] 
**Tags** | Pointer to **[]string** |  | [optional] 
**StartDate** | Pointer to [**DateRange**](DateRange.md) |  | [optional] 
**EndDate** | Pointer to [**DateRange**](DateRange.md) |  | [optional] 
**SortBy** | Pointer to [**[]QuerySortBy**](QuerySortBy.md) |  | [optional] 
**Ids** | Pointer to **[]string** |  | [optional] 
**CompetitionIds** | Pointer to **[]string** |  | [optional] 
**Status** | Pointer to **[]string** |  | [optional] 
**Skip** | Pointer to **int32** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 
**StatusCode** | Pointer to [**NumberRange**](NumberRange.md) |  | [optional] 
**Constraints** | Pointer to **[]string** | Specify the constraints that need to be applied to the filter. | [optional] 

## Methods

### NewContestFilter

`func NewContestFilter() *ContestFilter`

NewContestFilter instantiates a new ContestFilter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContestFilterWithDefaults

`func NewContestFilterWithDefaults() *ContestFilter`

NewContestFilterWithDefaults instantiates a new ContestFilter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProductIds

`func (o *ContestFilter) GetProductIds() []string`

GetProductIds returns the ProductIds field if non-nil, zero value otherwise.

### GetProductIdsOk

`func (o *ContestFilter) GetProductIdsOk() (*[]string, bool)`

GetProductIdsOk returns a tuple with the ProductIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProductIds

`func (o *ContestFilter) SetProductIds(v []string)`

SetProductIds sets ProductIds field to given value.

### HasProductIds

`func (o *ContestFilter) HasProductIds() bool`

HasProductIds returns a boolean if a field has been set.

### GetTags

`func (o *ContestFilter) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *ContestFilter) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *ContestFilter) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *ContestFilter) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetStartDate

`func (o *ContestFilter) GetStartDate() DateRange`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *ContestFilter) GetStartDateOk() (*DateRange, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *ContestFilter) SetStartDate(v DateRange)`

SetStartDate sets StartDate field to given value.

### HasStartDate

`func (o *ContestFilter) HasStartDate() bool`

HasStartDate returns a boolean if a field has been set.

### GetEndDate

`func (o *ContestFilter) GetEndDate() DateRange`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *ContestFilter) GetEndDateOk() (*DateRange, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *ContestFilter) SetEndDate(v DateRange)`

SetEndDate sets EndDate field to given value.

### HasEndDate

`func (o *ContestFilter) HasEndDate() bool`

HasEndDate returns a boolean if a field has been set.

### GetSortBy

`func (o *ContestFilter) GetSortBy() []QuerySortBy`

GetSortBy returns the SortBy field if non-nil, zero value otherwise.

### GetSortByOk

`func (o *ContestFilter) GetSortByOk() (*[]QuerySortBy, bool)`

GetSortByOk returns a tuple with the SortBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSortBy

`func (o *ContestFilter) SetSortBy(v []QuerySortBy)`

SetSortBy sets SortBy field to given value.

### HasSortBy

`func (o *ContestFilter) HasSortBy() bool`

HasSortBy returns a boolean if a field has been set.

### GetIds

`func (o *ContestFilter) GetIds() []string`

GetIds returns the Ids field if non-nil, zero value otherwise.

### GetIdsOk

`func (o *ContestFilter) GetIdsOk() (*[]string, bool)`

GetIdsOk returns a tuple with the Ids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIds

`func (o *ContestFilter) SetIds(v []string)`

SetIds sets Ids field to given value.

### HasIds

`func (o *ContestFilter) HasIds() bool`

HasIds returns a boolean if a field has been set.

### GetCompetitionIds

`func (o *ContestFilter) GetCompetitionIds() []string`

GetCompetitionIds returns the CompetitionIds field if non-nil, zero value otherwise.

### GetCompetitionIdsOk

`func (o *ContestFilter) GetCompetitionIdsOk() (*[]string, bool)`

GetCompetitionIdsOk returns a tuple with the CompetitionIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompetitionIds

`func (o *ContestFilter) SetCompetitionIds(v []string)`

SetCompetitionIds sets CompetitionIds field to given value.

### HasCompetitionIds

`func (o *ContestFilter) HasCompetitionIds() bool`

HasCompetitionIds returns a boolean if a field has been set.

### GetStatus

`func (o *ContestFilter) GetStatus() []string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ContestFilter) GetStatusOk() (*[]string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ContestFilter) SetStatus(v []string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ContestFilter) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetSkip

`func (o *ContestFilter) GetSkip() int32`

GetSkip returns the Skip field if non-nil, zero value otherwise.

### GetSkipOk

`func (o *ContestFilter) GetSkipOk() (*int32, bool)`

GetSkipOk returns a tuple with the Skip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkip

`func (o *ContestFilter) SetSkip(v int32)`

SetSkip sets Skip field to given value.

### HasSkip

`func (o *ContestFilter) HasSkip() bool`

HasSkip returns a boolean if a field has been set.

### GetLimit

`func (o *ContestFilter) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *ContestFilter) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *ContestFilter) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *ContestFilter) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetStatusCode

`func (o *ContestFilter) GetStatusCode() NumberRange`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *ContestFilter) GetStatusCodeOk() (*NumberRange, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *ContestFilter) SetStatusCode(v NumberRange)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *ContestFilter) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetConstraints

`func (o *ContestFilter) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *ContestFilter) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *ContestFilter) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *ContestFilter) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


