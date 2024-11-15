# SelfServiceAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listSelfServiceCategories**](SelfServiceAPI.md#listselfservicecategories) | **GET** /api/v1/self-service/categories | List Self Service Categories


# **listSelfServiceCategories**
```swift
    open class func listSelfServiceCategories(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Self Service Categories

<p>This endpoint retrieves a list of self-service categories and their associated IDs.</p> <p>If you are planning to make a Library item available in Self Service under a specific category, you can call this endpoint to get the category ID and then use that ID when creating or updating the library item via the Kandji API.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List Self Service Categories
SelfServiceAPI.listSelfServiceCategories() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

