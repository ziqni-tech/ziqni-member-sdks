

# AwardFilter



## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**productIds** | **List&lt;String&gt;** | Filter by specific product identifiers |  [optional] |
|**tags** | **List&lt;String&gt;** | Filter only records that have these tags |  [optional] |
|**ids** | **List&lt;String&gt;** | The award identifiers to filter by |  [optional] |
|**statusCode** | [**NumberRange**](NumberRange.md) |  |  [optional] |
|**sortBy** | [**List&lt;QuerySortBy&gt;**](QuerySortBy.md) | Define Sorting requirements by field keys |  [optional] |
|**skip** | **Integer** | Skip the first records, allows for paging |  [optional] |
|**limit** | **Integer** | Only return this many records, allows for paging. default is 20 if not set |  [optional] |
|**constraints** | **List&lt;String&gt;** | System defined [optional] |  [optional] |
|**entityIds** | **List&lt;String&gt;** | Achievement, Contest or Competition |  [optional] |
|**lifecycleStatus** | [**LifecycleStatusEnum**](#LifecycleStatusEnum) | These states are derived values from the activeFrom and activeUntil values in the Award Upcoming: Refers to events, activities, or items that are scheduled to happen or become available in the future. Active: Describes events, processes, or items that are currently happening or in progress. Archived: Indicates events, documents, or records that are no longer active or current but have been stored or preserved for reference or historical purposes. |  [optional] |



## Enum: LifecycleStatusEnum

| Name | Value |
|---- | -----|
| UPCOMING | &quot;Upcoming&quot; |
| ACTIVE | &quot;Active&quot; |
| ARCHIVED | &quot;Archived&quot; |



