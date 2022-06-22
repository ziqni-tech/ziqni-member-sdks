# @ZiqniTechGamificationApiClient.CompetitionAllOf

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
**products** | [**[ProductReduced]**](ProductReduced.md) |  | [optional] 


