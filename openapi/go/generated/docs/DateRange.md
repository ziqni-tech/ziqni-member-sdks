# DateRange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Before** | Pointer to **time.Time** |  | [optional] 
**After** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewDateRange

`func NewDateRange() *DateRange`

NewDateRange instantiates a new DateRange object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDateRangeWithDefaults

`func NewDateRangeWithDefaults() *DateRange`

NewDateRangeWithDefaults instantiates a new DateRange object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBefore

`func (o *DateRange) GetBefore() time.Time`

GetBefore returns the Before field if non-nil, zero value otherwise.

### GetBeforeOk

`func (o *DateRange) GetBeforeOk() (*time.Time, bool)`

GetBeforeOk returns a tuple with the Before field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBefore

`func (o *DateRange) SetBefore(v time.Time)`

SetBefore sets Before field to given value.

### HasBefore

`func (o *DateRange) HasBefore() bool`

HasBefore returns a boolean if a field has been set.

### GetAfter

`func (o *DateRange) GetAfter() time.Time`

GetAfter returns the After field if non-nil, zero value otherwise.

### GetAfterOk

`func (o *DateRange) GetAfterOk() (*time.Time, bool)`

GetAfterOk returns a tuple with the After field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAfter

`func (o *DateRange) SetAfter(v time.Time)`

SetAfter sets After field to given value.

### HasAfter

`func (o *DateRange) HasAfter() bool`

HasAfter returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


