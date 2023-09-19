# ZiqniMemberApi.Competition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**competitionType** | [**CompetitionType**](CompetitionType.md) |  | [optional] 
**numberOfRounds** | **Number** | Number of rounds to be played in a competition | [optional] 
**numberOfGroupStages** | **Number** | Number of group stages | [optional] 
**maxNumberOfEntrants** | **Number** | Maximum number of partiipants allowed in a competition | [optional] 
**minNumberOfEntrants** | **Number** | Maximum number of partiipants allowed in a competition | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**termsAndConditions** | **String** |  | [optional] 
**entrantMemberType** | **String** |  | [optional] 
**scheduledStartDate** | **Date** | ISO8601 timestamp for when a Competition should start. All records are stored in UTC time zone | [optional] 
**scheduledEndDate** | **Date** | ISO8601 timestamp for when a Competition should end. All records are stored in UTC time zone | [optional] 
**actualStartDate** | **Date** | ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone | [optional] [readonly] 
**actualEndDate** | **Date** | ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone | [optional] [readonly] 
**status** | [**CompetitionStatus**](CompetitionStatus.md) |  | [optional] 
**statusCode** | **Number** | The code of the competition | [optional] [readonly] 
**constraints** | **[String]** | Additional constraints | [optional] 
**products** | [**[ProductReduced]**](ProductReduced.md) | If individual product were selected then they will be listed here. If the proproduct tags filter was used then this field will be empty and the productTagsFilter will be populated. | [optional] 
**memberTagsFilter** | [**DependantOn**](DependantOn.md) |  | [optional] 
**productTagsFilter** | [**DependantOn**](DependantOn.md) |  | [optional] 
**id** | **String** | Ziqni id of the model | 
**spaceName** | **String** | This is the space name which is linked to the account | [optional] 
**created** | **Date** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**customFields** | **{String: Object}** |  | [optional] 
**tags** | **[String]** | A list of id&#39;s used to tag models | [optional] 
**metadata** | **{String: String}** |  | [optional] 


