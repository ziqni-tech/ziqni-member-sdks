

# ProductFilter


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityIDs** | **List&lt;String&gt;** | The entity id to search. The default is product id |  [optional]
**sortBy** | [**List&lt;QuerySortBy&gt;**](QuerySortBy.md) | Allow data to be sorted by name, description, created, etc. The default is name. Sorting is not available on translations |  [optional]
**skip** | **Integer** | Allows paging through the data. The default is zero. If the limit is set 20, and the skip is set to 20 then it will return the next 20 records i.e. page 2 |  [optional]
**limit** | **Integer** | Limit the result set. Default value is 20, maximum value is 50. |  [optional]
**constraints** | **List&lt;String&gt;** | Specify the constraints that need to be applied to the filter. - empty (default) &#x3D;&#x3D; search based on the provided criteria - productRefId &#x3D;&#x3D; This means the entityId(s) provided are product reference identifiers - similarTo &#x3D;&#x3D; Find product similar to the prouct ID(s) provided  |  [optional]
**entityType** | **String** | This field determines the meaning of the IDs field - product (default) - competition - achievement.  |  [optional]



