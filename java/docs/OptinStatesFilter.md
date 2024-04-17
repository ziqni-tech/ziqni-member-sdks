

# OptinStatesFilter


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityTypes** | **List&lt;EntityType&gt;** | Optionally provide entity types to filer by. Valid options are Achievement, Competition, or Contest |  [optional]
**ids** | **List&lt;String&gt;** | Optionally provide a list of identifiers for either Achievements, Competitions, or Contest |  [optional]
**statusCodes** | [**RangeQuery**](RangeQuery.md) |  |  [optional]
**optInStatusCodes** | [**RangeQuery**](RangeQuery.md) |  |  [optional]
**skip** | **Integer** | The number of records to skip. Zero [0] is the defualt value |  [optional]
**limit** | **Integer** | Limit the results. The default is 20 if left empty |  [optional]



