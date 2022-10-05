# @ZiqniTechGamificationApiClient.Message

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventRefType** | [**EventRefType**](EventRefType.md) |  | [optional] 
**eventRefId** | **String** | The reference ID of the event object | [optional] 
**messageType** | [**MessageType**](MessageType.md) |  | [optional] 
**subject** | **String** | The title of the message | [optional] 
**body** | **String** | The context of the message | [optional] 
**prize** | **String** | Unique system identifier of an Award | [optional] [readonly] 
**status** | [**MessageStatus**](MessageStatus.md) |  | [optional] 
**expiry** | **Date** | The time that the message will disappear after. ISO8601 timestamp | [optional] 
**memberId** | **[String]** | The reference ID of the event object | [optional] 
**translations** | [**[Translation]**](Translation.md) |  | [optional] 
**translatableFields** | **[String]** | Message translatable fields | [optional] [readonly] 
**id** | **String** | Ziqni id of the model | 
**spaceName** | **String** | This is the space name which is linked to the account | [optional] 
**created** | **Date** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone | [optional] 
**customFields** | **{String: Object}** |  | [optional] 
**tags** | **[String]** | A list of id&#39;s used to tag models | [optional] 
**metadata** | **{String: String}** |  | [optional] 


