# AchievementResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meta** | Pointer to [**ResponseMeta**](ResponseMeta.md) |  | [optional] 
**Data** | Pointer to [**[]Achievement**](Achievement.md) |  | [optional] 
**Errors** | Pointer to [**[]Error**](Error.md) |  | [optional] 

## Methods

### NewAchievementResponse

`func NewAchievementResponse() *AchievementResponse`

NewAchievementResponse instantiates a new AchievementResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAchievementResponseWithDefaults

`func NewAchievementResponseWithDefaults() *AchievementResponse`

NewAchievementResponseWithDefaults instantiates a new AchievementResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeta

`func (o *AchievementResponse) GetMeta() ResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AchievementResponse) GetMetaOk() (*ResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AchievementResponse) SetMeta(v ResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AchievementResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetData

`func (o *AchievementResponse) GetData() []Achievement`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AchievementResponse) GetDataOk() (*[]Achievement, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AchievementResponse) SetData(v []Achievement)`

SetData sets Data field to given value.

### HasData

`func (o *AchievementResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErrors

`func (o *AchievementResponse) GetErrors() []Error`

GetErrors returns the Errors field if non-nil, zero value otherwise.

### GetErrorsOk

`func (o *AchievementResponse) GetErrorsOk() (*[]Error, bool)`

GetErrorsOk returns a tuple with the Errors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrors

`func (o *AchievementResponse) SetErrors(v []Error)`

SetErrors sets Errors field to given value.

### HasErrors

`func (o *AchievementResponse) HasErrors() bool`

HasErrors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


