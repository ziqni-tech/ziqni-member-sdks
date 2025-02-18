

# InstantWinAllOf


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
**startDate** | **OffsetDateTime** | ISO8601 timestamp for when a Instant Win started. All records are stored in UTC time zone |  [optional] [readonly]
**endDate** | **OffsetDateTime** | ISO8601 timestamp for when a Instant Win ended. All records are stored in UTC time zone |  [optional] [readonly]
**tiles** | [**List&lt;InstantWinTile&gt;**](InstantWinTile.md) | Tiles are the buiilding blocks of the instant win game | 
**instanceResourceLink** | **String** | Link to the system resources for this instant win. https://&lt;&lt;space-name&gt;&gt;.cdn.ziqni.com/system-resources/instant-wins/&lt;&lt;instant-win-id&gt;&gt; |  [optional]



