# Competition

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
**Id** | **string** | Ziqni id of the model | 
**SpaceName** | Pointer to **string** | This is the space name which is linked to the account | [optional] 
**Created** | Pointer to **time.Time** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**CustomFields** | Pointer to **map[string]interface{}** |  | [optional] 
**Tags** | Pointer to **[]string** | A list of id&#39;s used to tag models | [optional] 
**Metadata** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewCompetition

`func NewCompetition(id string, ) *Competition`

NewCompetition instantiates a new Competition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCompetitionWithDefaults

`func NewCompetitionWithDefaults() *Competition`

NewCompetitionWithDefaults instantiates a new Competition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCompetitionType

`func (o *Competition) GetCompetitionType() CompetitionType`

GetCompetitionType returns the CompetitionType field if non-nil, zero value otherwise.

### GetCompetitionTypeOk

`func (o *Competition) GetCompetitionTypeOk() (*CompetitionType, bool)`

GetCompetitionTypeOk returns a tuple with the CompetitionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompetitionType

`func (o *Competition) SetCompetitionType(v CompetitionType)`

SetCompetitionType sets CompetitionType field to given value.

### HasCompetitionType

`func (o *Competition) HasCompetitionType() bool`

HasCompetitionType returns a boolean if a field has been set.

### GetNumberOfRounds

`func (o *Competition) GetNumberOfRounds() int32`

GetNumberOfRounds returns the NumberOfRounds field if non-nil, zero value otherwise.

### GetNumberOfRoundsOk

`func (o *Competition) GetNumberOfRoundsOk() (*int32, bool)`

GetNumberOfRoundsOk returns a tuple with the NumberOfRounds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfRounds

`func (o *Competition) SetNumberOfRounds(v int32)`

SetNumberOfRounds sets NumberOfRounds field to given value.

### HasNumberOfRounds

`func (o *Competition) HasNumberOfRounds() bool`

HasNumberOfRounds returns a boolean if a field has been set.

### GetNumberOfGroupStages

`func (o *Competition) GetNumberOfGroupStages() int32`

GetNumberOfGroupStages returns the NumberOfGroupStages field if non-nil, zero value otherwise.

### GetNumberOfGroupStagesOk

`func (o *Competition) GetNumberOfGroupStagesOk() (*int32, bool)`

GetNumberOfGroupStagesOk returns a tuple with the NumberOfGroupStages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfGroupStages

`func (o *Competition) SetNumberOfGroupStages(v int32)`

SetNumberOfGroupStages sets NumberOfGroupStages field to given value.

### HasNumberOfGroupStages

`func (o *Competition) HasNumberOfGroupStages() bool`

HasNumberOfGroupStages returns a boolean if a field has been set.

### GetMaxNumberOfEntrants

`func (o *Competition) GetMaxNumberOfEntrants() int32`

GetMaxNumberOfEntrants returns the MaxNumberOfEntrants field if non-nil, zero value otherwise.

### GetMaxNumberOfEntrantsOk

`func (o *Competition) GetMaxNumberOfEntrantsOk() (*int32, bool)`

GetMaxNumberOfEntrantsOk returns a tuple with the MaxNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxNumberOfEntrants

`func (o *Competition) SetMaxNumberOfEntrants(v int32)`

SetMaxNumberOfEntrants sets MaxNumberOfEntrants field to given value.

### HasMaxNumberOfEntrants

`func (o *Competition) HasMaxNumberOfEntrants() bool`

HasMaxNumberOfEntrants returns a boolean if a field has been set.

### GetMinNumberOfEntrants

`func (o *Competition) GetMinNumberOfEntrants() int32`

GetMinNumberOfEntrants returns the MinNumberOfEntrants field if non-nil, zero value otherwise.

### GetMinNumberOfEntrantsOk

`func (o *Competition) GetMinNumberOfEntrantsOk() (*int32, bool)`

GetMinNumberOfEntrantsOk returns a tuple with the MinNumberOfEntrants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinNumberOfEntrants

`func (o *Competition) SetMinNumberOfEntrants(v int32)`

SetMinNumberOfEntrants sets MinNumberOfEntrants field to given value.

### HasMinNumberOfEntrants

`func (o *Competition) HasMinNumberOfEntrants() bool`

HasMinNumberOfEntrants returns a boolean if a field has been set.

### GetName

`func (o *Competition) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Competition) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Competition) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Competition) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *Competition) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Competition) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Competition) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Competition) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetTermsAndConditions

`func (o *Competition) GetTermsAndConditions() string`

GetTermsAndConditions returns the TermsAndConditions field if non-nil, zero value otherwise.

### GetTermsAndConditionsOk

`func (o *Competition) GetTermsAndConditionsOk() (*string, bool)`

GetTermsAndConditionsOk returns a tuple with the TermsAndConditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTermsAndConditions

`func (o *Competition) SetTermsAndConditions(v string)`

SetTermsAndConditions sets TermsAndConditions field to given value.

### HasTermsAndConditions

`func (o *Competition) HasTermsAndConditions() bool`

HasTermsAndConditions returns a boolean if a field has been set.

### GetEntrantMemberType

`func (o *Competition) GetEntrantMemberType() string`

GetEntrantMemberType returns the EntrantMemberType field if non-nil, zero value otherwise.

### GetEntrantMemberTypeOk

`func (o *Competition) GetEntrantMemberTypeOk() (*string, bool)`

GetEntrantMemberTypeOk returns a tuple with the EntrantMemberType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntrantMemberType

`func (o *Competition) SetEntrantMemberType(v string)`

SetEntrantMemberType sets EntrantMemberType field to given value.

### HasEntrantMemberType

`func (o *Competition) HasEntrantMemberType() bool`

HasEntrantMemberType returns a boolean if a field has been set.

### GetScheduledStartDate

`func (o *Competition) GetScheduledStartDate() time.Time`

GetScheduledStartDate returns the ScheduledStartDate field if non-nil, zero value otherwise.

### GetScheduledStartDateOk

`func (o *Competition) GetScheduledStartDateOk() (*time.Time, bool)`

GetScheduledStartDateOk returns a tuple with the ScheduledStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledStartDate

`func (o *Competition) SetScheduledStartDate(v time.Time)`

SetScheduledStartDate sets ScheduledStartDate field to given value.

### HasScheduledStartDate

`func (o *Competition) HasScheduledStartDate() bool`

HasScheduledStartDate returns a boolean if a field has been set.

### GetScheduledEndDate

`func (o *Competition) GetScheduledEndDate() time.Time`

GetScheduledEndDate returns the ScheduledEndDate field if non-nil, zero value otherwise.

### GetScheduledEndDateOk

`func (o *Competition) GetScheduledEndDateOk() (*time.Time, bool)`

GetScheduledEndDateOk returns a tuple with the ScheduledEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledEndDate

`func (o *Competition) SetScheduledEndDate(v time.Time)`

SetScheduledEndDate sets ScheduledEndDate field to given value.

### HasScheduledEndDate

`func (o *Competition) HasScheduledEndDate() bool`

HasScheduledEndDate returns a boolean if a field has been set.

### GetActualStartDate

`func (o *Competition) GetActualStartDate() time.Time`

GetActualStartDate returns the ActualStartDate field if non-nil, zero value otherwise.

### GetActualStartDateOk

`func (o *Competition) GetActualStartDateOk() (*time.Time, bool)`

GetActualStartDateOk returns a tuple with the ActualStartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualStartDate

`func (o *Competition) SetActualStartDate(v time.Time)`

SetActualStartDate sets ActualStartDate field to given value.

### HasActualStartDate

`func (o *Competition) HasActualStartDate() bool`

HasActualStartDate returns a boolean if a field has been set.

### GetActualEndDate

`func (o *Competition) GetActualEndDate() time.Time`

GetActualEndDate returns the ActualEndDate field if non-nil, zero value otherwise.

### GetActualEndDateOk

`func (o *Competition) GetActualEndDateOk() (*time.Time, bool)`

GetActualEndDateOk returns a tuple with the ActualEndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActualEndDate

`func (o *Competition) SetActualEndDate(v time.Time)`

SetActualEndDate sets ActualEndDate field to given value.

### HasActualEndDate

`func (o *Competition) HasActualEndDate() bool`

HasActualEndDate returns a boolean if a field has been set.

### GetStatus

`func (o *Competition) GetStatus() CompetitionStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Competition) GetStatusOk() (*CompetitionStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Competition) SetStatus(v CompetitionStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *Competition) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusCode

`func (o *Competition) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *Competition) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *Competition) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *Competition) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetConstraints

`func (o *Competition) GetConstraints() []string`

GetConstraints returns the Constraints field if non-nil, zero value otherwise.

### GetConstraintsOk

`func (o *Competition) GetConstraintsOk() (*[]string, bool)`

GetConstraintsOk returns a tuple with the Constraints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConstraints

`func (o *Competition) SetConstraints(v []string)`

SetConstraints sets Constraints field to given value.

### HasConstraints

`func (o *Competition) HasConstraints() bool`

HasConstraints returns a boolean if a field has been set.

### GetProducts

`func (o *Competition) GetProducts() []ProductReduced`

GetProducts returns the Products field if non-nil, zero value otherwise.

### GetProductsOk

`func (o *Competition) GetProductsOk() (*[]ProductReduced, bool)`

GetProductsOk returns a tuple with the Products field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProducts

`func (o *Competition) SetProducts(v []ProductReduced)`

SetProducts sets Products field to given value.

### HasProducts

`func (o *Competition) HasProducts() bool`

HasProducts returns a boolean if a field has been set.

### GetMemberTagsFilter

`func (o *Competition) GetMemberTagsFilter() DependantOn`

GetMemberTagsFilter returns the MemberTagsFilter field if non-nil, zero value otherwise.

### GetMemberTagsFilterOk

`func (o *Competition) GetMemberTagsFilterOk() (*DependantOn, bool)`

GetMemberTagsFilterOk returns a tuple with the MemberTagsFilter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberTagsFilter

`func (o *Competition) SetMemberTagsFilter(v DependantOn)`

SetMemberTagsFilter sets MemberTagsFilter field to given value.

### HasMemberTagsFilter

`func (o *Competition) HasMemberTagsFilter() bool`

HasMemberTagsFilter returns a boolean if a field has been set.

### GetId

`func (o *Competition) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Competition) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Competition) SetId(v string)`

SetId sets Id field to given value.


### GetSpaceName

`func (o *Competition) GetSpaceName() string`

GetSpaceName returns the SpaceName field if non-nil, zero value otherwise.

### GetSpaceNameOk

`func (o *Competition) GetSpaceNameOk() (*string, bool)`

GetSpaceNameOk returns a tuple with the SpaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpaceName

`func (o *Competition) SetSpaceName(v string)`

SetSpaceName sets SpaceName field to given value.

### HasSpaceName

`func (o *Competition) HasSpaceName() bool`

HasSpaceName returns a boolean if a field has been set.

### GetCreated

`func (o *Competition) GetCreated() time.Time`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *Competition) GetCreatedOk() (*time.Time, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *Competition) SetCreated(v time.Time)`

SetCreated sets Created field to given value.

### HasCreated

`func (o *Competition) HasCreated() bool`

HasCreated returns a boolean if a field has been set.

### GetCustomFields

`func (o *Competition) GetCustomFields() map[string]interface{}`

GetCustomFields returns the CustomFields field if non-nil, zero value otherwise.

### GetCustomFieldsOk

`func (o *Competition) GetCustomFieldsOk() (*map[string]interface{}, bool)`

GetCustomFieldsOk returns a tuple with the CustomFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomFields

`func (o *Competition) SetCustomFields(v map[string]interface{})`

SetCustomFields sets CustomFields field to given value.

### HasCustomFields

`func (o *Competition) HasCustomFields() bool`

HasCustomFields returns a boolean if a field has been set.

### GetTags

`func (o *Competition) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *Competition) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *Competition) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *Competition) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetMetadata

`func (o *Competition) GetMetadata() map[string]string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *Competition) GetMetadataOk() (*map[string]string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *Competition) SetMetadata(v map[string]string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *Competition) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


