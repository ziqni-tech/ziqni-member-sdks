# ProductReduced

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | The name of the product | [optional] 
**ProductRefId** | Pointer to **string** | The reference to this product in your system. The reference identifier can not be changed after the product has been created | [optional] 
**Tags** | Pointer to **[]string** | A list of Strings used to tag products with taxonomy terms | [optional] 

## Methods

### NewProductReduced

`func NewProductReduced() *ProductReduced`

NewProductReduced instantiates a new ProductReduced object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProductReducedWithDefaults

`func NewProductReducedWithDefaults() *ProductReduced`

NewProductReducedWithDefaults instantiates a new ProductReduced object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ProductReduced) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ProductReduced) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ProductReduced) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ProductReduced) HasName() bool`

HasName returns a boolean if a field has been set.

### GetProductRefId

`func (o *ProductReduced) GetProductRefId() string`

GetProductRefId returns the ProductRefId field if non-nil, zero value otherwise.

### GetProductRefIdOk

`func (o *ProductReduced) GetProductRefIdOk() (*string, bool)`

GetProductRefIdOk returns a tuple with the ProductRefId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProductRefId

`func (o *ProductReduced) SetProductRefId(v string)`

SetProductRefId sets ProductRefId field to given value.

### HasProductRefId

`func (o *ProductReduced) HasProductRefId() bool`

HasProductRefId returns a boolean if a field has been set.

### GetTags

`func (o *ProductReduced) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *ProductReduced) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *ProductReduced) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *ProductReduced) HasTags() bool`

HasTags returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


