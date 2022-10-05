# Scheduling

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ScheduleType** | [**ScheduleType**](ScheduleType.md) |  | 
**ScheduleOccurrencesLimit** | **int32** | A value indicating how many times it will be issued | 
**Every** | **[]int32** |  | 
**StartDate** | **time.Time** | The start date and time of a schedule. ISO8601 timestamp | 
**EndDate** | Pointer to **time.Time** | The end date and time of a schedule. ISO8601 timestamp | [optional] 
**Constraints** | **[]string** | Additional constraints | 

## Methods

### NewScheduling

`func NewScheduling(scheduleType ScheduleType, scheduleOccurrencesLimit int32, every []int32, startDate time.Time, constraints []string, ) *Scheduling`

NewScheduling instantiates a new Scheduling object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSchedulingWithDefaults

`func NewSchedulingWithDefaults() *Scheduling`

NewSchedulingWithDefaults instantiates a new Scheduling object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetScheduleType

`func (o *Scheduling) GetScheduleType() ScheduleType`

GetScheduleType returns the ScheduleType field if non-nil, zero value otherwise.

### GetScheduleTypeOk

`func (o *Scheduling) GetScheduleTypeOk() (*ScheduleType, bool)`

GetScheduleTypeOk returns a tuple with the ScheduleType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduleType

`func (o *Scheduling) SetScheduleType(v ScheduleType)`

SetScheduleType sets ScheduleType field to given value.


### GetScheduleOccurrencesLimit

`func (o *Scheduling) GetScheduleOccurrencesLimit() int32`

GetScheduleOccurrencesLimit returns the ScheduleOccurrencesLimit field if non-nil, zero value otherwise.

### GetScheduleOccurrencesLimitOk

`func (o *Scheduling) GetScheduleOccurrencesLimitOk() (*int32, bool)`

GetScheduleOccurrencesLimitOk returns a tuple with the ScheduleOccurrencesLimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduleOccurrencesLimit

`func (o *Scheduling) SetScheduleOccurrencesLimit(v int32)`

SetScheduleOccurrencesLimit sets ScheduleOccurrencesLimit field to given value.


### GetEvery

`func (o *Scheduling) GetEvery() []int32`

GetEvery returns the Every field if non-nil, zero value otherwise.

### GetEveryOk

`func (o *Scheduling) GetEveryOk() (*[]int32, bool)`

GetEveryOk returns a tuple with the Every field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvery

`func (o *Scheduling) SetEvery(v []int32)`

SetEvery sets Every field to given value.


### GetStartDate

`func (o *Scheduling) GetStartDate() time.Time`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *Scheduling) GetStartDateOk() (*time.Time, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *Scheduling) SetStartDate(v time.Time)`

SetStartDate sets StartDate field to given value.


### GetEndDate

`func (o *Scheduling) GetEndDate() time.Time`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *Scheduling) GetEndDateOk() (*time.Time, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *Scheduling) SetEndDate(v time.Time)`

SetEndDate sets EndDate field to given value.

### HasEndDate

`func (o *Scheduling) HasEndDate() bool`

HasEndDate returns a boolean if a field has been set.

### GetConstraints

`func (o *Scheduling) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *Scheduling) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *Scheduling) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


