

# InstantWin


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The display name |  [optional]
**description** | **String** | The description of this game |  [optional]
**termsAndConditions** | **String** | The standard terms applied to this game |  [optional]
**constraints** | **List&lt;String&gt;** | Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards] |  [optional]
**statusCode** | **Integer** | The status of this game |  [optional]
**instantWinType** | **Integer** | Spinner etc | 
**iconLink** | **String** | Attachement id for the corresponding icon image. |  [optional]
**bannerLink** | **String** | Link to the banner |  [optional]
**bannerLowResolutionLink** | **String** | Link to the bannerLowResolution |  [optional]
**bannerHighResolutionLink** | **String** | Link to the bannerHighResolution |  [optional]
**tiles** | [**List&lt;InstantWinTile&gt;**](InstantWinTile.md) | Tiles are the buiilding blocks of the instant win game | 
**instanceResourceLink** | **String** | Link to the system resources for this instant win. https://&lt;&lt;space-name&gt;&gt;.cdn.ziqni.com/system-resources/instant-wins/&lt;&lt;instant-win-id&gt;&gt; |  [optional]
**id** | **String** | Ziqni id of the model | 
**spaceName** | **String** | This is the space name which is linked to the account |  [optional]
**created** | **OffsetDateTime** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone |  [optional]
**customFields** | **Map&lt;String, Object&gt;** |  |  [optional]
**tags** | **List&lt;String&gt;** | A list of id&#39;s used to tag models |  [optional]
**metadata** | **Map&lt;String, String&gt;** |  |  [optional]



