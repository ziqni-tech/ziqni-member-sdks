

# CompetitionAllOf


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**competitionType** | **CompetitionType** |  |  [optional]
**numberOfRounds** | **Integer** | Number of rounds to be played in a competition |  [optional]
**numberOfGroupStages** | **Integer** | Number of group stages |  [optional]
**maxNumberOfEntrants** | **Integer** | Maximum number of partiipants allowed in a competition |  [optional]
**minNumberOfEntrants** | **Integer** | Maximum number of partiipants allowed in a competition |  [optional]
**name** | **String** |  |  [optional]
**description** | **String** |  |  [optional]
**termsAndConditions** | **String** |  |  [optional]
**entrantMemberType** | **String** |  |  [optional]
**scheduledStartDate** | **OffsetDateTime** | ISO8601 timestamp for when a Competition should start. All records are stored in UTC time zone |  [optional]
**scheduledEndDate** | **OffsetDateTime** | ISO8601 timestamp for when a Competition should end. All records are stored in UTC time zone |  [optional]
**actualStartDate** | **OffsetDateTime** | ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone |  [optional] [readonly]
**actualEndDate** | **OffsetDateTime** | ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone |  [optional] [readonly]
**status** | **CompetitionStatus** |  |  [optional]
**statusCode** | **Integer** | The code of the competition |  [optional] [readonly]
**constraints** | **Set&lt;String&gt;** | Additional constraints |  [optional]
**products** | [**List&lt;ProductReduced&gt;**](ProductReduced.md) |  |  [optional]
**memberTagsFilter** | [**DependantOn**](DependantOn.md) |  |  [optional]



