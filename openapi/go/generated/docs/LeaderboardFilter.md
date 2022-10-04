# LeaderboardFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TopRanksToInclude** | **int32** | Include rank from one [1] to the rank specified here. The maximum allowed is 50 | 
**RanksAboveToInclude** | Pointer to **int32** | Include ranks above member position. The maximum allowed is 20 | [optional] 
**RanksBelowToInclude** | Pointer to **int32** | Include ranks below member position. The maximum allowed is 20 | [optional] 

## Methods

### NewLeaderboardFilter

`func NewLeaderboardFilter(topRanksToInclude int32, ) *LeaderboardFilter`

NewLeaderboardFilter instantiates a new LeaderboardFilter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLeaderboardFilterWithDefaults

`func NewLeaderboardFilterWithDefaults() *LeaderboardFilter`

NewLeaderboardFilterWithDefaults instantiates a new LeaderboardFilter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTopRanksToInclude

`func (o *LeaderboardFilter) GetTopRanksToInclude() int32`

GetTopRanksToInclude returns the TopRanksToInclude field if non-nil, zero value otherwise.

### GetTopRanksToIncludeOk

`func (o *LeaderboardFilter) GetTopRanksToIncludeOk() (*int32, bool)`

GetTopRanksToIncludeOk returns a tuple with the TopRanksToInclude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopRanksToInclude

`func (o *LeaderboardFilter) SetTopRanksToInclude(v int32)`

SetTopRanksToInclude sets TopRanksToInclude field to given value.


### GetRanksAboveToInclude

`func (o *LeaderboardFilter) GetRanksAboveToInclude() int32`

GetRanksAboveToInclude returns the RanksAboveToInclude field if non-nil, zero value otherwise.

### GetRanksAboveToIncludeOk

`func (o *LeaderboardFilter) GetRanksAboveToIncludeOk() (*int32, bool)`

GetRanksAboveToIncludeOk returns a tuple with the RanksAboveToInclude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRanksAboveToInclude

`func (o *LeaderboardFilter) SetRanksAboveToInclude(v int32)`

SetRanksAboveToInclude sets RanksAboveToInclude field to given value.

### HasRanksAboveToInclude

`func (o *LeaderboardFilter) HasRanksAboveToInclude() bool`

HasRanksAboveToInclude returns a boolean if a field has been set.

### GetRanksBelowToInclude

`func (o *LeaderboardFilter) GetRanksBelowToInclude() int32`

GetRanksBelowToInclude returns the RanksBelowToInclude field if non-nil, zero value otherwise.

### GetRanksBelowToIncludeOk

`func (o *LeaderboardFilter) GetRanksBelowToIncludeOk() (*int32, bool)`

GetRanksBelowToIncludeOk returns a tuple with the RanksBelowToInclude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRanksBelowToInclude

`func (o *LeaderboardFilter) SetRanksBelowToInclude(v int32)`

SetRanksBelowToInclude sets RanksBelowToInclude field to given value.

### HasRanksBelowToInclude

`func (o *LeaderboardFilter) HasRanksBelowToInclude() bool`

HasRanksBelowToInclude returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


