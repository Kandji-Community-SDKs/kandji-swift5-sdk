# CustomProfilesAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomProfile**](CustomProfilesAPI.md#createcustomprofile) | **POST** /api/v1/library/custom-profiles | Create Custom Profile
[**deleteCustomProfile**](CustomProfilesAPI.md#deletecustomprofile) | **DELETE** /api/v1/library/custom-profiles/{library_item_id} | Delete Custom Profile
[**getCustomProfile**](CustomProfilesAPI.md#getcustomprofile) | **GET** /api/v1/library/custom-profiles/{library_item_id} | Get Custom Profile
[**listCustomProfiles**](CustomProfilesAPI.md#listcustomprofiles) | **GET** /api/v1/library/custom-profiles | List Custom Profiles
[**updateCustomProfile**](CustomProfilesAPI.md#updatecustomprofile) | **PATCH** /api/v1/library/custom-profiles/{library_item_id} | Update Custom Profile


# **createCustomProfile**
```swift
    open class func createCustomProfile(name: String, file: URL, active: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Custom Profile

This request allows you to create a custom profile in the Kandji library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let name = "name_example" // String | (Required) The profile name
let file = URL(string: "https://example.com")! // URL | (Required) The path to the profile's .mobileconfig file
let active = "active_example" // String | (Optional, default=true) Whether this library item is active

// Create Custom Profile
CustomProfilesAPI.createCustomProfile(name: name, file: file, active: active) { (response, error) in
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
 **name** | **String** | (Required) The profile name | 
 **file** | **URL** | (Required) The path to the profile&#39;s .mobileconfig file | 
 **active** | **String** | (Optional, default&#x3D;true) Whether this library item is active | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomProfile**
```swift
    open class func deleteCustomProfile(libraryItemId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Custom Profile

<p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific custom profile from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Delete Custom Profile
CustomProfilesAPI.deleteCustomProfile(libraryItemId: libraryItemId) { (response, error) in
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

# **getCustomProfile**
```swift
    open class func getCustomProfile(libraryItemId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Custom Profile

<p>This endpoint retrieves details about a specific custom profile from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Get Custom Profile
CustomProfilesAPI.getCustomProfile(libraryItemId: libraryItemId) { (response, error) in
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

# **listCustomProfiles**
```swift
    open class func listCustomProfiles(page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Custom Profiles

This endpoint makes a request to retrieve a list of custom profiles from the Kandji library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let page = "page_example" // String | Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. (optional)

// List Custom Profiles
CustomProfilesAPI.listCustomProfiles(page: page) { (response, error) in
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
 **page** | **String** | Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomProfile**
```swift
    open class func updateCustomProfile(libraryItemId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update Custom Profile

<p>This request allows you to update a custom profile in the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Update Custom Profile
CustomProfilesAPI.updateCustomProfile(libraryItemId: libraryItemId) { (response, error) in
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

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

