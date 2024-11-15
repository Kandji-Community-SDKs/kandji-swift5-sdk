# LibraryItemsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLibraryItemActivity**](LibraryItemsAPI.md#getlibraryitemactivity) | **GET** /api/v1/library/library-items/{library_item_id}/activity | Get Library Item Activity
[**getLibraryItemStatuses**](LibraryItemsAPI.md#getlibraryitemstatuses) | **GET** /api/v1/library/library-items/{library_item_id}/status | Get Library Item Statuses


# **getLibraryItemActivity**
```swift
    open class func getLibraryItemActivity(libraryItemId: String, activityType: String? = nil, userId: String? = nil, userEmail: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Library Item Activity

<p>This endpoint retrieves the activity related to a specific library item. Activity is listed from newest to oldest.</p> <p>To see a delta of the activity events between now and the last request, you can store the newest entry from the previous request and then look for that entry in the next request. Any entry post that will be the delta.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 
let activityType = "activityType_example" // String | Filter actions by this activity type. Choices are: library_item_created, library_item_edited, library_item_deleted, library_item_duplicated, library_item_assignment_changed (optional)
let userId = "userId_example" // String | Filter actions by this user (id) (optional)
let userEmail = "userEmail_example" // String | Filter actions by this user (email) (optional)
let limit = "limit_example" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "offset_example" // String | Specify the starting record to return (optional)

// Get Library Item Activity
LibraryItemsAPI.getLibraryItemActivity(libraryItemId: libraryItemId, activityType: activityType, userId: userId, userEmail: userEmail, limit: limit, offset: offset) { (response, error) in
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

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **libraryItemId** | **String** |  | 
 **activityType** | **String** | Filter actions by this activity type. Choices are: library_item_created, library_item_edited, library_item_deleted, library_item_duplicated, library_item_assignment_changed | [optional] 
 **userId** | **String** | Filter actions by this user (id) | [optional] 
 **userEmail** | **String** | Filter actions by this user (email) | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraryItemStatuses**
```swift
    open class func getLibraryItemStatuses(libraryItemId: String, computerId: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Library Item Statuses

<p>This endpoint retrieves the statuses related to a specific library item.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 
let computerId = "computerId_example" // String | Query for the status of one device. (optional)
let limit = "limit_example" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return (optional)

// Get Library Item Statuses
LibraryItemsAPI.getLibraryItemStatuses(libraryItemId: libraryItemId, computerId: computerId, limit: limit, offset: offset) { (response, error) in
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

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **libraryItemId** | **String** |  | 
 **computerId** | **String** | Query for the status of one device. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

