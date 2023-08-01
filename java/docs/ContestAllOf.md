

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



