# UsersAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUser**](UsersAPI.md#getuser) | **GET** /api/v1/users/{user_id} | Get User
[**listUsers**](UsersAPI.md#listusers) | **GET** /api/v1/users | List Users


# **getUser**
```swift
    open class func getUser(userId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get User

<p>This endpoint makes a request to retrieve a specified user directory integration user by id.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p>user_id (path parameter): The unique identifier of the user directory integration user.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let userId = "userId_example" // String | 

// Get User
UsersAPI.getUser(userId: userId) { (response, error) in
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
 **userId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
```swift
    open class func listUsers(email: String? = nil, _id: String? = nil, integrationId: String? = nil, archived: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Users

<p>This endpoint makes a request to retrieve a list of users from user directory integrations.</p> <p>A maximum of 300 records are returned per request, and pagination can be performed leveraging the URLs provided in the <code>next</code> and <code>previous</code> keys in the response. If there are no more results available, the respective key will be <code>null</code>.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let email = "email_example" // String | Returns users with email addresses containing the provided string. (optional)
let _id = "_id_example" // String | Search for a user matching the provided UUID value. (optional)
let integrationId = "integrationId_example" // String | Search for a integration matching the provided UUID value. (optional)
let archived = "archived_example" // String | Return only users that are either archived (true) or not archived (false). Archived users are users that appear in the Kandji Users module under the Archived tab. (optional)

// List Users
UsersAPI.listUsers(email: email, _id: _id, integrationId: integrationId, archived: archived) { (response, error) in
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
 **email** | **String** | Returns users with email addresses containing the provided string. | [optional] 
 **_id** | **String** | Search for a user matching the provided UUID value. | [optional] 
 **integrationId** | **String** | Search for a integration matching the provided UUID value. | [optional] 
 **archived** | **String** | Return only users that are either archived (true) or not archived (false). Archived users are users that appear in the Kandji Users module under the Archived tab. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

