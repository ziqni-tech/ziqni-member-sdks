# CompetitionFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tags** | Pointer to **[]string** |  | [optional] 
**StartDate** | Pointer to [**DateRange**](DateRange.md) |  | [optional] 
**EndDate** | Pointer to [**DateRange**](DateRange.md) |  | [optional] 
**ProductIds** | Pointer to **[]string** |  | [optional] 
**StatusCode** | Pointer to [**NumberRange**](NumberRange.md) |  | [optional] 
**Status** | Pointer to [**[]CompetitionStatus**](CompetitionStatus.md) |  | [optional] 
**SortBy** | Pointer to [**[]QuerySortBy**](QuerySortBy.md) |  | [optional] 
**Ids** | Pointer to **[]string** |  | [optional] 
**Skip** | Pointer to **int32** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 
**Constraints** | Pointer to **[]string** | Specify the constraints that need to be applied to the filter. | [optional] 

## Methods

### NewCompetitionFilter

`func NewCompetitionFilter() *CompetitionFilter`

NewCompetitionFilter instantiates a new CompetitionFilter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCompetitionFilterWithDefaults

`func NewCompetitionFilterWithDefaults() *CompetitionFilter`

NewCompetitionFilterWithDefaults instantiates a new CompetitionFilter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTags

`func (o *CompetitionFilter) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *CompetitionFilter) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *CompetitionFilter) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *CompetitionFilter) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetStartDate

`func (o *CompetitionFilter) GetStartDate() DateRange`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *CompetitionFilter) GetStartDateOk() (*DateRange, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *CompetitionFilter) SetStartDate(v DateRange)`

SetStartDate sets StartDate field to given value.

### HasStartDate

`func (o *CompetitionFilter) HasStartDate() bool`

HasStartDate returns a boolean if a field has been set.

### GetEndDate

`func (o *CompetitionFilter) GetEndDate() DateRange`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *CompetitionFilter) GetEndDateOk() (*DateRange, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *CompetitionFilter) SetEndDate(v DateRange)`

SetEndDate sets EndDate field to given value.

### HasEndDate

`func (o *CompetitionFilter) HasEndDate() bool`

HasEndDate returns a boolean if a field has been set.

### GetProductIds

`func (o *CompetitionFilter) GetProductIds() []string`

GetProductIds returns the ProductIds field if non-nil, zero value otherwise.

### GetProductIdsOk

`func (o *CompetitionFilter) GetProductIdsOk() (*[]string, bool)`

GetProductIdsOk returns a tuple with the ProductIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProductIds

`func (o *CompetitionFilter) SetProductIds(v []string)`

SetProductIds sets ProductIds field to given value.

### HasProductIds

`func (o *CompetitionFilter) HasProductIds() bool`

HasProductIds returns a boolean if a field has been set.

### GetStatusCode

`func (o *CompetitionFilter) GetStatusCode() NumberRange`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *CompetitionFilter) GetStatusCodeOk() (*NumberRange, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *CompetitionFilter) SetStatusCode(v NumberRange)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *CompetitionFilter) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetStatus

`func (o *CompetitionFilter) GetStatus() []CompetitionStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *CompetitionFilter) GetStatusOk() (*[]CompetitionStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *CompetitionFilter) SetStatus(v []CompetitionStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *CompetitionFilter) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetSortBy

`func (o *CompetitionFilter) GetSortBy() []QuerySortBy`

GetSortBy returns the SortBy field if non-nil, zero value otherwise.

### GetSortByOk

`func (o *CompetitionFilter) GetSortByOk() (*[]QuerySortBy, bool)`

GetSortByOk returns a tuple with the SortBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSortBy

`func (o *CompetitionFilter) SetSortBy(v []QuerySortBy)`

SetSortBy sets SortBy field to given value.

### HasSortBy

`func (o *CompetitionFilter) HasSortBy() bool`

HasSortBy returns a boolean if a field has been set.

### GetIds

`func (o *CompetitionFilter) GetIds() []string`

GetIds returns the Ids field if non-nil, zero value otherwise.

### GetIdsOk

`func (o *CompetitionFilter) GetIdsOk() (*[]string, bool)`

GetIdsOk returns a tuple with the Ids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIds

`func (o *CompetitionFilter) SetIds(v []string)`

SetIds sets Ids field to given value.

### HasIds

`func (o *CompetitionFilter) HasIds() bool`

HasIds returns a boolean if a field has been set.

### GetSkip

`func (o *CompetitionFilter) GetSkip() int32`

GetSkip returns the Skip field if non-nil, zero value otherwise.

### GetSkipOk

`func (o *CompetitionFilter) GetSkipOk() (*int32, bool)`

GetSkipOk returns a tuple with the Skip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkip

`func (o *CompetitionFilter) SetSkip(v int32)`

SetSkip sets Skip field to given value.

### HasSkip

`func (o *CompetitionFilter) HasSkip() bool`

HasSkip returns a boolean if a field has been set.

### GetLimit

`func (o *CompetitionFilter) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *CompetitionFilter) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *CompetitionFilter) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *CompetitionFilter) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetConstraints

`func (o *CompetitionFilter) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *CompetitionFilter) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *CompetitionFilter) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *CompetitionFilter) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


