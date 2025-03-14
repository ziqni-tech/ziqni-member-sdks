

# Achievement



## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Ziqni id of the model |  |
|**spaceName** | **String** | This is the space name which is linked to the account |  [optional] |
|**created** | **OffsetDateTime** | ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone |  [optional] |
|**customFields** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**tags** | **List&lt;String&gt;** | A list of id&#39;s used to tag models |  [optional] |
|**metadata** | **Map&lt;String, String&gt;** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**termsAndConditions** | **String** |  |  [optional] |
|**constraints** | **List&lt;String&gt;** | Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards] |  [optional] |
|**maxNumberOfIssues** | **Integer** | Maximum number of issued achievements |  [optional] |
|**scheduling** | [**Scheduling**](Scheduling.md) |  |  [optional] |
|**status** | **String** | Achievement status |  [optional] |
|**statusCode** | **Integer** |  |  [optional] |
|**memberTagsFilter** | [**DependantOn**](DependantOn.md) |  |  [optional] |
|**achievementDependencies** | [**DependantOn**](DependantOn.md) |  |  [optional] |
|**productTagsFilter** | [**DependantOn**](DependantOn.md) |  |  [optional] |
|**products** | [**List&lt;ProductReduced&gt;**](ProductReduced.md) |  |  [optional] |
|**iconLink** | **String** | Link to the icon |  [optional] |
|**bannerLink** | **String** | Link to the banner |  [optional] |
|**bannerLowResolutionLink** | **String** | Link to the bannerLowResolution |  [optional] |
|**bannerHighResolutionLink** | **String** | Link to the bannerHighResolution |  [optional] |
|**strategies** | [**AchievementStrategies**](AchievementStrategies.md) |  |  [optional] |
|**optInStatus** | [**OptinStatus**](OptinStatus.md) |  |  [optional] |



