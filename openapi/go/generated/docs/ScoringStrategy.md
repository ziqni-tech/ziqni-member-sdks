# ScoringStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LimitUpdatesTo** | Pointer to **int32** | The scoring strategies types \&quot;SumBest\&quot; value | [optional] 
**SumBestXOf** | Pointer to **int32** | The scoring strategies types \&quot;LimitedTo\&quot; value | [optional] 
**LastUpdateTimeStamp** | Pointer to **int64** | The scoring strategies types \&quot;FirstTo\&quot; value | [optional] 
**RecordTimeWhenSumReaches** | Pointer to **float64** | Not supported at the moment | [optional] 

## Methods

### NewScoringStrategy

`func NewScoringStrategy() *ScoringStrategy`

NewScoringStrategy instantiates a new ScoringStrategy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewScoringStrategyWithDefaults

`func NewScoringStrategyWithDefaults() *ScoringStrategy`

NewScoringStrategyWithDefaults instantiates a new ScoringStrategy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLimitUpdatesTo

`func (o *ScoringStrategy) GetLimitUpdatesTo() int32`

GetLimitUpdatesTo returns the LimitUpdatesTo field if non-nil, zero value otherwise.

### GetLimitUpdatesToOk

`func (o *ScoringStrategy) GetLimitUpdatesToOk() (*int32, bool)`

GetLimitUpdatesToOk returns a tuple with the LimitUpdatesTo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitUpdatesTo

`func (o *ScoringStrategy) SetLimitUpdatesTo(v int32)`

SetLimitUpdatesTo sets LimitUpdatesTo field to given value.

### HasLimitUpdatesTo

`func (o *ScoringStrategy) HasLimitUpdatesTo() bool`

HasLimitUpdatesTo returns a boolean if a field has been set.

### GetSumBestXOf

`func (o *ScoringStrategy) GetSumBestXOf() int32`

GetSumBestXOf returns the SumBestXOf field if non-nil, zero value otherwise.

### GetSumBestXOfOk

`func (o *ScoringStrategy) GetSumBestXOfOk() (*int32, bool)`

GetSumBestXOfOk returns a tuple with the SumBestXOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSumBestXOf

`func (o *ScoringStrategy) SetSumBestXOf(v int32)`

SetSumBestXOf sets SumBestXOf field to given value.

### HasSumBestXOf

`func (o *ScoringStrategy) HasSumBestXOf() bool`

HasSumBestXOf returns a boolean if a field has been set.

### GetLastUpdateTimeStamp

`func (o *ScoringStrategy) GetLastUpdateTimeStamp() int64`

GetLastUpdateTimeStamp returns the LastUpdateTimeStamp field if non-nil, zero value otherwise.

### GetLastUpdateTimeStampOk

`func (o *ScoringStrategy) GetLastUpdateTimeStampOk() (*int64, bool)`

GetLastUpdateTimeStampOk returns a tuple with the LastUpdateTimeStamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUpdateTimeStamp

`func (o *ScoringStrategy) SetLastUpdateTimeStamp(v int64)`

SetLastUpdateTimeStamp sets LastUpdateTimeStamp field to given value.

### HasLastUpdateTimeStamp

`func (o *ScoringStrategy) HasLastUpdateTimeStamp() bool`

HasLastUpdateTimeStamp returns a boolean if a field has been set.

### GetRecordTimeWhenSumReaches

`func (o *ScoringStrategy) GetRecordTimeWhenSumReaches() float64`

GetRecordTimeWhenSumReaches returns the RecordTimeWhenSumReaches field if non-nil, zero value otherwise.

### GetRecordTimeWhenSumReachesOk

`func (o *ScoringStrategy) GetRecordTimeWhenSumReachesOk() (*float64, bool)`

GetRecordTimeWhenSumReachesOk returns a tuple with the RecordTimeWhenSumReaches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecordTimeWhenSumReaches

`func (o *ScoringStrategy) SetRecordTimeWhenSumReaches(v float64)`

SetRecordTimeWhenSumReaches sets RecordTimeWhenSumReaches field to given value.

### HasRecordTimeWhenSumReaches

`func (o *ScoringStrategy) HasRecordTimeWhenSumReaches() bool`

HasRecordTimeWhenSumReaches returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


