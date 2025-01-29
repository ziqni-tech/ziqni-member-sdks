

# Product


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**customFields** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**tags** | **List&lt;String&gt;** | A list of id&#39;s used to tag models |  [optional] |
|**metadata** | **Map&lt;String, String&gt;** |  |  [optional] |
|**id** | **String** | A unique system generated identifier |  |
|**spaceName** | **String** | This is the space name which is linked to the account |  |
|**created** | **OffsetDateTime** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone |  |
|**name** | **String** | The name of the product |  [optional] |
|**description** | **String** | The description of the product for your reference |  [optional] |
|**adjustmentFactor** | **Double** | The multiplier to apply to source values received for this product events |  [optional] |
|**productRefId** | **String** | The reference to this product in your system. The reference identifier can not be changed after the product has been created |  [optional] |
|**productType** | **String** | The type to this product in your system. |  [optional] |
|**iconLink** | **String** | Link to the icon |  [optional] |
|**bannerLink** | **String** | Link to the banner |  [optional] |
|**bannerLowResolutionLink** | **String** | Link to the bannerLowResolution |  [optional] |
|**bannerHighResolutionLink** | **String** | Link to the bannerHighResolution |  [optional] |
|**actionTypeAdjustmentFactors** | [**List&lt;ActionTypeAdjustmentFactor&gt;**](ActionTypeAdjustmentFactor.md) |  |  [optional] |



