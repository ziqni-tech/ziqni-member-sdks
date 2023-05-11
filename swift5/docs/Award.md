# Award

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memberId** | **String** | A unique identifier of a Member | [optional] 
**rewardId** | **String** | A unique identifier of a Reward | [optional] 
**rewardType** | [**RewardTypeReduced**](RewardTypeReduced.md) |  | [optional] 
**rewardRank** | **String** | If used in the context of contest this will associate with the rank of the leaderboard | [optional] 
**rewardValue** | **Double** | Numerical value of the reward that will be issued based on the reward type | [optional] 
**delay** | **Int** | Delay of issuing a reward in minutes | [optional] 
**entityType** | [**EntityType**](EntityType.md) |  | [optional] 
**entityId** | **String** | The Id of the contest or achievement related to this Award. Dependant on entityType | [optional] 
**pointInTime** | **Date** | ISO8601 timestamp for when an Award is available until a specific point in time. All records are stored in UTC time zone. * There can only be one time definition used for claim period either \&quot;pointInTime\&quot; or \&quot;period\&quot; | [optional] 
**period** | **Int** | Claimable duration in minutes, this value will set the controls until when the award is claimable. * There can only be one time definition used for claim period either \&quot;pointInTime\&quot; or \&quot;period\&quot; | [optional] 
**tags** | **[String]** | A list of Strings of groups that the reward belongs to. | [optional] 
**metadata** | **[String: String]** | The metadata associated with this award | [optional] 
**statusCode** | **Int** | The code of the award | [optional] [readonly] 
**constraints** | **[String]** | Additional constraints, if the value is present it means the | [optional] 
**claimed** | **Bool** |  Award is claimed. | [optional] 
**status** | [**AwardStatus**](AwardStatus.md) |  | [optional] 
**name** | **String** | name from reward | [optional] 
**description** | **String** | Text limited description | [optional] 
**memberRefId** | **String** |  | [optional] 
**id** | **String** | Ziqni id of the model | 
**spaceName** | **String** | This is the space name which is linked to the account | [optional] 
**created** | **Date** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


