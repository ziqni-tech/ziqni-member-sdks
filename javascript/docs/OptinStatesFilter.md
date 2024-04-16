# ZiqniMemberApi.OptinStatesFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityTypes** | [**[EntityType]**](EntityType.md) | Optionally provide entity types to filer by. Valid options are Achievement, Competition, or Contest | [optional] 
**ids** | **[String]** | Optionally provide a list of identifiers for either Achievements, Competitions, or Contest | [optional] 
**statusCodes** | [**RangeQuery**](RangeQuery.md) |  | [optional] 
**optInStatusCodes** | [**RangeQuery**](RangeQuery.md) |  | [optional] 
**skip** | **Number** | The number of records to skip. Zero [0] is the defualt value | [optional] 
**limit** | **Number** | Limit the results. The default is 20 if left empty | [optional] 


