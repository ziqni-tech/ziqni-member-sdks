# ZiqniMemberApi.RewardAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**probability** | **Number** | What is the probability of winning this reward | [optional] 
**entityType** | [**EntityType**](EntityType.md) |  | [optional] 
**entityId** | **String** | A unique identifier of an achievement or contest. Dependant on entityType | [optional] 
**name** | **String** | The name of a reward | [optional] 
**description** | **String** | The description of a Reward | [optional] 
**rewardRank** | **String** | If used in the context of contest this will associate with the rank of the leaderboard | [optional] 
**rewardValue** | **Number** | Numerical value of the reward that will be issued based on the reward type | [optional] 
**rewardType** | [**RewardTypeReduced**](RewardTypeReduced.md) |  | [optional] 
**iconLink** | **String** | Link to the icon | [optional] 
**icon** | **String** | id the icon | [optional] 
**spaceName** | **String** | spaceName | [optional] 
**issueLimit** | **Number** | how many of thsese rewards are | [optional] 
**delay** | **Number** | Delay of issuing a reward in minutes | [optional] 
**pointInTime** | **Date** | ISO8601 timestamp for when a Reward is available until a specific point in time. All records are stored in UTC time zone | [optional] 
**period** | **Number** | Reward available for a period of time from issuing in minutes | [optional] 
**id** | **String** | Unique system identifier of a Main Rule | [optional] [readonly] 
**constraints** | **[String]** | Additional constraints | [optional] 


