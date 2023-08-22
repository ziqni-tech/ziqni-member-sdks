# ZiqniMemberApi.Achievement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**termsAndConditions** | **String** |  | [optional] 
**constraints** | **[String]** | Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards] | [optional] 
**maxNumberOfIssues** | **Number** | Maximum number of issued achievements | [optional] 
**scheduling** | [**Scheduling**](Scheduling.md) |  | [optional] 
**status** | **String** | Achievement status | [optional] 
**statusCode** | **Number** |  | [optional] 
**memberTagsFilter** | [**DependantOn**](DependantOn.md) |  | [optional] 
**achievementDependencies** | [**DependantOn**](DependantOn.md) |  | [optional] 
**productTagsFilter** | [**DependantOn**](DependantOn.md) |  | [optional] 
**products** | [**[ProductReduced]**](ProductReduced.md) |  | [optional] 
**iconLink** | **String** | Link to the icon | [optional] 
**id** | **String** | Ziqni id of the model | 
**spaceName** | **String** | This is the space name which is linked to the account | [optional] 
**created** | **Date** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**customFields** | **{String: Object}** |  | [optional] 
**tags** | **[String]** | A list of id&#39;s used to tag models | [optional] 
**metadata** | **{String: String}** |  | [optional] 


