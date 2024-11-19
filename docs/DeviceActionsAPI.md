# DeviceActionsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearPasscode**](DeviceActionsAPI.md#clearpasscode) | **POST** /api/v1/devices/{device_id}/action/clearpasscode | Clear Passcode
[**deleteDevice**](DeviceActionsAPI.md#deletedevice) | **DELETE** /api/v1/devices/{device_id} | Delete Device
[**deleteUser**](DeviceActionsAPI.md#deleteuser) | **POST** /api/v1/devices/{device_id}/action/deleteuser | Delete User
[**eraseDevice**](DeviceActionsAPI.md#erasedevice) | **POST** /api/v1/devices/{device_id}/action/erase | Erase Device
[**getDeviceCommands**](DeviceActionsAPI.md#getdevicecommands) | **GET** /api/v1/devices/{device_id}/commands | Get Device Commands
[**lockDevice**](DeviceActionsAPI.md#lockdevice) | **POST** /api/v1/devices/{device_id}/action/lock | Lock Device
[**reinstallAgent**](DeviceActionsAPI.md#reinstallagent) | **POST** /api/v1/devices/{device_id}/action/reinstallagent | Reinstall Agent
[**remoteDesktop**](DeviceActionsAPI.md#remotedesktop) | **POST** /api/v1/devices/{device_id}/action/remotedesktop | Remote Desktop
[**renewMdmProfile**](DeviceActionsAPI.md#renewmdmprofile) | **POST** /api/v1/devices/{device_id}/action/renewmdmprofile | Renew MDM Profile
[**restartDevice**](DeviceActionsAPI.md#restartdevice) | **POST** /api/v1/devices/{device_id}/action/restart | Restart Device
[**sendBlankpush**](DeviceActionsAPI.md#sendblankpush) | **POST** /api/v1/devices/{device_id}/action/blankpush | Send Blankpush
[**setName**](DeviceActionsAPI.md#setname) | **POST** /api/v1/devices/{device_id}/action/setname | Set Name
[**shutdown**](DeviceActionsAPI.md#shutdown) | **POST** /api/v1/devices/{device_id}/action/shutdown | Shutdown
[**unlockAccount**](DeviceActionsAPI.md#unlockaccount) | **POST** /api/v1/devices/{device_id}/action/unlockaccount | Unlock Account
[**updateInventory**](DeviceActionsAPI.md#updateinventory) | **POST** /api/v1/devices/{device_id}/action/updateinventory | Update Inventory


# **clearPasscode**
```swift
    open class func clearPasscode(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Clear Passcode

This endpoint sends an MDM command to clear a device passcode. Available for iPhone and iPad.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Clear Passcode
DeviceActionsAPI.clearPasscode(deviceId: deviceId) { (response, error) in
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

# **deleteDevice**
```swift
    open class func deleteDevice(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Device

This endpoint sends an MDM command to delete a device. This will remove the device record from Kandji and send a Remove Management command. For macOS devices, it will also send an uninstall command to the Kandji Agent at the next agent checkin.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Delete Device
DeviceActionsAPI.deleteDevice(deviceId: deviceId) { (response, error) in
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

# **deleteUser**
```swift
    open class func deleteUser(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete User

<p>This endpoint sends an MDM command to delete a local user account on macOS and Shared iPad (Device Supervision via Automated Device Enrollment is required).</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>DeleteAllUsers</code> - <code>boolean</code></p> <p><code>ForceDeletion</code> - <code>boolean</code></p> <p><code>UserName</code> - <code>string</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Delete User
DeviceActionsAPI.deleteUser(deviceId: deviceId, body: body) { (response, error) in
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

# **eraseDevice**
```swift
    open class func eraseDevice(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Erase Device

<p>This endpoint sends an MDM command to erase the device.</p> <p>iOS 4.0+, iPadOS 4.0+, macOS 10.7+, tvOS 10.2+</p> <p><strong>Request Body Parameters: application/json</strong></p> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th>Key</th> <th>Type</th> <th>Description</th> </tr> </thead> <tbody> <tr> <td><code>PIN</code></td> <td><code>string</code></td> <td>The six-character PIN for Find My. This value is available in macOS 10.8 and later.  <br />  <br />Note: This value will be ignored for iOS, iPadOS, and tvOS devices.</td> </tr> <tr> <td><code>PreserveDataPlan</code></td> <td><code>boolean</code></td> <td>If true, preserve the data plan on an iPhone or iPad with eSIM functionality, if one exists. This value is available in iOS 11 and later.  <br />  <br />Default: true</td> </tr> <tr> <td><code>DisallowProximitySetup</code></td> <td><code>boolean</code></td> <td>If true, disable Proximity Setup on the next reboot and skip the pane in Setup Assistant. This value is available in iOS 11 and later. Prior to iOS 14, don’t use this option with any other option.  <br />  <br />Default: false</td> </tr> <tr> <td><code>ReturnToService</code></td> <td><code>object</code></td> <td>(iOS 17 and later and iPadOS 17 and later and with Shared iPad ) When sending the erase device command to mobile devices, use this key to enable Return to Service. Include an optional Wi-Fi payload ProfileId to allow the device to connect to a Wi-Fi network automatically after being erased. If a Wi-Fi ProfileId is not provided and the mobile device is not tethered to a Mac to share the network connection, the end-user will be required to select a Wi-Fi network to complete the setup.  <br />  <br />If sent to any macOS computer or to mobile devices on iOS 16 or iPadOS 16 and below, the RTS keys will be ignored, and only the erase device command will be issued to the device.</td> </tr> <tr> <td>- <code>Enabled</code></td> <td><code>boolean</code></td> <td>(Required) If true, the device tries to re-enroll itself automatically after erasure. The user needs to deactivate all activation locks for this feature to work correctly.</td> </tr> <tr> <td>- <code>ProfileId</code></td> <td><code>string</code></td> <td>Profile ID value associated with a Wi-Fi profile payload. This is required when the device doesn’t have ethernet access.</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Erase Device
DeviceActionsAPI.eraseDevice(deviceId: deviceId, body: body) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceCommands**
```swift
    open class func getDeviceCommands(deviceId: String, limit: String, offset: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get Device Commands

<p>This endpoint sends a request to get information about the commands sent to a given device ID.</p> <h3 id=&quot;mdm-status-codes&quot;>MDM Status Codes</h3> <ul> <li>1 : Command is Pending</li> <li>2 : Command is running</li> <li>3 : Command completed</li> <li>4 : Command failed</li> <li>5 : Command received &quot;Not Now&quot; response</li> </ul>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let limit = "limit_example" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results.
let offset = "offset_example" // String | Specify the starting record to return (optional)

// Get Device Commands
DeviceActionsAPI.getDeviceCommands(deviceId: deviceId, limit: limit, offset: offset) { (response, error) in
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
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockDevice**
```swift
    open class func lockDevice(deviceId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Lock Device

<p>This endpoint sends an MDM command to remotely lock a device.</p> <p>For macOS clients, an unlock PIN will be created, and returned in the response.</p> <blockquote> <p><strong>Caution !!!</strong><br /><em>For a Mac with Apple silicon running a version of macOS before 11.5 will deactivate the Mac. To reactivate, the Mac requires a network connection and authentication by a Secure Token enabled local administrator.</em></p> </blockquote> <p>Optionally, a JSON payload can be sent in the request to set a lock message and phone number on the target device.</p> <p><strong>Note:</strong> For macOS, although the lock message is displayed on all types of Mac computers, the phone number is displayed only on a Mac with Apple silicon.</p> <h4 id=&quot;response-properties&quot;>Response properties</h4> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th>Property</th> <th>Description</th> <th>Type</th> </tr> </thead> <tbody> <tr> <td>PIN</td> <td>Six digit pin code used to unlock a Mac.</td> <td>String</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Lock Device
DeviceActionsAPI.lockDevice(deviceId: deviceId, body: body) { (response, error) in
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

# **reinstallAgent**
```swift
    open class func reinstallAgent(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reinstall Agent

This endpoint sends an MDM command reinstall the Kandji Agent. Available for macOS devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Reinstall Agent
DeviceActionsAPI.reinstallAgent(deviceId: deviceId) { (response, error) in
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

# **remoteDesktop**
```swift
    open class func remoteDesktop(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remote Desktop

<p>This endpoint sends an MDM command to control the Remote Management status on a Mac. This MDM command turns on (or turns off) Remote Management with <em>Observe</em> and <em>Control</em> permissions given to all users*.*</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>EnableRemoteDesktop</code> - <code>boolean</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Remote Desktop
DeviceActionsAPI.remoteDesktop(deviceId: deviceId, body: body) { (response, error) in
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

# **renewMdmProfile**
```swift
    open class func renewMdmProfile(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Renew MDM Profile

This endpoint sends an MDM command to re-install the existing root MDM profile for a given device ID. This command will not impact any existing configurations, apps, or profiles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Renew MDM Profile
DeviceActionsAPI.renewMdmProfile(deviceId: deviceId) { (response, error) in
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

# **restartDevice**
```swift
    open class func restartDevice(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restart Device

<p>This endpoint sends an MDM command to remotely restart a device.</p> <ul> <li><p><code>RebuildKernelCache</code> - If <code>true</code>, the system rebuilds the kernel cache during a device restart. If <code>BootstrapTokenAllowedForAuthentication</code> is <code>true</code> inSecurityInfoResponse.SecurityInfo, the device requests the bootstrap token from MDM before executing this command. This value is available in macOS 11 and later. Default: false</p> </li> <li><p><code>NotifyUser</code> - If <code>true</code>, notifies the user to restart the device at their convenience. Forced restart if the device is at <code>loginwindow</code> with no logged-in users. The user can dismiss the notification and ignore the request. No further notifications display unless you resend the command. This value is available in macOS 11.3 and later. Default: false</p> </li> </ul>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Restart Device
DeviceActionsAPI.restartDevice(deviceId: deviceId, body: body) { (response, error) in
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

# **sendBlankpush**
```swift
    open class func sendBlankpush(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Send Blankpush

<p>This endpoint sends an MDM command to initiate a blank push.</p> <p><a href=&quot;https://support.kandji.io/what-is-a-blank-push&quot;>Using the Blank Push command</a></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Send Blankpush
DeviceActionsAPI.sendBlankpush(deviceId: deviceId) { (response, error) in
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

# **setName**
```swift
    open class func setName(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set Name

<p>This endpoint sends an MDM command to set the device name.</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>DeviceName</code> - <code>string</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Set Name
DeviceActionsAPI.setName(deviceId: deviceId, body: body) { (response, error) in
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

# **shutdown**
```swift
    open class func shutdown(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Shutdown

This endpoint sends an MDM command to shutdown a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Shutdown
DeviceActionsAPI.shutdown(deviceId: deviceId) { (response, error) in
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

# **unlockAccount**
```swift
    open class func unlockAccount(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unlock Account

<p>This endpoint sends an MDM command to unlock a user account that locked by the system because of too many failed password attempts. Available for macOS.</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>UserName</code> - <code>string</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Unlock Account
DeviceActionsAPI.unlockAccount(deviceId: deviceId, body: body) { (response, error) in
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

# **updateInventory**
```swift
    open class func updateInventory(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update Inventory

This endpoint sends an MDM command to start a check-in for a device, initiating the daily MDM commands and MDM logic.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Update Inventory
DeviceActionsAPI.updateInventory(deviceId: deviceId) { (response, error) in
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

