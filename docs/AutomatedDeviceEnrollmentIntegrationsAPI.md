# AutomatedDeviceEnrollmentIntegrationsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAdeIntegration**](AutomatedDeviceEnrollmentIntegrationsAPI.md#createadeintegration) | **POST** /api/v1/integrations/apple/ade/ | Create ADE integration
[**deleteAdeIntegration**](AutomatedDeviceEnrollmentIntegrationsAPI.md#deleteadeintegration) | **DELETE** /api/v1/integrations/apple/ade/{ade_token_id} | Delete ADE integration
[**downloadAdePublicKey**](AutomatedDeviceEnrollmentIntegrationsAPI.md#downloadadepublickey) | **GET** /api/v1/integrations/apple/ade/public_key/ | Download ADE public key
[**getAdeDevice**](AutomatedDeviceEnrollmentIntegrationsAPI.md#getadedevice) | **GET** /api/v1/integrations/apple/ade/devices/{device_id} | Get ADE device
[**getAdeIntegration**](AutomatedDeviceEnrollmentIntegrationsAPI.md#getadeintegration) | **GET** /api/v1/integrations/apple/ade/{ade_token_id} | Get ADE integration
[**listAdeDevices**](AutomatedDeviceEnrollmentIntegrationsAPI.md#listadedevices) | **GET** /api/v1/integrations/apple/ade/devices | List ADE devices
[**listAdeIntegrations**](AutomatedDeviceEnrollmentIntegrationsAPI.md#listadeintegrations) | **GET** /api/v1/integrations/apple/ade | List ADE integrations
[**listDevicesAssociatedToAdeToken**](AutomatedDeviceEnrollmentIntegrationsAPI.md#listdevicesassociatedtoadetoken) | **GET** /api/v1/integrations/apple/ade/{ade_token_id}/devices | List devices associated to ADE token
[**renewAdeIntegration**](AutomatedDeviceEnrollmentIntegrationsAPI.md#renewadeintegration) | **POST** /api/v1/integrations/apple/ade/{ade_token_id}/renew | Renew ADE integration
[**updateAdeDevice**](AutomatedDeviceEnrollmentIntegrationsAPI.md#updateadedevice) | **PATCH** /api/v1/integrations/apple/ade/devices/{device_id} | Update ADE device
[**updateAdeIntegration**](AutomatedDeviceEnrollmentIntegrationsAPI.md#updateadeintegration) | **PATCH** /api/v1/integrations/apple/ade/{ade_token_id} | Update ADE integration


# **createAdeIntegration**
```swift
    open class func createAdeIntegration(blueprintId: String, phone: String, email: String, file: URL, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create ADE integration

<p>This request will create a new ADE integration.</p> <p>The default <code>blueprint_id</code>, <code>phone</code> number, <code>email</code> address, and MDM server token <code>file</code> downloaded from ABM are required and must be sent in the request.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 
let phone = "phone_example" // String | 
let email = "email_example" // String | 
let file = URL(string: "https://example.com")! // URL | This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API.

// Create ADE integration
AutomatedDeviceEnrollmentIntegrationsAPI.createAdeIntegration(blueprintId: blueprintId, phone: phone, email: email, file: file) { (response, error) in
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
 **blueprintId** | **String** |  | 
 **phone** | **String** |  | 
 **email** | **String** |  | 
 **file** | **URL** | This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API. | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAdeIntegration**
```swift
    open class func deleteAdeIntegration(adeTokenId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete ADE integration

<h1 id=&quot;warning&quot;><strong>WARNING!</strong></h1> <p>This is a HIGHLY destructive action.</p> <p>Deleting an ADE token will unassign the associated device records from Kandji. For currently enrolled devices that were assigned to Kandji via the delete ADE integration will not be impacted until they are wiped and reprovisioned. This action is essentially the same as removing an ADE token from MDM and then adding it back.</p> <p>If applicable, be sure to reassign the device records in ABM.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let adeTokenId = "adeTokenId_example" // String | 

// Delete ADE integration
AutomatedDeviceEnrollmentIntegrationsAPI.deleteAdeIntegration(adeTokenId: adeTokenId) { (response, error) in
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
 **adeTokenId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadAdePublicKey**
```swift
    open class func downloadAdePublicKey(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Download ADE public key

<p>This request returns the public key used to create an MDM server connection in Apple Business Manager.</p> <p>The encoded information needs to be saved to a file with the <code>.pem</code> format and then uploaded to ABM.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk


// Download ADE public key
AutomatedDeviceEnrollmentIntegrationsAPI.downloadAdePublicKey() { (response, error) in
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

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-x509-ca-cert

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAdeDevice**
```swift
    open class func getAdeDevice(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get ADE device

Get information about a specific Automated Device Enrollment device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get ADE device
AutomatedDeviceEnrollmentIntegrationsAPI.getAdeDevice(deviceId: deviceId) { (response, error) in
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

# **getAdeIntegration**
```swift
    open class func getAdeIntegration(adeTokenId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get ADE integration

This request returns a specific ADE integration based on the <code>ade_token_id</code> passed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let adeTokenId = "adeTokenId_example" // String | 

// Get ADE integration
AutomatedDeviceEnrollmentIntegrationsAPI.getAdeIntegration(adeTokenId: adeTokenId) { (response, error) in
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
 **adeTokenId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAdeDevices**
```swift
    open class func listAdeDevices(blueprintId: String? = nil, userId: String? = nil, depAccount: String? = nil, deviceFamily: String? = nil, model: String? = nil, os: String? = nil, profileStatus: String? = nil, serialNumber: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List ADE devices

Get a list of Automated Device Enrollment devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | Return results &quot;containing&quot; the specified blueprint id (optional)
let userId = "userId_example" // String | &quot;exact&quot; match on kandji user ID number (optional)
let depAccount = "" // String | The ADE token UUID (optional)
let deviceFamily = "" // String | Mac, iPhone, iPad, AppleTV, iPod (optional)
let model = "model_example" // String | Return model results &quot;containing&quot; the specified model string. - &quot;iPad (8th Generation)&quot;, &quot;MacBook Air&quot; (optional)
let os = "" // String | OSX, iOS, tvOS (optional)
let profileStatus = "" // String | The automated device enrollment profile assignment status - assigned, empty, pushed, removed (optional)
let serialNumber = "" // String | Search for a specific device by Serial Number. If partial serial number is provided in the query, all device containing the partial string will be returned. (optional)
let page = "page_example" // String | Use the <code>page</code> parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the <code>next</code> and <code>previous</code> key attributes in the response can be used to request the next page of results or return to the previous page. (optional)

// List ADE devices
AutomatedDeviceEnrollmentIntegrationsAPI.listAdeDevices(blueprintId: blueprintId, userId: userId, depAccount: depAccount, deviceFamily: deviceFamily, model: model, os: os, profileStatus: profileStatus, serialNumber: serialNumber, page: page) { (response, error) in
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
 **blueprintId** | **String** | Return results &amp;quot;containing&amp;quot; the specified blueprint id | [optional] 
 **userId** | **String** | &amp;quot;exact&amp;quot; match on kandji user ID number | [optional] 
 **depAccount** | **String** | The ADE token UUID | [optional] 
 **deviceFamily** | **String** | Mac, iPhone, iPad, AppleTV, iPod | [optional] 
 **model** | **String** | Return model results &amp;quot;containing&amp;quot; the specified model string. - &amp;quot;iPad (8th Generation)&amp;quot;, &amp;quot;MacBook Air&amp;quot; | [optional] 
 **os** | **String** | OSX, iOS, tvOS | [optional] 
 **profileStatus** | **String** | The automated device enrollment profile assignment status - assigned, empty, pushed, removed | [optional] 
 **serialNumber** | **String** | Search for a specific device by Serial Number. If partial serial number is provided in the query, all device containing the partial string will be returned. | [optional] 
 **page** | **String** | Use the &lt;code&gt;page&lt;/code&gt; parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the &lt;code&gt;next&lt;/code&gt; and &lt;code&gt;previous&lt;/code&gt; key attributes in the response can be used to request the next page of results or return to the previous page. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAdeIntegrations**
```swift
    open class func listAdeIntegrations(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List ADE integrations

This request returns a list of configured ADE integrations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk


// List ADE integrations
AutomatedDeviceEnrollmentIntegrationsAPI.listAdeIntegrations() { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDevicesAssociatedToAdeToken**
```swift
    open class func listDevicesAssociatedToAdeToken(adeTokenId: String, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List devices associated to ADE token

<p>This request returns a list of devices associated with a specified <code>ade_token_id</code> as well as their enrollment status.</p> <p>When the <code>mdm_device</code> key value is <code>null</code>, this can be taken as an indication that the device is awaiting enrollment into Kandji.</p> <p>When data is present within the mdm_device dictionary, you can reference the <code>device_id</code> as the ID of the enrolled device record.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let adeTokenId = "adeTokenId_example" // String | 
let page = "page_example" // String | Use the <code>page</code> parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the <code>next</code> and <code>previous</code> key attributes in the response can be used to request the next page of results or return to the previous page. (optional)

// List devices associated to ADE token
AutomatedDeviceEnrollmentIntegrationsAPI.listDevicesAssociatedToAdeToken(adeTokenId: adeTokenId, page: page) { (response, error) in
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
 **adeTokenId** | **String** |  | 
 **page** | **String** | Use the &lt;code&gt;page&lt;/code&gt; parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the &lt;code&gt;next&lt;/code&gt; and &lt;code&gt;previous&lt;/code&gt; key attributes in the response can be used to request the next page of results or return to the previous page. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renewAdeIntegration**
```swift
    open class func renewAdeIntegration(adeTokenId: String, blueprintId: String, phone: String, email: String, file: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Renew ADE integration

<p>This request will renew an existing ADE integration.</p> <p>The default <code>blueprint_id</code>, <code>phone</code> number, <code>email</code> address, and MDM server token <code>file</code> from the associated MDM server in ABM are required and must be sent in the request.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let adeTokenId = "adeTokenId_example" // String | 
let blueprintId = "blueprintId_example" // String | 
let phone = "phone_example" // String | 
let email = "email_example" // String | 
let file = URL(string: "https://example.com")! // URL | This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API.

// Renew ADE integration
AutomatedDeviceEnrollmentIntegrationsAPI.renewAdeIntegration(adeTokenId: adeTokenId, blueprintId: blueprintId, phone: phone, email: email, file: file) { (response, error) in
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
 **adeTokenId** | **String** |  | 
 **blueprintId** | **String** |  | 
 **phone** | **String** |  | 
 **email** | **String** |  | 
 **file** | **URL** | This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API. | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAdeDevice**
```swift
    open class func updateAdeDevice(deviceId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update ADE device

<p>Update a specific Automated Device Enrollment device's blueprint assignment, user assignment, and asset tag.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>device_id</code> (path parameter): The unique identifier of the device.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Update ADE device
AutomatedDeviceEnrollmentIntegrationsAPI.updateAdeDevice(deviceId: deviceId, body: body) { (response, error) in
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

# **updateAdeIntegration**
```swift
    open class func updateAdeIntegration(adeTokenId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update ADE integration

<p>This request will update the default blueprint, phone number, and email address in an existing ADE integration.</p> <p>The default <code>blueprint_id</code>, <code>phone</code> number, and <code>email</code> address must be sent in the request.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let adeTokenId = "adeTokenId_example" // String | 
let body = "body_example" // String |  (optional)

// Update ADE integration
AutomatedDeviceEnrollmentIntegrationsAPI.updateAdeIntegration(adeTokenId: adeTokenId, body: body) { (response, error) in
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
 **adeTokenId** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

