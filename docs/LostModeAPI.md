# LostModeAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disableLostMode**](LostModeAPI.md#disablelostmode) | **POST** /api/v1/devices/{device_id}/action/disablelostmode | Disable Lost Mode
[**enableLostMode**](LostModeAPI.md#enablelostmode) | **POST** /api/v1/devices/{device_id}/action/enablelostmode | Enable Lost Mode
[**playLostModeSound**](LostModeAPI.md#playlostmodesound) | **POST** /api/v1/devices/{device_id}/action/playlostmodesound | Play Lost Mode Sound
[**updateLocation**](LostModeAPI.md#updatelocation) | **POST** /api/v1/devices/{device_id}/action/updatelocation | Update Location


# **disableLostMode**
```swift
    open class func disableLostMode(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable Lost Mode

<p>This command will send a request to turn off lost mode on iOS and iPadOS.</p> <p>If the command is already pending, the message &quot;<em>Disable lost mode is already pending for this device.</em>&quot; will be in the response.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deviceId = "deviceId_example" // String | 

// Disable Lost Mode
LostModeAPI.disableLostMode(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableLostMode**
```swift
    open class func enableLostMode(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enable Lost Mode

<p>This endpoint sends an MDM command to remotely turn on lost mode on iOS and iPadOS.</p> <p>Optionally, a JSON payload can be sent in the request to set a lock message, phone number, and footnote on the target device.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Enable Lost Mode
LostModeAPI.enableLostMode(deviceId: deviceId, body: body) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playLostModeSound**
```swift
    open class func playLostModeSound(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Play Lost Mode Sound

<p>This command will tell the target iOS or iPadOS device to play the lost mode sound.</p> <p><strong>Note</strong>: The Lost Mode sound will play for 2 minutes, even if the device is in silent mode. Anyone finding the device can silence the sound by pressing any of its side buttons.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deviceId = "deviceId_example" // String | 

// Play Lost Mode Sound
LostModeAPI.playLostModeSound(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocation**
```swift
    open class func updateLocation(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update Location

This endpoint sends an MDM command to update the location data on iOS and iPadOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deviceId = "deviceId_example" // String | 

// Update Location
LostModeAPI.updateLocation(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

