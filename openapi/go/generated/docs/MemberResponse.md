# MemberResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meta** | Pointer to [**ResponseMeta**](ResponseMeta.md) |  | [optional] 
**Data** | Pointer to [**Member**](Member.md) |  | [optional] 
**Errors** | Pointer to [**[]Error**](Error.md) |  | [optional] 

## Methods

### NewMemberResponse

`func NewMemberResponse() *MemberResponse`

NewMemberResponse instantiates a new MemberResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMemberResponseWithDefaults

`func NewMemberResponseWithDefaults() *MemberResponse`

NewMemberResponseWithDefaults instantiates a new MemberResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeta

`func (o *MemberResponse) GetMeta() ResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *MemberResponse) GetMetaOk() (*ResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *MemberResponse) SetMeta(v ResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *MemberResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetData

`func (o *MemberResponse) GetData() Member`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *MemberResponse) GetDataOk() (*Member, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *MemberResponse) SetData(v Member)`

SetData sets Data field to given value.

### HasData

`func (o *MemberResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErrors

`func (o *MemberResponse) GetErrors() []Error`

GetErrors returns the Errors field if non-nil, zero value otherwise.

### GetErrorsOk

`func (o *MemberResponse) GetErrorsOk() (*[]Error, bool)`

GetErrorsOk returns a tuple with the Errors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrors

`func (o *MemberResponse) SetErrors(v []Error)`

SetErrors sets Errors field to given value.

### HasErrors

`func (o *MemberResponse) HasErrors() bool`

HasErrors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


