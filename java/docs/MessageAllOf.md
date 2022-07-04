

# MessageAllOf


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



