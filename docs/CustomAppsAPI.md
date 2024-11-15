# CustomAppsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomApp**](CustomAppsAPI.md#createcustomapp) | **POST** /api/v1/library/custom-apps | Create Custom App
[**deleteCustomApp**](CustomAppsAPI.md#deletecustomapp) | **DELETE** /api/v1/library/custom-apps/{library_item_id} | Delete Custom App
[**getCustomApp**](CustomAppsAPI.md#getcustomapp) | **GET** /api/v1/library/custom-apps/{library_item_id} | Get Custom App
[**listCustomApps**](CustomAppsAPI.md#listcustomapps) | **GET** /api/v1/library/custom-apps | List Custom Apps
[**updateCustomApp**](CustomAppsAPI.md#updatecustomapp) | **PATCH** /api/v1/library/custom-apps/{library_item_id} | Update Custom App
[**uploadCustomApp**](CustomAppsAPI.md#uploadcustomapp) | **POST** /api/v1/library/custom-apps/upload | Upload Custom App


# **createCustomApp**
```swift
    open class func createCustomApp(name: String, fileKey: String, installType: String, installEnforcement: String, showInSelfService: String, selfServiceCategoryId: String, selfServiceRecommended: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Custom App

<p>This request allows you to create a custom app in the Kandji library.</p> <p>Must have already generated a <code>file_key</code> via <code>Create custom app</code> endpoint and uploaded the file to S3 using a request similar to the <code>Upload to S3</code> example.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let name = "name_example" // String | (Required) The name for this Custom App
let fileKey = "fileKey_example" // String | (Required) The S3 key from the <code>Upload Custom App</code> endpont used to upload the custom app file.
let installType = "installType_example" // String | (Required) Options are package, zip, image
let installEnforcement = "installEnforcement_example" // String | (Required) Options are install_once, continuously_enforce, no_enforcement
let showInSelfService = "showInSelfService_example" // String | (Optional, default=false) Displays this app in Self Service
let selfServiceCategoryId = "selfServiceCategoryId_example" // String | (Required for show_in_self_service=true) Self Service Category (by ID) to display app in
let selfServiceRecommended = "selfServiceRecommended_example" // String | (Optional, default=false) Adds recommended flag to app in Self Service

// Create Custom App
CustomAppsAPI.createCustomApp(name: name, fileKey: fileKey, installType: installType, installEnforcement: installEnforcement, showInSelfService: showInSelfService, selfServiceCategoryId: selfServiceCategoryId, selfServiceRecommended: selfServiceRecommended) { (response, error) in
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
 **name** | **String** | (Required) The name for this Custom App | 
 **fileKey** | **String** | (Required) The S3 key from the &lt;code&gt;Upload Custom App&lt;/code&gt; endpont used to upload the custom app file. | 
 **installType** | **String** | (Required) Options are package, zip, image | 
 **installEnforcement** | **String** | (Required) Options are install_once, continuously_enforce, no_enforcement | 
 **showInSelfService** | **String** | (Optional, default&#x3D;false) Displays this app in Self Service | 
 **selfServiceCategoryId** | **String** | (Required for show_in_self_service&#x3D;true) Self Service Category (by ID) to display app in | 
 **selfServiceRecommended** | **String** | (Optional, default&#x3D;false) Adds recommended flag to app in Self Service | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomApp**
```swift
    open class func deleteCustomApp(libraryItemId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Custom App

<p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific custom app from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Delete Custom App
CustomAppsAPI.deleteCustomApp(libraryItemId: libraryItemId) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomApp**
```swift
    open class func getCustomApp(libraryItemId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Custom App

<p>This endpoint retrieves details about a specific custom app from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Get Custom App
CustomAppsAPI.getCustomApp(libraryItemId: libraryItemId) { (response, error) in
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

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomApps**
```swift
    open class func listCustomApps(page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Custom Apps

This endpoint makes a request to retrieve a list of custom apps from the Kandji library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let page = "page_example" // String | Optional page number. Used when results exceed pagination threshold. A hard upper <code>limit</code> is set at 300 device records returned per request. (optional)

// List Custom Apps
CustomAppsAPI.listCustomApps(page: page) { (response, error) in
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
 **page** | **String** | Optional page number. Used when results exceed pagination threshold. A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomApp**
```swift
    open class func updateCustomApp(libraryItemId: String, name: String, active: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update Custom App

<p>This request allows you to update a custom app in the Kandji library.</p> <p>Must have already generated a <code>file_key</code> via <code>Create custom app</code> endpoint and uploaded the file to S3 using a request similar to the <code>Upload to S3</code> example.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 
let name = "name_example" // String | Renaming a Custom App
let active = "active_example" // String | (Optional, default=true) Whether this Custom App is active and installable

// Update Custom App
CustomAppsAPI.updateCustomApp(libraryItemId: libraryItemId, name: name, active: active) { (response, error) in
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
 **name** | **String** | Renaming a Custom App | 
 **active** | **String** | (Optional, default&#x3D;true) Whether this Custom App is active and installable | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadCustomApp**
```swift
    open class func uploadCustomApp(body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upload Custom App

<p>This request retrieves the S3 upload details need for uploading the app to Amazon S3.</p> <p>Creates a pre-signed <code>post_url</code> to upload a new Custom App to S3.</p> <p>The provided <code>name</code> will be used to calculate a unique <code>file_key</code> in S3.</p> <p>A separate request will have to be made to the <code>Upload to S3</code> endpoint to upload the file to S3 directly using the <code>post_url</code> and <code>post_data</code> from the <code>Upload Custom App</code> response.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let body = "body_example" // String |  (optional)

// Upload Custom App
CustomAppsAPI.uploadCustomApp(body: body) { (response, error) in
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
 **body** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

