

# Message



## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**eventRefType** | **EventRefType** |  |  [optional] |
|**eventRefId** | **String** | The reference ID of the event object |  [optional] |
|**messageType** | **MessageType** |  |  [optional] |
|**subject** | **String** | The title of the message |  [optional] |
|**body** | **String** | The context of the message |  [optional] |
|**prize** | **String** | Unique system identifier of an Award |  [optional] [readonly] |
|**status** | **MessageStatus** |  |  [optional] |
|**expiry** | **OffsetDateTime** | The time that the message will disappear after. ISO8601 timestamp |  [optional] |
|**memberId** | **List&lt;String&gt;** | The reference ID of the event object |  [optional] |
|**translations** | [**List&lt;Translation&gt;**](Translation.md) |  |  [optional] |
|**translatableFields** | **List&lt;String&gt;** | Message translatable fields |  [optional] [readonly] |
|**id** | **String** | Ziqni id of the model |  |
|**spaceName** | **String** | This is the space name which is linked to the account |  [optional] |
|**created** | **OffsetDateTime** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone |  [optional] |
|**customFields** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**tags** | **List&lt;String&gt;** | A list of id&#39;s used to tag models |  [optional] |
|**metadata** | **Map&lt;String, String&gt;** |  |  [optional] |



