# ZiqniMemberApi.OptinStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityType** | **String** | The type of this entity like Achievement, Competition, or Contest | 
**entityId** | **String** | The unique identifier of this entity | 
**statusCode** | **Number** | Processing &#x3D; 0, NotEntered &#x3D; 5, Entering &#x3D; 10, Entrant &#x3D; 15, Preparing &#x3D; 20, Running &#x3D; 25, Completing &#x3D; 30, Completed &#x3D; 35 | 
**status** | **String** | Processing &#x3D; 0, NotEntered &#x3D; 5, Entering &#x3D; 10, Entrant &#x3D; 15,\\             \\ Preparing &#x3D; 20, Running &#x3D; 25, Completing &#x3D; 30, Completed &#x3D; 35 | 
**percentageComplete** | **Number** | What percentage has been completed so far, this is a number between 0 and 100 | [optional] 
**points** | **Number** | The current points total | 
**position** | **Number** | The current position of the member | [optional] 
**params** | **{String: Number}** | The user defined values used in the rules builder | [optional] 


