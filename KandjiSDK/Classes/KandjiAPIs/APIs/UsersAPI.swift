//
// UsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

extension kandji_sdkAPI {


@objcMembers open class UsersAPI : NSObject {

    /**
     Get User
     
     - parameter userId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUser(userId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get User
     - GET /api/v1/users/{user_id}
     - <p>This endpoint makes a request to retrieve a specified user directory integration user by id.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p>user_id (path parameter): The unique identifier of the user directory integration user.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#9f2a96e0-25c2-4a99-a2e1-7d7a95e75ae6
}
     - parameter userId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getUserWithRequestBuilder(userId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/users/{user_id}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user_id}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List Users
     
     - parameter email: (query) Returns users with email addresses containing the provided string. (optional)
     - parameter _id: (query) Search for a user matching the provided UUID value. (optional)
     - parameter integrationId: (query) Search for a integration matching the provided UUID value. (optional)
     - parameter archived: (query) Return only users that are either archived (true) or not archived (false). Archived users are users that appear in the Kandji Users module under the Archived tab. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listUsers(email: String? = nil, _id: String? = nil, integrationId: String? = nil, archived: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return listUsersWithRequestBuilder(email: email, _id: _id, integrationId: integrationId, archived: archived).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Users
     - GET /api/v1/users
     - <p>This endpoint makes a request to retrieve a list of users from user directory integrations.</p> <p>A maximum of 300 records are returned per request, and pagination can be performed leveraging the URLs provided in the <code>next</code> and <code>previous</code> keys in the response. If there are no more results available, the respective key will be <code>null</code>.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#b107eb0a-b586-414f-bc4c-3d2b304cfd5f
}
     - parameter email: (query) Returns users with email addresses containing the provided string. (optional)
     - parameter _id: (query) Search for a user matching the provided UUID value. (optional)
     - parameter integrationId: (query) Search for a integration matching the provided UUID value. (optional)
     - parameter archived: (query) Return only users that are either archived (true) or not archived (false). Archived users are users that appear in the Kandji Users module under the Archived tab. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func listUsersWithRequestBuilder(email: String? = nil, _id: String? = nil, integrationId: String? = nil, archived: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/users"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "email": (wrappedValue: email?.encodeToJSON(), isExplode: true),
            "id": (wrappedValue: _id?.encodeToJSON(), isExplode: true),
            "integration_id": (wrappedValue: integrationId?.encodeToJSON(), isExplode: true),
            "archived": (wrappedValue: archived?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
}
