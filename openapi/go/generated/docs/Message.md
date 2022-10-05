# Message

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
**Id** | **string** | Ziqni id of the model | 
**SpaceName** | Pointer to **string** | This is the space name which is linked to the account | [optional] 
**Created** | Pointer to **time.Time** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**CustomFields** | Pointer to **map[string]interface{}** |  | [optional] 
**Tags** | Pointer to **[]string** | A list of id&#39;s used to tag models | [optional] 
**Metadata** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewMessage

`func NewMessage(id string, ) *Message`

NewMessage instantiates a new Message object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMessageWithDefaults

`func NewMessageWithDefaults() *Message`

NewMessageWithDefaults instantiates a new Message object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEventRefType

`func (o *Message) GetEventRefType() EventRefType`

GetEventRefType returns the EventRefType field if non-nil, zero value otherwise.

### GetEventRefTypeOk

`func (o *Message) GetEventRefTypeOk() (*EventRefType, bool)`

GetEventRefTypeOk returns a tuple with the EventRefType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventRefType

`func (o *Message) SetEventRefType(v EventRefType)`

SetEventRefType sets EventRefType field to given value.

### HasEventRefType

`func (o *Message) HasEventRefType() bool`

HasEventRefType returns a boolean if a field has been set.

### GetEventRefId

`func (o *Message) GetEventRefId() string`

GetEventRefId returns the EventRefId field if non-nil, zero value otherwise.

### GetEventRefIdOk

`func (o *Message) GetEventRefIdOk() (*string, bool)`

GetEventRefIdOk returns a tuple with the EventRefId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventRefId

`func (o *Message) SetEventRefId(v string)`

SetEventRefId sets EventRefId field to given value.

### HasEventRefId

`func (o *Message) HasEventRefId() bool`

HasEventRefId returns a boolean if a field has been set.

### GetMessageType

`func (o *Message) GetMessageType() MessageType`

GetMessageType returns the MessageType field if non-nil, zero value otherwise.

### GetMessageTypeOk

`func (o *Message) GetMessageTypeOk() (*MessageType, bool)`

GetMessageTypeOk returns a tuple with the MessageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessageType

`func (o *Message) SetMessageType(v MessageType)`

SetMessageType sets MessageType field to given value.

### HasMessageType

`func (o *Message) HasMessageType() bool`

HasMessageType returns a boolean if a field has been set.

### GetSubject

`func (o *Message) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *Message) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *Message) SetSubject(v string)`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *Message) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetBody

`func (o *Message) GetBody() string`

GetBody returns the Body field if non-nil, zero value otherwise.

### GetBodyOk

`func (o *Message) GetBodyOk() (*string, bool)`

GetBodyOk returns a tuple with the Body field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBody

`func (o *Message) SetBody(v string)`

SetBody sets Body field to given value.

### HasBody

`func (o *Message) HasBody() bool`

HasBody returns a boolean if a field has been set.

### GetPrize

`func (o *Message) GetPrize() string`

GetPrize returns the Prize field if non-nil, zero value otherwise.

### GetPrizeOk

`func (o *Message) GetPrizeOk() (*string, bool)`

GetPrizeOk returns a tuple with the Prize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrize

`func (o *Message) SetPrize(v string)`

SetPrize sets Prize field to given value.

### HasPrize

`func (o *Message) HasPrize() bool`

HasPrize returns a boolean if a field has been set.

### GetStatus

`func (o *Message) GetStatus() MessageStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Message) GetStatusOk() (*MessageStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Message) SetStatus(v MessageStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *Message) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetExpiry

`func (o *Message) GetExpiry() time.Time`

GetExpiry returns the Expiry field if non-nil, zero value otherwise.

### GetExpiryOk

`func (o *Message) GetExpiryOk() (*time.Time, bool)`

GetExpiryOk returns a tuple with the Expiry field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiry

`func (o *Message) SetExpiry(v time.Time)`

SetExpiry sets Expiry field to given value.

### HasExpiry

`func (o *Message) HasExpiry() bool`

HasExpiry returns a boolean if a field has been set.

### GetMemberId

`func (o *Message) GetMemberId() []string`

GetMemberId returns the MemberId field if non-nil, zero value otherwise.

### GetMemberIdOk

`func (o *Message) GetMemberIdOk() (*[]string, bool)`

GetMemberIdOk returns a tuple with the MemberId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberId

`func (o *Message) SetMemberId(v []string)`

SetMemberId sets MemberId field to given value.

### HasMemberId

`func (o *Message) HasMemberId() bool`

HasMemberId returns a boolean if a field has been set.

### GetId

`func (o *Message) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Message) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Message) SetId(v string)`

SetId sets Id field to given value.


### GetSpaceName

`func (o *Message) GetSpaceName() string`

GetSpaceName returns the SpaceName field if non-nil, zero value otherwise.

### GetSpaceNameOk

`func (o *Message) GetSpaceNameOk() (*string, bool)`

GetSpaceNameOk returns a tuple with the SpaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpaceName

`func (o *Message) SetSpaceName(v string)`

SetSpaceName sets SpaceName field to given value.

### HasSpaceName

`func (o *Message) HasSpaceName() bool`

HasSpaceName returns a boolean if a field has been set.

### GetCreated

`func (o *Message) GetCreated() time.Time`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *Message) GetCreatedOk() (*time.Time, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *Message) SetCreated(v time.Time)`

SetCreated sets Created field to given value.

### HasCreated

`func (o *Message) HasCreated() bool`

HasCreated returns a boolean if a field has been set.

### GetCustomFields

`func (o *Message) GetCustomFields() map[string]interface{}`

GetCustomFields returns the CustomFields field if non-nil, zero value otherwise.

### GetCustomFieldsOk

`func (o *Message) GetCustomFieldsOk() (*map[string]interface{}, bool)`

GetCustomFieldsOk returns a tuple with the CustomFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomFields

`func (o *Message) SetCustomFields(v map[string]interface{})`

SetCustomFields sets CustomFields field to given value.

### HasCustomFields

`func (o *Message) HasCustomFields() bool`

HasCustomFields returns a boolean if a field has been set.

### GetTags

`func (o *Message) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *Message) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *Message) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *Message) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *Message) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *Message) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *Message) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *Message) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


