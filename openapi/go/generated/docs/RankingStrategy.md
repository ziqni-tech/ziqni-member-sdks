# RankingStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Constraints** | Pointer to **[]string** | scoreDesc - The Ranking that can be Ascending or Descending based on timeDesc. timeDesc - The Ranking that can be Ascending or Descending based on scoreDesc. scoreFirst - The Ranking that can be score first or time first ignoreTime - The Ranking when time is ignored ignoreScore - The Ranking when score is ignored | [optional] 

## Methods

### NewRankingStrategy

`func NewRankingStrategy() *RankingStrategy`

NewRankingStrategy instantiates a new RankingStrategy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRankingStrategyWithDefaults

`func NewRankingStrategyWithDefaults() *RankingStrategy`

NewRankingStrategyWithDefaults instantiates a new RankingStrategy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetConstraints

`func (o *RankingStrategy) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *RankingStrategy) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *RankingStrategy) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *RankingStrategy) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


