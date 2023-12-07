

# ContestAllOf


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  |  [optional]
**description** | **String** |  |  [optional]
**termsAndConditions** | **String** |  |  [optional]
**competitionId** | **String** | A unique identifier of a Competition |  [optional]
**round** | **Integer** | To what round does the contest belong |  [optional]
**roundType** | **RoundType** |  |  [optional]
**groupStage** | **Integer** | Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2 |  [optional]
**entrantsFromContest** | **List&lt;String&gt;** | A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional. |  [optional]
**groupStageLabel** | **String** | The name of the group stages |  [optional]
**maxNumberOfEntrants** | **Integer** | Maximum number of entrants for the contest |  [optional]
**minNumberOfEntrants** | **Integer** | Minimum number of entrants for the contest |  [optional]
**scheduledStartDate** | **OffsetDateTime** | ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone |  [optional]
**scheduledEndDate** | **OffsetDateTime** | ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone |  [optional]
**actualStartDate** | **OffsetDateTime** | ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone |  [optional] [readonly]
**actualEndDate** | **OffsetDateTime** | ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone |  [optional] [readonly]
**strategies** | [**Strategy**](Strategy.md) |  |  [optional]
**status** | **ContestStatus** |  |  [optional]
**statusCode** | **Integer** | The code of the contest |  [optional] [readonly]
**memberTagsFilter** | [**DependantOn**](DependantOn.md) |  |  [optional]
**constraints** | **List&lt;String&gt;** | Additional constraints |  [optional]
**bannerLink** | **String** | Link to the banner |  [optional]
**bannerHighResolutionLink** | **String** | Link to the bannerHighResolution |  [optional]
**bannerLowResolutionLink** | **String** | Link to the bannerLowResolution |  [optional]
**iconLink** | **String** | Link to the icon |  [optional]



