# CompetitionAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CompetitionType** | Pointer to [**CompetitionType**](CompetitionType.md) |  | [optional] 
**NumberOfRounds** | Pointer to **int32** | Number of rounds to be played in a competition | [optional] 
**NumberOfGroupStages** | Pointer to **int32** | Number of group stages | [optional] 
**MaxNumberOfEntrants** | Pointer to **int32** | Maximum number of partiipants allowed in a competition | [optional] 
**MinNumberOfEntrants** | Pointer to **int32** | Maximum number of partiipants allowed in a competition | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**TermsAndConditions** | Pointer to **string** |  | [optional] 
**EntrantMemberType** | Pointer to **string** |  | [optional] 
**ScheduledStartDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Competition should start. All records are stored in UTC time zone | [optional] 
**ScheduledEndDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Competition should end. All records are stored in UTC time zone | [optional] 
**ActualStartDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone | [optional] [readonly] 
**ActualEndDate** | Pointer to **time.Time** | ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone | [optional] [readonly] 
**Status** | Pointer to [**CompetitionStatus**](CompetitionStatus.md) |  | [optional] 
**StatusCode** | Pointer to **int32** | The code of the competition | [optional] [readonly] 
**Constraints** | Pointer to **[]string** | Additional constraints | [optional] 
**Products** | Pointer to [**[]ProductReduced**](ProductReduced.md) |  | [optional] 
**MemberTagsFilter** | Pointer to [**DependantOn**](DependantOn.md) |  | [optional] 

## Methods

### NewCompetitionAllOf

`func NewCompetitionAllOf() *CompetitionAllOf`

NewCompetitionAllOf instantiates a new CompetitionAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCompetitionAllOfWithDefaults

`func NewCompetitionAllOfWithDefaults() *CompetitionAllOf`

NewCompetitionAllOfWithDefaults instantiates a new CompetitionAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCompetitionType

`func (o *CompetitionAllOf) GetCompetitionType() CompetitionType`

GetCompetitionType returns the CompetitionType field if non-nil, zero value otherwise.

### GetCompetitionTypeOk

`func (o *CompetitionAllOf) GetCompetitionTypeOk() (*CompetitionType, bool)`

GetCompetitionTypeOk returns a tuple with the CompetitionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompetitionType

`func (o *CompetitionAllOf) SetCompetitionType(v CompetitionType)`

SetCompetitionType sets CompetitionType field to given value.

### HasCompetitionType

`func (o *CompetitionAllOf) HasCompetitionType() bool`

HasCompetitionType returns a boolean if a field has been set.

### GetNumberOfRounds

`func (o *CompetitionAllOf) GetNumberOfRounds() int32`

GetNumberOfRounds returns the NumberOfRounds field if non-nil, zero value otherwise.

### GetNumberOfRoundsOk

`func (o *CompetitionAllOf) GetNumberOfRoundsOk() (*int32, bool)`

GetNumberOfRoundsOk returns a tuple with the NumberOfRounds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfRounds

`func (o *CompetitionAllOf) SetNumberOfRounds(v int32)`

SetNumberOfRounds sets NumberOfRounds field to given value.

### HasNumberOfRounds

`func (o *CompetitionAllOf) HasNumberOfRounds() bool`

HasNumberOfRounds returns a boolean if a field has been set.

### GetNumberOfGroupStages

`func (o *CompetitionAllOf) GetNumberOfGroupStages() int32`

GetNumberOfGroupStages returns the NumberOfGroupStages field if non-nil, zero value otherwise.

### GetNumberOfGroupStagesOk

`func (o *CompetitionAllOf) GetNumberOfGroupStagesOk() (*int32, bool)`

GetNumberOfGroupStagesOk returns a tuple with the NumberOfGroupStages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfGroupStages

`func (o *CompetitionAllOf) SetNumberOfGroupStages(v int32)`

SetNumberOfGroupStages sets NumberOfGroupStages field to given value.

### HasNumberOfGroupStages

`func (o *CompetitionAllOf) HasNumberOfGroupStages() bool`

HasNumberOfGroupStages returns a boolean if a field has been set.

### GetMaxNumberOfEntrants

`func (o *CompetitionAllOf) GetMaxNumberOfEntrants() int32`

GetMaxNumberOfEntrants returns the MaxNumberOfEntrants field if non-nil, zero value otherwise.

### GetMaxNumberOfEntrantsOk

`func (o *CompetitionAllOf) GetMaxNumberOfEntrantsOk() (*int32, bool)`

GetMaxNumberOfEntrantsOk returns a tuple with the MaxNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxNumberOfEntrants

`func (o *CompetitionAllOf) SetMaxNumberOfEntrants(v int32)`

SetMaxNumberOfEntrants sets MaxNumberOfEntrants field to given value.

### HasMaxNumberOfEntrants

`func (o *CompetitionAllOf) HasMaxNumberOfEntrants() bool`

HasMaxNumberOfEntrants returns a boolean if a field has been set.

### GetMinNumberOfEntrants

`func (o *CompetitionAllOf) GetMinNumberOfEntrants() int32`

GetMinNumberOfEntrants returns the MinNumberOfEntrants field if non-nil, zero value otherwise.

### GetMinNumberOfEntrantsOk

`func (o *CompetitionAllOf) GetMinNumberOfEntrantsOk() (*int32, bool)`

GetMinNumberOfEntrantsOk returns a tuple with the MinNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinNumberOfEntrants

`func (o *CompetitionAllOf) SetMinNumberOfEntrants(v int32)`

SetMinNumberOfEntrants sets MinNumberOfEntrants field to given value.

### HasMinNumberOfEntrants

`func (o *CompetitionAllOf) HasMinNumberOfEntrants() bool`

HasMinNumberOfEntrants returns a boolean if a field has been set.

### GetName

`func (o *CompetitionAllOf) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CompetitionAllOf) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CompetitionAllOf) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CompetitionAllOf) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *CompetitionAllOf) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *CompetitionAllOf) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *CompetitionAllOf) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *CompetitionAllOf) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetTermsAndConditions

`func (o *CompetitionAllOf) GetTermsAndConditions() string`

GetTermsAndConditions returns the TermsAndConditions field if non-nil, zero value otherwise.

### GetTermsAndConditionsOk

`func (o *CompetitionAllOf) GetTermsAndConditionsOk() (*string, bool)`

GetTermsAndConditionsOk returns a tuple with the TermsAndConditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTermsAndConditions

`func (o *CompetitionAllOf) SetTermsAndConditions(v string)`

SetTermsAndConditions sets TermsAndConditions field to given value.

### HasTermsAndConditions

`func (o *CompetitionAllOf) HasTermsAndConditions() bool`

HasTermsAndConditions returns a boolean if a field has been set.

### GetEntrantMemberType

`func (o *CompetitionAllOf) GetEntrantMemberType() string`

GetEntrantMemberType returns the EntrantMemberType field if non-nil, zero value otherwise.

### GetEntrantMemberTypeOk

`func (o *CompetitionAllOf) GetEntrantMemberTypeOk() (*string, bool)`

GetEntrantMemberTypeOk returns a tuple with the EntrantMemberType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntrantMemberType

`func (o *CompetitionAllOf) SetEntrantMemberType(v string)`

SetEntrantMemberType sets EntrantMemberType field to given value.

### HasEntrantMemberType

`func (o *CompetitionAllOf) HasEntrantMemberType() bool`

HasEntrantMemberType returns a boolean if a field has been set.

### GetScheduledStartDate

`func (o *CompetitionAllOf) GetScheduledStartDate() time.Time`

GetScheduledStartDate returns the ScheduledStartDate field if non-nil, zero value otherwise.

### GetScheduledStartDateOk

`func (o *CompetitionAllOf) GetScheduledStartDateOk() (*time.Time, bool)`

GetScheduledStartDateOk returns a tuple with the ScheduledStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledStartDate

`func (o *CompetitionAllOf) SetScheduledStartDate(v time.Time)`

SetScheduledStartDate sets ScheduledStartDate field to given value.

### HasScheduledStartDate

`func (o *CompetitionAllOf) HasScheduledStartDate() bool`

HasScheduledStartDate returns a boolean if a field has been set.

### GetScheduledEndDate

`func (o *CompetitionAllOf) GetScheduledEndDate() time.Time`

GetScheduledEndDate returns the ScheduledEndDate field if non-nil, zero value otherwise.

### GetScheduledEndDateOk

`func (o *CompetitionAllOf) GetScheduledEndDateOk() (*time.Time, bool)`

GetScheduledEndDateOk returns a tuple with the ScheduledEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledEndDate

`func (o *CompetitionAllOf) SetScheduledEndDate(v time.Time)`

SetScheduledEndDate sets ScheduledEndDate field to given value.

### HasScheduledEndDate

`func (o *CompetitionAllOf) HasScheduledEndDate() bool`

HasScheduledEndDate returns a boolean if a field has been set.

### GetActualStartDate

`func (o *CompetitionAllOf) GetActualStartDate() time.Time`

GetActualStartDate returns the ActualStartDate field if non-nil, zero value otherwise.

### GetActualStartDateOk

`func (o *CompetitionAllOf) GetActualStartDateOk() (*time.Time, bool)`

GetActualStartDateOk returns a tuple with the ActualStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualStartDate

`func (o *CompetitionAllOf) SetActualStartDate(v time.Time)`

SetActualStartDate sets ActualStartDate field to given value.

### HasActualStartDate

`func (o *CompetitionAllOf) HasActualStartDate() bool`

HasActualStartDate returns a boolean if a field has been set.

### GetActualEndDate

`func (o *CompetitionAllOf) GetActualEndDate() time.Time`

GetActualEndDate returns the ActualEndDate field if non-nil, zero value otherwise.

### GetActualEndDateOk

`func (o *CompetitionAllOf) GetActualEndDateOk() (*time.Time, bool)`

GetActualEndDateOk returns a tuple with the ActualEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualEndDate

`func (o *CompetitionAllOf) SetActualEndDate(v time.Time)`

SetActualEndDate sets ActualEndDate field to given value.

### HasActualEndDate

`func (o *CompetitionAllOf) HasActualEndDate() bool`

HasActualEndDate returns a boolean if a field has been set.

### GetStatus

`func (o *CompetitionAllOf) GetStatus() CompetitionStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *CompetitionAllOf) GetStatusOk() (*CompetitionStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *CompetitionAllOf) SetStatus(v CompetitionStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *CompetitionAllOf) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusCode

`func (o *CompetitionAllOf) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *CompetitionAllOf) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *CompetitionAllOf) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *CompetitionAllOf) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetConstraints

`func (o *CompetitionAllOf) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *CompetitionAllOf) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *CompetitionAllOf) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *CompetitionAllOf) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetProducts

`func (o *CompetitionAllOf) GetProducts() []ProductReduced`

GetProducts returns the Products field if non-nil, zero value otherwise.

### GetProductsOk

`func (o *CompetitionAllOf) GetProductsOk() (*[]ProductReduced, bool)`

GetProductsOk returns a tuple with the Products field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProducts

`func (o *CompetitionAllOf) SetProducts(v []ProductReduced)`

SetProducts sets Products field to given value.

### HasProducts

`func (o *CompetitionAllOf) HasProducts() bool`

HasProducts returns a boolean if a field has been set.

### GetMemberTagsFilter

`func (o *CompetitionAllOf) GetMemberTagsFilter() DependantOn`

GetMemberTagsFilter returns the MemberTagsFilter field if non-nil, zero value otherwise.

### GetMemberTagsFilterOk

`func (o *CompetitionAllOf) GetMemberTagsFilterOk() (*DependantOn, bool)`

GetMemberTagsFilterOk returns a tuple with the MemberTagsFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberTagsFilter

`func (o *CompetitionAllOf) SetMemberTagsFilter(v DependantOn)`

SetMemberTagsFilter sets MemberTagsFilter field to given value.

### HasMemberTagsFilter

`func (o *CompetitionAllOf) HasMemberTagsFilter() bool`

HasMemberTagsFilter returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


