# ZiqniMemberApi.ProductFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityIDs** | **[String]** | The entity id to search. The default is product id | [optional] 
**sortBy** | [**[QuerySortBy]**](QuerySortBy.md) | Allow data to be sorted by name, description, created, etc. The default is name. Sorting is not available on translations | [optional] 
**skip** | **Number** | Allows paging through the data. The default is zero. If the limit is set 20, and the skip is set to 20 then it will return the next 20 records i.e. page 2 | [optional] 
**limit** | **Number** | Limit the result set. Default value is 20, maximum value is 50. | [optional] 
**constraints** | **[String]** | Specify the constraints that need to be applied to the filter. | [optional] 
**entityType** | **String** | This field determines the meaning of the IDs field. The default is product, you can also specify competition or achievement. | [optional] 


