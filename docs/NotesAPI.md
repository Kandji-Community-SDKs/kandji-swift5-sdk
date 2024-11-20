# NotesAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeviceNote**](NotesAPI.md#createdevicenote) | **POST** /api/v1/devices/{device_id}/notes | Create Device Note
[**deleteDeviceNote**](NotesAPI.md#deletedevicenote) | **DELETE** /api/v1/devices/{device_id}/notes/{note_id} | Delete Device Note
[**getDeviceNotes**](NotesAPI.md#getdevicenotes) | **GET** /api/v1/devices/{device_id}/notes | Get Device Notes
[**retrieveDeviceNote**](NotesAPI.md#retrievedevicenote) | **GET** /api/v1/devices/{device_id}/notes/{note_id} | Retrieve Device Note
[**updateDeviceNote**](NotesAPI.md#updatedevicenote) | **PATCH** /api/v1/devices/{device_id}/notes/{note_id} | Update Device Note


# **createDeviceNote**
```swift
    open class func createDeviceNote(deviceId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Device Note

This request creates a note for the specified device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Create Device Note
NotesAPI.createDeviceNote(deviceId: deviceId, body: body) { (response, error) in
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
 **deviceId** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeviceNote**
```swift
    open class func deleteDeviceNote(deviceId: String, noteId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete Device Note

This request deletes a specified note (Note ID) for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let noteId = "noteId_example" // String | 

// Delete Device Note
NotesAPI.deleteDeviceNote(deviceId: deviceId, noteId: noteId) { (response, error) in
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
 **deviceId** | **String** |  | 
 **noteId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceNotes**
```swift
    open class func getDeviceNotes(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Notes

This request gets all notes for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Notes
NotesAPI.getDeviceNotes(deviceId: deviceId) { (response, error) in
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
 **deviceId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveDeviceNote**
```swift
    open class func retrieveDeviceNote(deviceId: String, noteId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Retrieve Device Note

This request retrieves a specified note (Note ID) for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let noteId = "noteId_example" // String | 

// Retrieve Device Note
NotesAPI.retrieveDeviceNote(deviceId: deviceId, noteId: noteId) { (response, error) in
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
 **deviceId** | **String** |  | 
 **noteId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceNote**
```swift
    open class func updateDeviceNote(deviceId: String, noteId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update Device Note

This request patches a specified note (Note ID) for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let noteId = "noteId_example" // String | 
let body = "body_example" // String |  (optional)

// Update Device Note
NotesAPI.updateDeviceNote(deviceId: deviceId, noteId: noteId, body: body) { (response, error) in
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
 **deviceId** | **String** |  | 
 **noteId** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

