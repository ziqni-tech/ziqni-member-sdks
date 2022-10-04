# AchievementFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductIds** | Pointer to **[]string** |  | [optional] 
**Tags** | Pointer to **[]string** |  | [optional] 
**StartDate** | Pointer to [**DateRange**](DateRange.md) |  | [optional] 
**EndDate** | Pointer to [**DateRange**](DateRange.md) |  | [optional] 
**Ids** | Pointer to **[]string** |  | [optional] 
**Status** | Pointer to **[]string** | Achievement status | [optional] 
**SortBy** | Pointer to [**[]QuerySortBy**](QuerySortBy.md) |  | [optional] 
**Skip** | Pointer to **int32** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 
**StatusCode** | Pointer to [**NumberRange**](NumberRange.md) |  | [optional] 
**Constraints** | Pointer to **[]string** | Specify the constraints that need to be applied to the filter. | [optional] 

## Methods

### NewAchievementFilter

`func NewAchievementFilter() *AchievementFilter`

NewAchievementFilter instantiates a new AchievementFilter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAchievementFilterWithDefaults

`func NewAchievementFilterWithDefaults() *AchievementFilter`

NewAchievementFilterWithDefaults instantiates a new AchievementFilter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProductIds

`func (o *AchievementFilter) GetProductIds() []string`

GetProductIds returns the ProductIds field if non-nil, zero value otherwise.

### GetProductIdsOk

`func (o *AchievementFilter) GetProductIdsOk() (*[]string, bool)`

GetProductIdsOk returns a tuple with the ProductIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProductIds

`func (o *AchievementFilter) SetProductIds(v []string)`

SetProductIds sets ProductIds field to given value.

### HasProductIds

`func (o *AchievementFilter) HasProductIds() bool`

HasProductIds returns a boolean if a field has been set.

### GetTags

`func (o *AchievementFilter) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *AchievementFilter) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *AchievementFilter) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *AchievementFilter) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetStartDate

`func (o *AchievementFilter) GetStartDate() DateRange`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *AchievementFilter) GetStartDateOk() (*DateRange, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *AchievementFilter) SetStartDate(v DateRange)`

SetStartDate sets StartDate field to given value.

### HasStartDate

`func (o *AchievementFilter) HasStartDate() bool`

HasStartDate returns a boolean if a field has been set.

### GetEndDate

`func (o *AchievementFilter) GetEndDate() DateRange`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *AchievementFilter) GetEndDateOk() (*DateRange, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *AchievementFilter) SetEndDate(v DateRange)`

SetEndDate sets EndDate field to given value.

### HasEndDate

`func (o *AchievementFilter) HasEndDate() bool`

HasEndDate returns a boolean if a field has been set.

### GetIds

`func (o *AchievementFilter) GetIds() []string`

GetIds returns the Ids field if non-nil, zero value otherwise.

### GetIdsOk

`func (o *AchievementFilter) GetIdsOk() (*[]string, bool)`

GetIdsOk returns a tuple with the Ids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIds

`func (o *AchievementFilter) SetIds(v []string)`

SetIds sets Ids field to given value.

### HasIds

`func (o *AchievementFilter) HasIds() bool`

HasIds returns a boolean if a field has been set.

### GetStatus

`func (o *AchievementFilter) GetStatus() []string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AchievementFilter) GetStatusOk() (*[]string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AchievementFilter) SetStatus(v []string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AchievementFilter) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetSortBy

`func (o *AchievementFilter) GetSortBy() []QuerySortBy`

GetSortBy returns the SortBy field if non-nil, zero value otherwise.

### GetSortByOk

`func (o *AchievementFilter) GetSortByOk() (*[]QuerySortBy, bool)`

GetSortByOk returns a tuple with the SortBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSortBy

`func (o *AchievementFilter) SetSortBy(v []QuerySortBy)`

SetSortBy sets SortBy field to given value.

### HasSortBy

`func (o *AchievementFilter) HasSortBy() bool`

HasSortBy returns a boolean if a field has been set.

### GetSkip

`func (o *AchievementFilter) GetSkip() int32`

GetSkip returns the Skip field if non-nil, zero value otherwise.

### GetSkipOk

`func (o *AchievementFilter) GetSkipOk() (*int32, bool)`

GetSkipOk returns a tuple with the Skip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkip

`func (o *AchievementFilter) SetSkip(v int32)`

SetSkip sets Skip field to given value.

### HasSkip

`func (o *AchievementFilter) HasSkip() bool`

HasSkip returns a boolean if a field has been set.

### GetLimit

`func (o *AchievementFilter) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *AchievementFilter) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *AchievementFilter) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *AchievementFilter) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetStatusCode

`func (o *AchievementFilter) GetStatusCode() NumberRange`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *AchievementFilter) GetStatusCodeOk() (*NumberRange, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *AchievementFilter) SetStatusCode(v NumberRange)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *AchievementFilter) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetConstraints

`func (o *AchievementFilter) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *AchievementFilter) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *AchievementFilter) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *AchievementFilter) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


