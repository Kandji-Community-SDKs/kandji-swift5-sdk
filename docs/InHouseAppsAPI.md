# InHouseAppsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInhouseApp**](InHouseAppsAPI.md#createinhouseapp) | **POST** /api/v1/library/ipa-apps | Create In-House App
[**deleteInhouseApp**](InHouseAppsAPI.md#deleteinhouseapp) | **DELETE** /api/v1/library/ipa-apps/{library_item_id} | Delete In-House App
[**getInhouseApp**](InHouseAppsAPI.md#getinhouseapp) | **GET** /api/v1/library/ipa-apps/{library_item_id} | Get In-House App
[**listInhouseApps**](InHouseAppsAPI.md#listinhouseapps) | **GET** /api/v1/library/ipa-apps | List In-House Apps
[**updateInhouseApp**](InHouseAppsAPI.md#updateinhouseapp) | **PATCH** /api/v1/library/ipa-apps/{library_item_id} | Update In-House App
[**uploadInhouseApp**](InHouseAppsAPI.md#uploadinhouseapp) | **POST** /api/v1/library/ipa-apps/upload | Upload In-House App
[**uploadInhouseAppStatus**](InHouseAppsAPI.md#uploadinhouseappstatus) | **GET** /api/v1/library/ipa-apps/upload/{pending_upload_id}/status | Upload In-House App Status


# **createInhouseApp**
```swift
    open class func createInhouseApp(contentType: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create In-House App

<p>After uploading the .ipa app file to S3, this request allows you to create the In-House App in the Kandji library.</p> <p>You must have already generated a <code>file_key</code> via <code>Create In-House App</code> endpoint and uploaded the file to S3 using a request similar to the <code>Upload In-House App to S3</code> example.</p> <p>The <code>name</code> key can be an arbitrary value used for setting the name of the Library Item as it appears in Kandji</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let contentType = "contentType_example" // String | 
let body = "body_example" // String |  (optional)

// Create In-House App
InHouseAppsAPI.createInhouseApp(contentType: contentType, body: body) { (response, error) in
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
 **contentType** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInhouseApp**
```swift
    open class func deleteInhouseApp(libraryItemId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete In-House App

<p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific In-House App Library Item from Kandji.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the Library Item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Delete In-House App
InHouseAppsAPI.deleteInhouseApp(libraryItemId: libraryItemId) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInhouseApp**
```swift
    open class func getInhouseApp(libraryItemId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get In-House App

<p>This endpoint retrieves details about a specific In-House App from the Kandji Library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the Library Item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Get In-House App
InHouseAppsAPI.getInhouseApp(libraryItemId: libraryItemId) { (response, error) in
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

# **listInhouseApps**
```swift
    open class func listInhouseApps(page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List In-House Apps

This endpoint makes a request to retrieve a list of In-House Apps from the Kandji library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let page = "page_example" // String | Optional page number. Used when results exceed pagination threshold. A hard upper <code>limit</code> is set at 300 app records returned per request. (optional)

// List In-House Apps
InHouseAppsAPI.listInhouseApps(page: page) { (response, error) in
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
 **page** | **String** | Optional page number. Used when results exceed pagination threshold. A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 app records returned per request. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInhouseApp**
```swift
    open class func updateInhouseApp(libraryItemId: String, contentType: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update In-House App

<p>This request allows you to update an existing In-house App in the Kandji library.</p> <p>Must have already generated a <code>file_key</code> via <code>Create In-House App</code> endpoint and uploaded the file to S3 using a request similar to the <code>Upload In-House App to S3</code> example.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 
let contentType = "contentType_example" // String | 
let body = "body_example" // String |  (optional)

// Update In-House App
InHouseAppsAPI.updateInhouseApp(libraryItemId: libraryItemId, contentType: contentType, body: body) { (response, error) in
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
 **contentType** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadInhouseApp**
```swift
    open class func uploadInhouseApp(contentType: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Upload In-House App

<p>This request retrieves the S3 upload details needed for uploading the in-house app .ipa file to Amazon S3.</p> <p>Creates a pre-signed <code>post_url</code> to upload a new In-house App to S3.</p> <p>The provided <code>filename</code> will be used to calculate a unique <code>file_key</code> in S3.</p> <p>A separate request will have to be made to the <code>Upload In-House App to S3</code> endpoint to upload the file to S3 directly using the <code>post_url</code> and <code>post_data</code> from the <code>Upload In-House App</code> response.</p> <p>The returned <code>id</code> value can be used to check the upload status in the <code>Upload In-House App Status</code> endpoint after calling the <code>Upload In-House App to S3</code> endpoint.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let contentType = "contentType_example" // String | 
let body = "body_example" // String |  (optional)

// Upload In-House App
InHouseAppsAPI.uploadInhouseApp(contentType: contentType, body: body) { (response, error) in
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
 **contentType** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadInhouseAppStatus**
```swift
    open class func uploadInhouseAppStatus(pendingUploadId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Upload In-House App Status

<p>This endpoint retrieves current upload status of an In-House App .ipa file to Amazon S3 from the <code>Upload In-House App to S3</code> endpoint</p> <p>The app .ipa file has successfully uploaded and is ready for the <code>Create In-House App</code> endpoint when the <code>status</code> returned is <code>VALIDATED</code></p> <p>If the <code>status</code> returned is <code>UPLOADING</code> or VALIDATING, the upload is still being processed. Retry again after 1 second.</p> <p>If the <code>status</code> returned is <code>UPLOAD_FAILED</code> or <code>VALIDATE_FAILED</code> then re-attempt the <code>Upload In-House App to S3</code> endpoint.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>pending_upload_id</code> (path parameter): This should be the <code>id</code> from the <code>Upload to In-House App</code> API response</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let pendingUploadId = "pendingUploadId_example" // String | 

// Upload In-House App Status
InHouseAppsAPI.uploadInhouseAppStatus(pendingUploadId: pendingUploadId) { (response, error) in
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
 **pendingUploadId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

