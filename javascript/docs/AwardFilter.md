# ZiqniMemberApi.AwardFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productIds** | **[String]** | Filter by specific product identifiers | [optional] 
**tags** | **[String]** | Filter only records that have these tags | [optional] 
**ids** | **[String]** | The award identifiers to filter by | [optional] 
**statusCode** | [**NumberRange**](NumberRange.md) |  | [optional] 
**sortBy** | [**[QuerySortBy]**](QuerySortBy.md) | Define Sorting requirements by field keys | [optional] 
**skip** | **Number** | Skip the first records, allows for paging | [optional] 
**limit** | **Number** | Only return this many records, allows for paging. default is 20 if not set | [optional] 
**constraints** | **[String]** | System defined [optional] | [optional] 
**entityIds** | **[String]** | Achievement, Contest or Competition | [optional] 
**lifecycleStatus** | **String** | These states are derived values from the activeFrom and activeUntil values in the Award Upcoming: Refers to events, activities, or items that are scheduled to happen or become available in the future. Active: Describes events, processes, or items that are currently happening or in progress. Archived: Indicates events, documents, or records that are no longer active or current but have been stored or preserved for reference or historical purposes. | [optional] 



## Enum: LifecycleStatusEnum


* `Upcoming` (value: `"Upcoming"`)

* `Active` (value: `"Active"`)

* `Archived` (value: `"Archived"`)




