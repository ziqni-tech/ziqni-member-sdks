# MessageAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventRefType** | Pointer to [**EventRefType**](EventRefType.md) |  | [optional] 
**EventRefId** | Pointer to **string** | The reference ID of the event object | [optional] 
**MessageType** | Pointer to [**MessageType**](MessageType.md) |  | [optional] 
**Subject** | Pointer to **string** | The title of the message | [optional] 
**Body** | Pointer to **string** | The context of the message | [optional] 
**Prize** | Pointer to **string** | Unique system identifier of an Award | [optional] [readonly] 
**Status** | Pointer to [**MessageStatus**](MessageStatus.md) |  | [optional] 
**Expiry** | Pointer to **time.Time** | The time that the message will disappear after. ISO8601 timestamp | [optional] 
**MemberId** | Pointer to **[]string** | The reference ID of the event object | [optional] 
**Id** | **string** |  | 

## Methods

### NewMessageAllOf

`func NewMessageAllOf(id string, ) *MessageAllOf`

NewMessageAllOf instantiates a new MessageAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMessageAllOfWithDefaults

`func NewMessageAllOfWithDefaults() *MessageAllOf`

NewMessageAllOfWithDefaults instantiates a new MessageAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEventRefType

`func (o *MessageAllOf) GetEventRefType() EventRefType`

GetEventRefType returns the EventRefType field if non-nil, zero value otherwise.

### GetEventRefTypeOk

`func (o *MessageAllOf) GetEventRefTypeOk() (*EventRefType, bool)`

GetEventRefTypeOk returns a tuple with the EventRefType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventRefType

`func (o *MessageAllOf) SetEventRefType(v EventRefType)`

SetEventRefType sets EventRefType field to given value.

### HasEventRefType

`func (o *MessageAllOf) HasEventRefType() bool`

HasEventRefType returns a boolean if a field has been set.

### GetEventRefId

`func (o *MessageAllOf) GetEventRefId() string`

GetEventRefId returns the EventRefId field if non-nil, zero value otherwise.

### GetEventRefIdOk

`func (o *MessageAllOf) GetEventRefIdOk() (*string, bool)`

GetEventRefIdOk returns a tuple with the EventRefId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventRefId

`func (o *MessageAllOf) SetEventRefId(v string)`

SetEventRefId sets EventRefId field to given value.

### HasEventRefId

`func (o *MessageAllOf) HasEventRefId() bool`

HasEventRefId returns a boolean if a field has been set.

### GetMessageType

`func (o *MessageAllOf) GetMessageType() MessageType`

GetMessageType returns the MessageType field if non-nil, zero value otherwise.

### GetMessageTypeOk

`func (o *MessageAllOf) GetMessageTypeOk() (*MessageType, bool)`

GetMessageTypeOk returns a tuple with the MessageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessageType

`func (o *MessageAllOf) SetMessageType(v MessageType)`

SetMessageType sets MessageType field to given value.

### HasMessageType

`func (o *MessageAllOf) HasMessageType() bool`

HasMessageType returns a boolean if a field has been set.

### GetSubject

`func (o *MessageAllOf) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *MessageAllOf) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *MessageAllOf) SetSubject(v string)`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *MessageAllOf) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetBody

`func (o *MessageAllOf) GetBody() string`

GetBody returns the Body field if non-nil, zero value otherwise.

### GetBodyOk

`func (o *MessageAllOf) GetBodyOk() (*string, bool)`

GetBodyOk returns a tuple with the Body field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBody

`func (o *MessageAllOf) SetBody(v string)`

SetBody sets Body field to given value.

### HasBody

`func (o *MessageAllOf) HasBody() bool`

HasBody returns a boolean if a field has been set.

### GetPrize

`func (o *MessageAllOf) GetPrize() string`

GetPrize returns the Prize field if non-nil, zero value otherwise.

### GetPrizeOk

`func (o *MessageAllOf) GetPrizeOk() (*string, bool)`

GetPrizeOk returns a tuple with the Prize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrize

`func (o *MessageAllOf) SetPrize(v string)`

SetPrize sets Prize field to given value.

### HasPrize

`func (o *MessageAllOf) HasPrize() bool`

HasPrize returns a boolean if a field has been set.

### GetStatus

`func (o *MessageAllOf) GetStatus() MessageStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *MessageAllOf) GetStatusOk() (*MessageStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *MessageAllOf) SetStatus(v MessageStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *MessageAllOf) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetExpiry

`func (o *MessageAllOf) GetExpiry() time.Time`

GetExpiry returns the Expiry field if non-nil, zero value otherwise.

### GetExpiryOk

`func (o *MessageAllOf) GetExpiryOk() (*time.Time, bool)`

GetExpiryOk returns a tuple with the Expiry field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiry

`func (o *MessageAllOf) SetExpiry(v time.Time)`

SetExpiry sets Expiry field to given value.

### HasExpiry

`func (o *MessageAllOf) HasExpiry() bool`

HasExpiry returns a boolean if a field has been set.

### GetMemberId

`func (o *MessageAllOf) GetMemberId() []string`

GetMemberId returns the MemberId field if non-nil, zero value otherwise.

### GetMemberIdOk

`func (o *MessageAllOf) GetMemberIdOk() (*[]string, bool)`

GetMemberIdOk returns a tuple with the MemberId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberId

`func (o *MessageAllOf) SetMemberId(v []string)`

SetMemberId sets MemberId field to given value.

### HasMemberId

`func (o *MessageAllOf) HasMemberId() bool`

HasMemberId returns a boolean if a field has been set.

### GetId

`func (o *MessageAllOf) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *MessageAllOf) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *MessageAllOf) SetId(v string)`

SetId sets Id field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


