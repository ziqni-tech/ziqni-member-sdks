# EntityChangeSubscriptionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meta** | Pointer to [**ResponseMeta**](ResponseMeta.md) |  | [optional] 
**Data** | Pointer to [**[]EntityChangeSubscription**](EntityChangeSubscription.md) |  | [optional] 
**Errors** | Pointer to [**[]Error**](Error.md) |  | [optional] 

## Methods

### NewEntityChangeSubscriptionResponse

`func NewEntityChangeSubscriptionResponse() *EntityChangeSubscriptionResponse`

NewEntityChangeSubscriptionResponse instantiates a new EntityChangeSubscriptionResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEntityChangeSubscriptionResponseWithDefaults

`func NewEntityChangeSubscriptionResponseWithDefaults() *EntityChangeSubscriptionResponse`

NewEntityChangeSubscriptionResponseWithDefaults instantiates a new EntityChangeSubscriptionResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeta

`func (o *EntityChangeSubscriptionResponse) GetMeta() ResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *EntityChangeSubscriptionResponse) GetMetaOk() (*ResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *EntityChangeSubscriptionResponse) SetMeta(v ResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *EntityChangeSubscriptionResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetData

`func (o *EntityChangeSubscriptionResponse) GetData() []EntityChangeSubscription`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *EntityChangeSubscriptionResponse) GetDataOk() (*[]EntityChangeSubscription, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *EntityChangeSubscriptionResponse) SetData(v []EntityChangeSubscription)`

SetData sets Data field to given value.

### HasData

`func (o *EntityChangeSubscriptionResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErrors

`func (o *EntityChangeSubscriptionResponse) GetErrors() []Error`

GetErrors returns the Errors field if non-nil, zero value otherwise.

### GetErrorsOk

`func (o *EntityChangeSubscriptionResponse) GetErrorsOk() (*[]Error, bool)`

GetErrorsOk returns a tuple with the Errors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrors

`func (o *EntityChangeSubscriptionResponse) SetErrors(v []Error)`

SetErrors sets Errors field to given value.

### HasErrors

`func (o *EntityChangeSubscriptionResponse) HasErrors() bool`

HasErrors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


