# LeaderboardSubscriptionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeaderboardFilter** | Pointer to [**LeaderboardFilter**](LeaderboardFilter.md) |  | [optional] 
**EntityId** | **string** | Either the competition, contest, tournament or match identifier | 
**Action** | **string** | Either subscribe or unsubscribe from the data feed | 

## Methods

### NewLeaderboardSubscriptionRequest

`func NewLeaderboardSubscriptionRequest(entityId string, action string, ) *LeaderboardSubscriptionRequest`

NewLeaderboardSubscriptionRequest instantiates a new LeaderboardSubscriptionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLeaderboardSubscriptionRequestWithDefaults

`func NewLeaderboardSubscriptionRequestWithDefaults() *LeaderboardSubscriptionRequest`

NewLeaderboardSubscriptionRequestWithDefaults instantiates a new LeaderboardSubscriptionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLeaderboardFilter

`func (o *LeaderboardSubscriptionRequest) GetLeaderboardFilter() LeaderboardFilter`

GetLeaderboardFilter returns the LeaderboardFilter field if non-nil, zero value otherwise.

### GetLeaderboardFilterOk

`func (o *LeaderboardSubscriptionRequest) GetLeaderboardFilterOk() (*LeaderboardFilter, bool)`

GetLeaderboardFilterOk returns a tuple with the LeaderboardFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLeaderboardFilter

`func (o *LeaderboardSubscriptionRequest) SetLeaderboardFilter(v LeaderboardFilter)`

SetLeaderboardFilter sets LeaderboardFilter field to given value.

### HasLeaderboardFilter

`func (o *LeaderboardSubscriptionRequest) HasLeaderboardFilter() bool`

HasLeaderboardFilter returns a boolean if a field has been set.

### GetEntityId

`func (o *LeaderboardSubscriptionRequest) GetEntityId() string`

GetEntityId returns the EntityId field if non-nil, zero value otherwise.

### GetEntityIdOk

`func (o *LeaderboardSubscriptionRequest) GetEntityIdOk() (*string, bool)`

GetEntityIdOk returns a tuple with the EntityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityId

`func (o *LeaderboardSubscriptionRequest) SetEntityId(v string)`

SetEntityId sets EntityId field to given value.


### GetAction

`func (o *LeaderboardSubscriptionRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *LeaderboardSubscriptionRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *LeaderboardSubscriptionRequest) SetAction(v string)`

SetAction sets Action field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


