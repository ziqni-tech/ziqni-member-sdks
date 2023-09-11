# ZiqniMemberApi.Contest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**termsAndConditions** | **String** |  | [optional] 
**competitionId** | **String** | A unique identifier of a Competition | [optional] 
**round** | **Number** | To what round does the contest belong | [optional] 
**roundType** | [**RoundType**](RoundType.md) |  | [optional] 
**groupStage** | **Number** | Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2 | [optional] 
**entrantsFromContest** | **[String]** | A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional. | [optional] 
**groupStageLabel** | **String** | The name of the group stages | [optional] 
**maxNumberOfEntrants** | **Number** | Maximum number of entrants for the contest | [optional] 
**minNumberOfEntrants** | **Number** | Minimum number of entrants for the contest | [optional] 
**scheduledStartDate** | **Date** | ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone | [optional] 
**scheduledEndDate** | **Date** | ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone | [optional] 
**actualStartDate** | **Date** | ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone | [optional] [readonly] 
**actualEndDate** | **Date** | ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone | [optional] [readonly] 
**strategies** | [**Strategy**](Strategy.md) |  | [optional] 
**status** | [**ContestStatus**](ContestStatus.md) |  | [optional] 
**statusCode** | **Number** | The code of the contest | [optional] [readonly] 
**memberTagsFilter** | [**DependantOn**](DependantOn.md) |  | [optional] 
**constraints** | **[String]** | Additional constraints | [optional] 
**id** | **String** | Ziqni id of the model | 
**spaceName** | **String** | This is the space name which is linked to the account | [optional] 
**created** | **Date** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**customFields** | **{String: Object}** |  | [optional] 
**tags** | **[String]** | A list of id&#39;s used to tag models | [optional] 
**metadata** | **{String: String}** |  | [optional] 


