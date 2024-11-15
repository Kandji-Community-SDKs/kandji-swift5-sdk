//
// LibraryItemsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LibraryItemsAPI {

    /**
     Get Library Item Activity
     
     - parameter libraryItemId: (path)  
     - parameter activityType: (query) Filter actions by this activity type. Choices are: library_item_created, library_item_edited, library_item_deleted, library_item_duplicated, library_item_assignment_changed (optional)
     - parameter userId: (query) Filter actions by this user (id) (optional)
     - parameter userEmail: (query) Filter actions by this user (email) (optional)
     - parameter limit: (query) A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
     - parameter offset: (query) Specify the starting record to return (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getLibraryItemActivity(libraryItemId: String, activityType: String? = nil, userId: String? = nil, userEmail: String? = nil, limit: String? = nil, offset: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getLibraryItemActivityWithRequestBuilder(libraryItemId: libraryItemId, activityType: activityType, userId: userId, userEmail: userEmail, limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Library Item Activity
     - GET /api/v1/library/library-items/{library_item_id}/activity
     - <p>This endpoint retrieves the activity related to a specific library item. Activity is listed from newest to oldest.</p> <p>To see a delta of the activity events between now and the last request, you can store the newest entry from the previous request and then look for that entry in the next request. Any entry post that will be the delta.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Connection(String), Content-Type(String), Allow(String), Content-Encoding(String), Content-Security-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Ratelimit-Limit(String), Ratelimit-Remaining(String), Ratelimit-Reset(String), Referrer-Policy(String), Server(String), Strict-Transport-Security(String), Via(String), X-Content-Type-Options(String), X-Frame-Options(String), X-Kong-Proxy-Latency(String), X-Kong-Upstream-Latency(String), X-Ratelimit-Limit-Hour(String), X-Ratelimit-Limit-Second(String), X-Ratelimit-Remaining-Hour(String), X-Ratelimit-Remaining-Second(String), Accept-Ranges(String), Access-Control-Allow-Origin(String), Date(String), X-Served-By(String), X-Cache(String), X-Cache-Hits(String), X-Timer(String), Vary(String), transfer-encoding(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#c2bb2f1a-b904-4fc0-9256-d188fd9eb191
}
     - parameter libraryItemId: (path)  
     - parameter activityType: (query) Filter actions by this activity type. Choices are: library_item_created, library_item_edited, library_item_deleted, library_item_duplicated, library_item_assignment_changed (optional)
     - parameter userId: (query) Filter actions by this user (id) (optional)
     - parameter userEmail: (query) Filter actions by this user (email) (optional)
     - parameter limit: (query) A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
     - parameter offset: (query) Specify the starting record to return (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getLibraryItemActivityWithRequestBuilder(libraryItemId: String, activityType: String? = nil, userId: String? = nil, userEmail: String? = nil, limit: String? = nil, offset: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/library-items/{library_item_id}/activity"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "activity_type": (wrappedValue: activityType?.encodeToJSON(), isExplode: true),
            "user_id": (wrappedValue: userId?.encodeToJSON(), isExplode: true),
            "user_email": (wrappedValue: userEmail?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Library Item Statuses
     
     - parameter libraryItemId: (path)  
     - parameter computerId: (query) Query for the status of one device. (optional)
     - parameter limit: (query) A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
     - parameter offset: (query) Specify the starting record to return (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getLibraryItemStatuses(libraryItemId: String, computerId: String? = nil, limit: String? = nil, offset: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getLibraryItemStatusesWithRequestBuilder(libraryItemId: libraryItemId, computerId: computerId, limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Library Item Statuses
     - GET /api/v1/library/library-items/{library_item_id}/status
     - <p>This endpoint retrieves the statuses related to a specific library item.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Connection(String), Content-Type(String), Allow(String), Content-Encoding(String), Content-Security-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Ratelimit-Limit(String), Ratelimit-Remaining(String), Ratelimit-Reset(String), Referrer-Policy(String), Server(String), Strict-Transport-Security(String), Via(String), X-Content-Type-Options(String), X-Frame-Options(String), X-Kong-Proxy-Latency(String), X-Kong-Upstream-Latency(String), X-Ratelimit-Limit-Hour(String), X-Ratelimit-Limit-Second(String), X-Ratelimit-Remaining-Hour(String), X-Ratelimit-Remaining-Second(String), Accept-Ranges(String), Access-Control-Allow-Origin(String), Date(String), X-Served-By(String), X-Cache(String), X-Cache-Hits(String), X-Timer(String), Vary(String), transfer-encoding(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#478764c4-638c-416c-b44c-3685a2f7b441
}
     - parameter libraryItemId: (path)  
     - parameter computerId: (query) Query for the status of one device. (optional)
     - parameter limit: (query) A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
     - parameter offset: (query) Specify the starting record to return (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getLibraryItemStatusesWithRequestBuilder(libraryItemId: String, computerId: String? = nil, limit: String? = nil, offset: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/library-items/{library_item_id}/status"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "computer_id": (wrappedValue: computerId?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
