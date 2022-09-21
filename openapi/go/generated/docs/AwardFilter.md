# AwardFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductIds** | Pointer to **[]string** |  | [optional] 
**Tags** | Pointer to **[]string** |  | [optional] 
**StartDate** | Pointer to [**RangeQuery**](RangeQuery.md) |  | [optional] 
**EndDate** | Pointer to [**RangeQuery**](RangeQuery.md) |  | [optional] 
**Ids** | Pointer to **[]string** |  | [optional] 
**Status** | Pointer to **[]string** | Achievement status | [optional] 
**SortBy** | Pointer to [**[]QuerySortBy**](QuerySortBy.md) |  | [optional] 
**Skip** | Pointer to **int32** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 
**StatusCode** | Pointer to **[]int32** | Achievement status code | [optional] 
**Constraints** | Pointer to **[]string** |  | [optional] 

## Methods

### NewAwardFilter

`func NewAwardFilter() *AwardFilter`

NewAwardFilter instantiates a new AwardFilter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAwardFilterWithDefaults

`func NewAwardFilterWithDefaults() *AwardFilter`

NewAwardFilterWithDefaults instantiates a new AwardFilter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProductIds

`func (o *AwardFilter) GetProductIds() []string`

GetProductIds returns the ProductIds field if non-nil, zero value otherwise.

### GetProductIdsOk

`func (o *AwardFilter) GetProductIdsOk() (*[]string, bool)`

GetProductIdsOk returns a tuple with the ProductIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProductIds

`func (o *AwardFilter) SetProductIds(v []string)`

SetProductIds sets ProductIds field to given value.

### HasProductIds

`func (o *AwardFilter) HasProductIds() bool`

HasProductIds returns a boolean if a field has been set.

### GetTags

`func (o *AwardFilter) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *AwardFilter) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *AwardFilter) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *AwardFilter) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetStartDate

`func (o *AwardFilter) GetStartDate() RangeQuery`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *AwardFilter) GetStartDateOk() (*RangeQuery, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *AwardFilter) SetStartDate(v RangeQuery)`

SetStartDate sets StartDate field to given value.

### HasStartDate

`func (o *AwardFilter) HasStartDate() bool`

HasStartDate returns a boolean if a field has been set.

### GetEndDate

`func (o *AwardFilter) GetEndDate() RangeQuery`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *AwardFilter) GetEndDateOk() (*RangeQuery, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *AwardFilter) SetEndDate(v RangeQuery)`

SetEndDate sets EndDate field to given value.

### HasEndDate

`func (o *AwardFilter) HasEndDate() bool`

HasEndDate returns a boolean if a field has been set.

### GetIds

`func (o *AwardFilter) GetIds() []string`

GetIds returns the Ids field if non-nil, zero value otherwise.

### GetIdsOk

`func (o *AwardFilter) GetIdsOk() (*[]string, bool)`

GetIdsOk returns a tuple with the Ids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIds

`func (o *AwardFilter) SetIds(v []string)`

SetIds sets Ids field to given value.

### HasIds

`func (o *AwardFilter) HasIds() bool`

HasIds returns a boolean if a field has been set.

### GetStatus

`func (o *AwardFilter) GetStatus() []string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AwardFilter) GetStatusOk() (*[]string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AwardFilter) SetStatus(v []string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AwardFilter) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetSortBy

`func (o *AwardFilter) GetSortBy() []QuerySortBy`

GetSortBy returns the SortBy field if non-nil, zero value otherwise.

### GetSortByOk

`func (o *AwardFilter) GetSortByOk() (*[]QuerySortBy, bool)`

GetSortByOk returns a tuple with the SortBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSortBy

`func (o *AwardFilter) SetSortBy(v []QuerySortBy)`

SetSortBy sets SortBy field to given value.

### HasSortBy

`func (o *AwardFilter) HasSortBy() bool`

HasSortBy returns a boolean if a field has been set.

### GetSkip

`func (o *AwardFilter) GetSkip() int32`

GetSkip returns the Skip field if non-nil, zero value otherwise.

### GetSkipOk

`func (o *AwardFilter) GetSkipOk() (*int32, bool)`

GetSkipOk returns a tuple with the Skip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkip

`func (o *AwardFilter) SetSkip(v int32)`

SetSkip sets Skip field to given value.

### HasSkip

`func (o *AwardFilter) HasSkip() bool`

HasSkip returns a boolean if a field has been set.

### GetLimit

`func (o *AwardFilter) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *AwardFilter) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *AwardFilter) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *AwardFilter) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetStatusCode

`func (o *AwardFilter) GetStatusCode() []int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *AwardFilter) GetStatusCodeOk() (*[]int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *AwardFilter) SetStatusCode(v []int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *AwardFilter) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetConstraints

`func (o *AwardFilter) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *AwardFilter) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *AwardFilter) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *AwardFilter) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


