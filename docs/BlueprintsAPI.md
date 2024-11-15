# BlueprintsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignLibraryItem**](BlueprintsAPI.md#assignlibraryitem) | **POST** /api/v1/blueprints/{blueprint_id}/assign-library-item | Assign Library Item
[**createBlueprint**](BlueprintsAPI.md#createblueprint) | **POST** /api/v1/blueprints | Create Blueprint
[**deleteBlueprint**](BlueprintsAPI.md#deleteblueprint) | **DELETE** /api/v1/blueprints/{blueprint_id} | Delete Blueprint
[**getBlueprint**](BlueprintsAPI.md#getblueprint) | **GET** /api/v1/blueprints/{blueprint_id} | Get Blueprint
[**getBlueprintTemplates**](BlueprintsAPI.md#getblueprinttemplates) | **GET** /api/v1/blueprints/templates/ | Get Blueprint Templates
[**getManualEnrollmentProfile**](BlueprintsAPI.md#getmanualenrollmentprofile) | **GET** /api/v1/blueprints/{blueprint_id}/ota-enrollment-profile | Get Manual Enrollment Profile
[**listBlueprints**](BlueprintsAPI.md#listblueprints) | **GET** /api/v1/blueprints | List Blueprints
[**listLibraryItems**](BlueprintsAPI.md#listlibraryitems) | **GET** /api/v1/blueprints/{blueprint_id}/list-library-items | List Library Items
[**removeLibraryItem**](BlueprintsAPI.md#removelibraryitem) | **POST** /api/v1/blueprints/{blueprint_id}/remove-library-item | Remove Library Item
[**updateBlueprint**](BlueprintsAPI.md#updateblueprint) | **PATCH** /api/v1/blueprints/{blueprint_id} | Update Blueprint


# **assignLibraryItem**
```swift
    open class func assignLibraryItem(blueprintId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Assign Library Item

<p>This endpoint allows assigning a library item to a specific blueprint (classic and maps). The response will include a list of library item IDs assigned to the blueprint.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>blueprint_id</code> (path parameter): The unique identifier of the blueprint.</p> <h3 id=&quot;request-body&quot;>Request Body</h3> <ul> <li><p><code>library_item_id</code> (string, required)</p> </li> <li><p><code>assignment_node_id</code> (string, required for maps)</p> <ul> <li>Note: To find the assignment_node_id, view the map in a browser. Then, on your keyboard, press and hold the Option ⌥ key. Each node ID remains fixed for the lifespan of the node on the map.</li> </ul> </li> </ul> <h3 id=&quot;error-responses&quot;>Error responses</h3> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th><strong>Code</strong></th> <th><strong>Body</strong></th> </tr> </thead> <tbody> <tr> <td>400 - Bad Request</td> <td>Bad Request</td> </tr> <tr> <td></td> <td>&quot;Library Item already exists on Blueprint&quot;</td> </tr> <tr> <td></td> <td>&quot;Library Item already exists in Assignment Node&quot;</td> </tr> <tr> <td></td> <td>&quot;assignment_node_id cannot be provided for Classic Blueprint&quot;</td> </tr> <tr> <td></td> <td>&quot;Must provide assignment_node_id for Assignment Map Blueprint&quot;</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 
let body = "body_example" // String |  (optional)

// Assign Library Item
BlueprintsAPI.assignLibraryItem(blueprintId: blueprintId, body: body) { (response, error) in
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
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBlueprint**
```swift
    open class func createBlueprint(name: String, enrollmentCodeIsActive: String, enrollmentCodeCode: String, sourceType: String, sourceId: String, type: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Blueprint

<p>This request creates a new empty Blueprint or a new Blueprint from a template. The keys <code>name</code> and <code>enrollment_code</code> <code>is_active</code> are required, and the blueprint name key must be unique from the existing blueprint names in the Kandji tenant.</p> <p>optionally, <code>type: map</code> can be used when creating a new Assignment Map blueprint.</p> <p>Note: If cloning an existing blueprint,`type` value and the type of sourced (`source.id`) blueprint must match and `source.type` value must be set to `blueprint`.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let name = "name_example" // String | (required) Set the name of the Blueprint. The name provided must be unique.
let enrollmentCodeIsActive = "enrollmentCodeIsActive_example" // String | (required) Enable or Disable the Blueprint for manual device enrollment from the enrollment portal
let enrollmentCodeCode = "enrollmentCodeCode_example" // String | Optionally, set the enrollment code of the Blueprint. This key is not required. If an enrollment code is not supplied in the payload body, it will be randomly generated. The enrollment code will be returned in the response and visible in the Web app.
let sourceType = "sourceType_example" // String | Set the source to create the blueprint from. Possible options: <code>template</code> and <code>blueprint</code>.
let sourceId = "sourceId_example" // String | Set either the source template ID, or the source Blueprint ID to clone an existing template or blueprint.
let type = "type_example" // String | Choose the type of blueprint to create. Options: <code>classic</code> or <code>map</code>

// Create Blueprint
BlueprintsAPI.createBlueprint(name: name, enrollmentCodeIsActive: enrollmentCodeIsActive, enrollmentCodeCode: enrollmentCodeCode, sourceType: sourceType, sourceId: sourceId, type: type) { (response, error) in
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
 **name** | **String** | (required) Set the name of the Blueprint. The name provided must be unique. | 
 **enrollmentCodeIsActive** | **String** | (required) Enable or Disable the Blueprint for manual device enrollment from the enrollment portal | 
 **enrollmentCodeCode** | **String** | Optionally, set the enrollment code of the Blueprint. This key is not required. If an enrollment code is not supplied in the payload body, it will be randomly generated. The enrollment code will be returned in the response and visible in the Web app. | 
 **sourceType** | **String** | Set the source to create the blueprint from. Possible options: &lt;code&gt;template&lt;/code&gt; and &lt;code&gt;blueprint&lt;/code&gt;. | 
 **sourceId** | **String** | Set either the source template ID, or the source Blueprint ID to clone an existing template or blueprint. | 
 **type** | **String** | Choose the type of blueprint to create. Options: &lt;code&gt;classic&lt;/code&gt; or &lt;code&gt;map&lt;/code&gt; | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBlueprint**
```swift
    open class func deleteBlueprint(blueprintId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Blueprint

<h1 id=&quot;warning&quot;><strong>WARNING!</strong></h1> <p>This is a HIGHLY destructive action.</p> <p>Deleting a Blueprint will un-manage ALL devices assigned to the Blueprint.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>blueprint_id</code> (path parameter): The unique identifier of the blueprint.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 

// Delete Blueprint
BlueprintsAPI.deleteBlueprint(blueprintId: blueprintId) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlueprint**
```swift
    open class func getBlueprint(blueprintId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get Blueprint

<p>This request returns information about a specific blueprint based on blueprint ID.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>blueprint_id</code> (path parameter): The unique identifier of the blueprint.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 

// Get Blueprint
BlueprintsAPI.getBlueprint(blueprintId: blueprintId) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlueprintTemplates**
```swift
    open class func getBlueprintTemplates(limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get Blueprint Templates

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let limit = "limit_example" // String | Number of results to return per page. (optional)
let offset = "offset_example" // String | The initial index from which to return the results. (optional)

// Get Blueprint Templates
BlueprintsAPI.getBlueprintTemplates(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **String** | Number of results to return per page. | [optional] 
 **offset** | **String** | The initial index from which to return the results. | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getManualEnrollmentProfile**
```swift
    open class func getManualEnrollmentProfile(blueprintId: String, sso: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get Manual Enrollment Profile

<p>This request returns the manual enrollment profile (.mobileconfig file) for a specified Blueprint.</p> <p>This request will return the enrollment profile even if &quot;Require Authentication&quot; is configured for the Blueprint in Manual Enrollment.</p> <p>The enrollment profile will be returned in raw form with response headers:</p> <ul> <li><p><code>Content-Type</code> = <code>application/x-apple-aspen-config</code></p> </li> <li><p><code>Content-Disposition</code> = <code>attachment;filename=kandji-enroll.mobileconfig</code></p> </li> </ul> <p>An optional query parameter <code>sso=true</code> can be used to return a URL for SSO authentication instead. If this query parameter is used for a Blueprint that does not require authentication, then the enrollment profile will be returned.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>blueprint_id</code> (path parameter): The unique identifier of the blueprint.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 
let sso = "sso_example" // String | Use the <code>sso</code> query parameter, set to <code>true</code>, to return a URL instead of the manual enrollment profile. This parameter should only be used for blueprints in which &quot;Require Authentication&quot; is configured for Manual Enrollment. The returned URL must be used to authenticate via SSO to receive an enrollment profile. (optional)

// Get Manual Enrollment Profile
BlueprintsAPI.getManualEnrollmentProfile(blueprintId: blueprintId, sso: sso) { (response, error) in
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
 **sso** | **String** | Use the &lt;code&gt;sso&lt;/code&gt; query parameter, set to &lt;code&gt;true&lt;/code&gt;, to return a URL instead of the manual enrollment profile. This parameter should only be used for blueprints in which &amp;quot;Require Authentication&amp;quot; is configured for Manual Enrollment. The returned URL must be used to authenticate via SSO to receive an enrollment profile. | [optional] 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-apple-aspen-config

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlueprints**
```swift
    open class func listBlueprints(_id: String? = nil, idIn: String? = nil, name: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Blueprints

This request returns a list of a blueprint records in the Kandji tenant. Optional query parameters can be specified to filter the results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let _id = "_id_example" // String | Look up a specific Blueprint by its ID (optional)
let idIn = "idIn_example" // String | Specify a list of Blueprint IDs to limit the results to.  Multiple values may be separated by commas. There is a double underscore (<code>__</code>) between id and in (optional)
let name = "name_example" // String | Return Blueprint names &quot;containing&quot; the specified search string. (optional)
let limit = "limit_example" // String | Number of results to return per page. (optional)
let offset = "offset_example" // String | The initial index from which to return the results. (optional)

// List Blueprints
BlueprintsAPI.listBlueprints(_id: _id, idIn: idIn, name: name, limit: limit, offset: offset) { (response, error) in
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
 **_id** | **String** | Look up a specific Blueprint by its ID | [optional] 
 **idIn** | **String** | Specify a list of Blueprint IDs to limit the results to.  Multiple values may be separated by commas. There is a double underscore (&lt;code&gt;__&lt;/code&gt;) between id and in | [optional] 
 **name** | **String** | Return Blueprint names &amp;quot;containing&amp;quot; the specified search string. | [optional] 
 **limit** | **String** | Number of results to return per page. | [optional] 
 **offset** | **String** | The initial index from which to return the results. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLibraryItems**
```swift
    open class func listLibraryItems(blueprintId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Library Items

<p>This API endpoint retrieves a list of library items associated with a specific blueprint. (classic and maps). Requires that the blueprint ID is passed as a path parameter in the URL.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>blueprint_id</code> (path parameter): The unique identifier of the blueprint.</p> <h3 id=&quot;response-fields&quot;>Response fields</h3> <ul> <li><p><code>count</code> (int): The total count of library items.</p> </li> <li><p><code>next</code> (str): The URL for the next page of results, if available. If not available will value will be <code>null</code>.</p> </li> <li><p><code>previous</code> (str): The URL for the previous page of results, if available. If not available will value will be <code>null</code>.</p> </li> <li><p><code>results</code> (object): An array containing objects with the following fields:</p> <ul> <li><p><code>id</code> (str): The ID of the library item.</p> </li> <li><p><code>name</code> (str): The name of the library item.</p> </li> </ul> </li> </ul>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 

// List Library Items
BlueprintsAPI.listLibraryItems(blueprintId: blueprintId) { (response, error) in
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

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeLibraryItem**
```swift
    open class func removeLibraryItem(blueprintId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Remove Library Item

<p>This endpoint allows removing a library item from a specific blueprint (classic and maps). The response will include a list of library item IDs assigned to the blueprint.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>blueprint_id</code> (path parameter): The unique identifier of the blueprint.</p> <h3 id=&quot;request-body&quot;>Request Body</h3> <ul> <li><p><code>library_item_id</code> (string, required)</p> </li> <li><p><code>assignment_node_id</code> (string, required for maps)</p> </li> </ul> <h3 id=&quot;error-responses&quot;>Error responses</h3> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th><strong>Code</strong></th> <th><strong>Body</strong></th> </tr> </thead> <tbody> <tr> <td>400 - Bad Request</td> <td>Bad Request</td> </tr> <tr> <td></td> <td>&quot;assignment_node_id cannot be provided for Classic Blueprint&quot;</td> </tr> <tr> <td></td> <td>&quot;Must provide assignment_node_id for Assignment Map Blueprint&quot;</td> </tr> <tr> <td></td> <td>&quot;Library Item does not exist on Blueprint&quot;</td> </tr> <tr> <td></td> <td>&quot;Library Item does not exist in Assignment Node&quot;</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 
let body = "body_example" // String |  (optional)

// Remove Library Item
BlueprintsAPI.removeLibraryItem(blueprintId: blueprintId, body: body) { (response, error) in
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
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBlueprint**
```swift
    open class func updateBlueprint(blueprintId: String, name: String, _description: String, enrollmentCodeCode: String, enrollmentCodeIsActive: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update Blueprint

<p>This requests allows updating of the name, icon, icon color, description, enrollment code, and active status on an existing blueprint.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>blueprint_id</code> (path parameter): The unique identifier of the blueprint.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintId = "blueprintId_example" // String | 
let name = "name_example" // String | Update the name of the Blueprint
let _description = "_description_example" // String | Update the description of the Blueprint 
let enrollmentCodeCode = "enrollmentCodeCode_example" // String | Update the enrollment code of the Blueprint 
let enrollmentCodeIsActive = "enrollmentCodeIsActive_example" // String | Disable the Blueprint for manual device enrollment from the enrollment portal.

// Update Blueprint
BlueprintsAPI.updateBlueprint(blueprintId: blueprintId, name: name, _description: _description, enrollmentCodeCode: enrollmentCodeCode, enrollmentCodeIsActive: enrollmentCodeIsActive) { (response, error) in
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
 **name** | **String** | Update the name of the Blueprint | 
 **_description** | **String** | Update the description of the Blueprint  | 
 **enrollmentCodeCode** | **String** | Update the enrollment code of the Blueprint  | 
 **enrollmentCodeIsActive** | **String** | Disable the Blueprint for manual device enrollment from the enrollment portal. | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

