# ContestReduced

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**competitionId** | **String** | A unique identifier of a Competition | [optional] 
**row** | **Int** | The row number for displaying the Contest in a table | [optional] 
**name** | **String** | A name for the Contest. Can be translated | [optional] 
**round** | **Int** | To what round does the contest belong | [optional] 
**groupStage** | **Int** | Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2 | [optional] 
**entrantsFromContest** | **[String]** | A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional. | [optional] 
**status** | [**ContestStatus**](ContestStatus.md) |  | [optional] 
**statusCode** | **Int** | The code of the contest | [optional] [readonly] 
**scheduledStartDate** | **Date** | ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone | [optional] 
**scheduledEndDate** | **Date** | ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone | [optional] 
**actualStartDate** | **Date** | ISO8601 timestamp for when a Contest started. All records are stored in UTC time zone | [optional] [readonly] 
**actualEndDate** | **Date** | ISO8601 timestamp for when a Contest ended. All records are stored in UTC time zone | [optional] [readonly] 
**tags** | **[String]** | A list of id&#39;s used to tag | [optional] 
**rewards** | [RewardReduced] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


