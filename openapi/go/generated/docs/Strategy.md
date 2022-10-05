# Strategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StrategyType** | Pointer to [**StrategyType**](StrategyType.md) |  | [optional] 
**RankingStrategy** | Pointer to [**RankingStrategy**](RankingStrategy.md) |  | [optional] 
**ScoringStrategy** | Pointer to [**ScoringStrategy**](ScoringStrategy.md) |  | [optional] 

## Methods

### NewStrategy

`func NewStrategy() *Strategy`

NewStrategy instantiates a new Strategy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStrategyWithDefaults

`func NewStrategyWithDefaults() *Strategy`

NewStrategyWithDefaults instantiates a new Strategy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStrategyType

`func (o *Strategy) GetStrategyType() StrategyType`

GetStrategyType returns the StrategyType field if non-nil, zero value otherwise.

### GetStrategyTypeOk

`func (o *Strategy) GetStrategyTypeOk() (*StrategyType, bool)`

GetStrategyTypeOk returns a tuple with the StrategyType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategyType

`func (o *Strategy) SetStrategyType(v StrategyType)`

SetStrategyType sets StrategyType field to given value.

### HasStrategyType

`func (o *Strategy) HasStrategyType() bool`

HasStrategyType returns a boolean if a field has been set.

### GetRankingStrategy

`func (o *Strategy) GetRankingStrategy() RankingStrategy`

GetRankingStrategy returns the RankingStrategy field if non-nil, zero value otherwise.

### GetRankingStrategyOk

`func (o *Strategy) GetRankingStrategyOk() (*RankingStrategy, bool)`

GetRankingStrategyOk returns a tuple with the RankingStrategy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRankingStrategy

`func (o *Strategy) SetRankingStrategy(v RankingStrategy)`

SetRankingStrategy sets RankingStrategy field to given value.

### HasRankingStrategy

`func (o *Strategy) HasRankingStrategy() bool`

HasRankingStrategy returns a boolean if a field has been set.

### GetScoringStrategy

`func (o *Strategy) GetScoringStrategy() ScoringStrategy`

GetScoringStrategy returns the ScoringStrategy field if non-nil, zero value otherwise.

### GetScoringStrategyOk

`func (o *Strategy) GetScoringStrategyOk() (*ScoringStrategy, bool)`

GetScoringStrategyOk returns a tuple with the ScoringStrategy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScoringStrategy

`func (o *Strategy) SetScoringStrategy(v ScoringStrategy)`

SetScoringStrategy sets ScoringStrategy field to given value.

### HasScoringStrategy

`func (o *Strategy) HasScoringStrategy() bool`

HasScoringStrategy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


