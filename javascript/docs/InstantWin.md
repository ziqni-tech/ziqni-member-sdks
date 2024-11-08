# ZiqniMemberApi.InstantWin

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Ziqni id of the model | 
**spaceName** | **String** | This is the space name which is linked to the account | [optional] 
**created** | **Date** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**customFields** | **{String: Object}** |  | [optional] 
**tags** | **[String]** | A list of id&#39;s used to tag models | [optional] 
**metadata** | **{String: String}** |  | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**termsAndConditions** | **String** |  | [optional] 
**constraints** | **[String]** | Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards] | [optional] 
**statusCode** | **Number** |  | [optional] 
**instantWinType** | **Number** |  | 
**iconLink** | **String** | Attachement id for the corresponding icon image. | [optional] 
**bannerLink** | **String** | Link to the banner | [optional] 
**bannerLowResolutionLink** | **String** | Link to the bannerLowResolution | [optional] 
**bannerHighResolutionLink** | **String** | Link to the bannerHighResolution | [optional] 
**tiles** | [**[InstantWinTile]**](InstantWinTile.md) |  | 


