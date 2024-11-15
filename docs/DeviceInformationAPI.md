# DeviceInformationAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelLostMode**](DeviceInformationAPI.md#cancellostmode) | **DELETE** /api/v1/devices/{device_id}/details/lostmode | Cancel Lost Mode
[**getDeviceActivity**](DeviceInformationAPI.md#getdeviceactivity) | **GET** /api/v1/devices/{device_id}/activity | Get Device Activity
[**getDeviceApps**](DeviceInformationAPI.md#getdeviceapps) | **GET** /api/v1/devices/{device_id}/apps | Get Device Apps
[**getDeviceDetails**](DeviceInformationAPI.md#getdevicedetails) | **GET** /api/v1/devices/{device_id}/details | Get Device Details
[**getDeviceLibraryItems**](DeviceInformationAPI.md#getdevicelibraryitems) | **GET** /api/v1/devices/{device_id}/library-items | Get Device Library Items
[**getDeviceLostModeDetails**](DeviceInformationAPI.md#getdevicelostmodedetails) | **GET** /api/v1/devices/{device_id}/details/lostmode | Get Device Lost Mode details
[**getDeviceParameters**](DeviceInformationAPI.md#getdeviceparameters) | **GET** /api/v1/devices/{device_id}/parameters | Get Device Parameters
[**getDeviceStatus**](DeviceInformationAPI.md#getdevicestatus) | **GET** /api/v1/devices/{device_id}/status | Get Device Status
[**listDevices**](DeviceInformationAPI.md#listdevices) | **GET** /api/v1/devices | List Devices


# **cancelLostMode**
```swift
    open class func cancelLostMode(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel Lost Mode

This endpoint can be used to send a cancelation request if Lost Mode is in an error state for a given iOS or iPadOS device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Cancel Lost Mode
DeviceInformationAPI.cancelLostMode(deviceId: deviceId) { (response, error) in
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

# **getDeviceActivity**
```swift
    open class func getDeviceActivity(deviceId: String, limit: String, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Activity

This request returns the device activity for a specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let limit = "limit_example" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results.
let offset = "offset_example" // String | Specify the starting record to return (optional)

// Get Device Activity
DeviceInformationAPI.getDeviceActivity(deviceId: deviceId, limit: limit, offset: offset) { (response, error) in
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

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceApps**
```swift
    open class func getDeviceApps(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Apps

<p>This request returns a list of all installed apps for a specified Device ID.</p> <p>For iPhone and iPad, the preinstalled Apple apps are not reported.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Apps
DeviceInformationAPI.getDeviceApps(deviceId: deviceId) { (response, error) in
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

# **getDeviceDetails**
```swift
    open class func getDeviceDetails(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Details

This request returns the device details for a specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Details
DeviceInformationAPI.getDeviceDetails(deviceId: deviceId) { (response, error) in
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

# **getDeviceLibraryItems**
```swift
    open class func getDeviceLibraryItems(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Library Items

<p>This request gets all library items and their statuses for a specified Device ID</p> <h4 id=&quot;possible-library-item-status-values&quot;>Possible library item status values</h4> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th><strong>Value</strong></th> <th><strong>Type</strong></th> <th><strong>Additional Info</strong></th> </tr> </thead> <tbody> <tr> <td>AVAILABLE</td> <td>string</td> <td>Library item available in Self Service</td> </tr> <tr> <td>CACHED</td> <td>string</td> <td>Library item downloaded for install but not yet installed</td> </tr> <tr> <td>CHANGE_PENDING</td> <td>string</td> <td>Recovery Password library item has changes that have not yet been applied</td> </tr> <tr> <td>DOWNLOADING</td> <td>string</td> <td>Library item downloading</td> </tr> <tr> <td>ERROR</td> <td>string</td> <td>Audit failure</td> </tr> <tr> <td>EXCLUDED</td> <td>string</td> <td>Not in scope for assignment rule</td> </tr> <tr> <td>INCOMPATIBLE</td> <td>string</td> <td>Not compatible with device or OS version</td> </tr> <tr> <td>INSTALLING</td> <td>string</td> <td>Library item installing</td> </tr> <tr> <td>PASS</td> <td>string</td> <td>Device meets requirements</td> </tr> <tr> <td>PENDING</td> <td>string</td> <td>Waiting on device, not yet installed (All library items except for config profiles)</td> </tr> <tr> <td>failed</td> <td>string</td> <td>Configuration profile failed to install</td> </tr> <tr> <td>pending</td> <td>string</td> <td>Waiting on device, Configuration profile not yet installed</td> </tr> <tr> <td>success</td> <td>string</td> <td>Configuration profile installed</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Library Items
DeviceInformationAPI.getDeviceLibraryItems(deviceId: deviceId) { (response, error) in
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

# **getDeviceLostModeDetails**
```swift
    open class func getDeviceLostModeDetails(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Lost Mode details

<p>This request returns the device lost mode details for a specified Device ID.</p> <p><strong>Note</strong>: Lost Mode is is only available for iOS and iPadOS. For more information, please see this <a href=&quot;https://support.kandji.io/a/solutions/articles/72000573873&quot;>Kandji support artilcle</a>.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Lost Mode details
DeviceInformationAPI.getDeviceLostModeDetails(deviceId: deviceId) { (response, error) in
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

# **getDeviceParameters**
```swift
    open class func getDeviceParameters(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Parameters

<p>This request returns the parameters and their statuses for a specified Device ID</p> <p>This endpoint is only applicable to macOS clients.</p> <p>The parameters will be returned as a list of IDs. These IDs can be correlated with the parameter names available here: <a href=&quot;https://github.com/kandji-inc/support/wiki/Devices-API---Parameter-Correlations&quot;>https://github.com/kandji-inc/support/wiki/Devices-API---Parameter-Correlations</a></p> <p><strong>Possible parameter status values</strong></p> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th><strong>Value</strong></th> <th><strong>Type</strong></th> <th><strong>Additional Info</strong></th> </tr> </thead> <tbody> <tr> <td>ERROR</td> <td>string</td> <td>Audit failure</td> </tr> <tr> <td>INCOMPATIBLE</td> <td>string</td> <td>Not compatible with device or OS version</td> </tr> <tr> <td>PASS</td> <td>string</td> <td>Device meets requirements</td> </tr> <tr> <td>PENDING</td> <td>string</td> <td>Waiting on device. Not yet run.</td> </tr> <tr> <td>REMEDIATED</td> <td>string</td> <td>Parameter remediated</td> </tr> <tr> <td>WARNING</td> <td>string</td> <td>Muted alert</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Parameters
DeviceInformationAPI.getDeviceParameters(deviceId: deviceId) { (response, error) in
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

# **getDeviceStatus**
```swift
    open class func getDeviceStatus(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Status

<p>This request returns the full status (parameters and library items) for a specified Device ID.</p> <p>The parameters will be returned as a list of IDs. These IDs can be correlated with the parameter names available here: <a href=&quot;https://github.com/kandji-inc/support/wiki/Devices-API---Parameter-Correlations&quot;>https://github.com/kandji-inc/support/wiki/Devices-API---Parameter-Correlations</a></p> <h4 id=&quot;possible-status-values&quot;>Possible status values</h4> <p><strong>Library items</strong></p> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th><strong>Value</strong></th> <th><strong>Type</strong></th> <th><strong>Additional Info</strong></th> </tr> </thead> <tbody> <tr> <td>AVAILABLE</td> <td>string</td> <td>Library item available in Self Service</td> </tr> <tr> <td>ERROR</td> <td>string</td> <td>Audit failure</td> </tr> <tr> <td>EXCLUDED</td> <td>string</td> <td>Not in scope for assignment rule</td> </tr> <tr> <td>INCOMPATIBLE</td> <td>string</td> <td>Not compatible with device or OS version</td> </tr> <tr> <td>PASS</td> <td>string</td> <td>Device meets requirements</td> </tr> <tr> <td>PENDING</td> <td>string</td> <td>Waiting on device, not yet installed (All library items except for config profiles)</td> </tr> <tr> <td>failed</td> <td>string</td> <td>Configuration profile failed to install</td> </tr> <tr> <td>pending</td> <td>string</td> <td>Waiting on device, Configuration profile not yet installed</td> </tr> <tr> <td>success</td> <td>string</td> <td>Configuration profile installed</td> </tr> </tbody> </table> </div><p><strong>Parameters</strong></p> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th><strong>Value</strong></th> <th><strong>Type</strong></th> <th><strong>Additional Info</strong></th> </tr> </thead> <tbody> <tr> <td>ERROR</td> <td>string</td> <td>Audit failure</td> </tr> <tr> <td>INCOMPATIBLE</td> <td>string</td> <td>Not compatible with device or OS version</td> </tr> <tr> <td>PASS</td> <td>string</td> <td>Device meets requirements</td> </tr> <tr> <td>PENDING</td> <td>string</td> <td>Waiting on device. Not yet run.</td> </tr> <tr> <td>REMEDIATED</td> <td>string</td> <td>Parameter remediated</td> </tr> <tr> <td>WARNING</td> <td>string</td> <td>Muted alert</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Status
DeviceInformationAPI.getDeviceStatus(deviceId: deviceId) { (response, error) in
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

# **listDevices**
```swift
    open class func listDevices(limit: String, assetTag: String? = nil, blueprintId: String? = nil, deviceId: String? = nil, deviceName: String? = nil, filevaultEnabled: String? = nil, macAddress: String? = nil, model: String? = nil, ordering: String? = nil, osVersion: String? = nil, platform: String? = nil, serialNumber: String? = nil, tagName: String? = nil, tagNameIn: String? = nil, tagId: String? = nil, tagIdIn: String? = nil, user: String? = nil, userEmail: String? = nil, userId: String? = nil, userName: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Devices

<p>This request returns a list of devices in a Kandji tenant. Optionally. query parameters can be used to filter results.</p> <p>There is a hard upper limit of 300 results per request. To return addtional results pagination must be used. Pagination examples can be found in the Kandji support <a href=&quot;https://github.com/kandji-inc/support/tree/main/api-tools/code-examples&quot;>GitHub</a>.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let limit = "limit_example" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results.
let assetTag = "assetTag_example" // String |  (optional)
let blueprintId = "blueprintId_example" // String | Return results &quot;containing&quot; the specified blueprint id (optional)
let deviceId = "deviceId_example" // String |  (optional)
let deviceName = "deviceName_example" // String |  (optional)
let filevaultEnabled = "filevaultEnabled_example" // String | <p>Query for devices that either have FileVault on (true) or off (false). This parameter only applies to macOS. </p> <p>An empty list <code>[]</code> will be returned if no devices are found with the given parameter value.</p> (optional)
let macAddress = "macAddress_example" // String | Search for a specific device by MAC address (optional)
let model = "model_example" // String | Return model results &quot;containing&quot; the specified model string. (optional)
let ordering = "ordering_example" // String | <p>The <code>ordering</code> parameter can be used to define how the device records are ordered in the response. Prepending a dash (-) to the parameter value will reverse the order of the returned results.</p> <p><code>?ordering=-serial_number</code> will order the response by serial_number in descending order.</p> <p><strong>Possible values</strong></p> <ul> <li><code>asset_tag</code></li> <li><code>blueprint_id</code></li> <li><code>device_id</code></li> <li><code>device_name</code></li> <li><code>last_check_in</code> - agent checkin</li> <li><code>model</code></li> <li><code>platform</code></li> <li><code>os_version</code></li> <li><code>serial_number</code></li> <li><code>user</code></li> </ul> <p>Additionally, multiple values can be combined in a comma separated list to further customize the ordering of the response.</p> <p><code>?ordering=serial_number,platform</code></p> (optional)
let osVersion = "osVersion_example" // String | Return all device records with the specified OS version (optional)
let platform = "platform_example" // String | Return all records matching a specific platform. Possible values:<code>Mac</code>, <code>iPad</code>, <code>iPhone</code>, <code>AppleTV</code> (optional)
let serialNumber = "serialNumber_example" // String | Search for a specific device by Serial Number. If partial serial number is provided in the query, all device containing the partial string will be returned. (optional)
let tagName = "tagName_example" // String | Return results for given tag name. Case sensitive. (optional)
let tagNameIn = "tagNameIn_example" // String | Return results for given tag names separate by commas. Case sensitive. (optional)
let tagId = "" // String | Search for a tag by its ID. Case sensitive. (optional)
let tagIdIn = "" // String | Return results for given tag IDs separated by commas. Case sensitive. (optional)
let user = "user_example" // String | Return results &quot;containing&quot; the user name (optional)
let userEmail = "userEmail_example" // String | Return results &quot;containing&quot; search on email address (optional)
let userId = "userId_example" // String | &quot;exact&quot; match on kandji user ID number (optional)
let userName = "userName_example" // String | Return results &quot;containing&quot; the assigned user Display Name (optional)
let offset = "offset_example" // String | Specify the starting record to return (optional)

// List Devices
DeviceInformationAPI.listDevices(limit: limit, assetTag: assetTag, blueprintId: blueprintId, deviceId: deviceId, deviceName: deviceName, filevaultEnabled: filevaultEnabled, macAddress: macAddress, model: model, ordering: ordering, osVersion: osVersion, platform: platform, serialNumber: serialNumber, tagName: tagName, tagNameIn: tagNameIn, tagId: tagId, tagIdIn: tagIdIn, user: user, userEmail: userEmail, userId: userId, userName: userName, offset: offset) { (response, error) in
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
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | 
 **assetTag** | **String** |  | [optional] 
 **blueprintId** | **String** | Return results &amp;quot;containing&amp;quot; the specified blueprint id | [optional] 
 **deviceId** | **String** |  | [optional] 
 **deviceName** | **String** |  | [optional] 
 **filevaultEnabled** | **String** | &lt;p&gt;Query for devices that either have FileVault on (true) or off (false). This parameter only applies to macOS. &lt;/p&gt; &lt;p&gt;An empty list &lt;code&gt;[]&lt;/code&gt; will be returned if no devices are found with the given parameter value.&lt;/p&gt; | [optional] 
 **macAddress** | **String** | Search for a specific device by MAC address | [optional] 
 **model** | **String** | Return model results &amp;quot;containing&amp;quot; the specified model string. | [optional] 
 **ordering** | **String** | &lt;p&gt;The &lt;code&gt;ordering&lt;/code&gt; parameter can be used to define how the device records are ordered in the response. Prepending a dash (-) to the parameter value will reverse the order of the returned results.&lt;/p&gt; &lt;p&gt;&lt;code&gt;?ordering&#x3D;-serial_number&lt;/code&gt; will order the response by serial_number in descending order.&lt;/p&gt; &lt;p&gt;&lt;strong&gt;Possible values&lt;/strong&gt;&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;code&gt;asset_tag&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;blueprint_id&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;device_id&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;device_name&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;last_check_in&lt;/code&gt; - agent checkin&lt;/li&gt; &lt;li&gt;&lt;code&gt;model&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;platform&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;os_version&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;serial_number&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;user&lt;/code&gt;&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Additionally, multiple values can be combined in a comma separated list to further customize the ordering of the response.&lt;/p&gt; &lt;p&gt;&lt;code&gt;?ordering&#x3D;serial_number,platform&lt;/code&gt;&lt;/p&gt; | [optional] 
 **osVersion** | **String** | Return all device records with the specified OS version | [optional] 
 **platform** | **String** | Return all records matching a specific platform. Possible values:&lt;code&gt;Mac&lt;/code&gt;, &lt;code&gt;iPad&lt;/code&gt;, &lt;code&gt;iPhone&lt;/code&gt;, &lt;code&gt;AppleTV&lt;/code&gt; | [optional] 
 **serialNumber** | **String** | Search for a specific device by Serial Number. If partial serial number is provided in the query, all device containing the partial string will be returned. | [optional] 
 **tagName** | **String** | Return results for given tag name. Case sensitive. | [optional] 
 **tagNameIn** | **String** | Return results for given tag names separate by commas. Case sensitive. | [optional] 
 **tagId** | **String** | Search for a tag by its ID. Case sensitive. | [optional] 
 **tagIdIn** | **String** | Return results for given tag IDs separated by commas. Case sensitive. | [optional] 
 **user** | **String** | Return results &amp;quot;containing&amp;quot; the user name | [optional] 
 **userEmail** | **String** | Return results &amp;quot;containing&amp;quot; search on email address | [optional] 
 **userId** | **String** | &amp;quot;exact&amp;quot; match on kandji user ID number | [optional] 
 **userName** | **String** | Return results &amp;quot;containing&amp;quot; the assigned user Display Name | [optional] 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

