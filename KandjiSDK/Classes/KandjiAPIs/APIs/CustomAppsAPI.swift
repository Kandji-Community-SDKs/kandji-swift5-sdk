//
// CustomAppsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

extension kandji_sdkAPI {


@objcMembers open class CustomAppsAPI : NSObject {

    /**
     Create Custom App
     
     - parameter name: (form) (Required) The name for this Custom App 
     - parameter fileKey: (form) (Required) The S3 key from the &lt;code&gt;Upload Custom App&lt;/code&gt; endpont used to upload the custom app file. 
     - parameter installType: (form) (Required) Options are package, zip, image 
     - parameter installEnforcement: (form) (Required) Options are install_once, continuously_enforce, no_enforcement 
     - parameter showInSelfService: (form) (Optional, default&#x3D;false) Displays this app in Self Service 
     - parameter selfServiceCategoryId: (form) (Required for show_in_self_service&#x3D;true) Self Service Category (by ID) to display app in 
     - parameter selfServiceRecommended: (form) (Optional, default&#x3D;false) Adds recommended flag to app in Self Service 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCustomApp(name: String, fileKey: String, installType: String, installEnforcement: String, showInSelfService: String, selfServiceCategoryId: String, selfServiceRecommended: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return createCustomAppWithRequestBuilder(name: name, fileKey: fileKey, installType: installType, installEnforcement: installEnforcement, showInSelfService: showInSelfService, selfServiceCategoryId: selfServiceCategoryId, selfServiceRecommended: selfServiceRecommended).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Custom App
     - POST /api/v1/library/custom-apps
     - <p>This request allows you to create a custom app in the Kandji library.</p> <p>Must have already generated a <code>file_key</code> via <code>Create custom app</code> endpoint and uploaded the file to S3 using a request similar to the <code>Upload to S3</code> example.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#144a1858-d8f0-4a3e-9d35-e9395e51bcff
}
     - parameter name: (form) (Required) The name for this Custom App 
     - parameter fileKey: (form) (Required) The S3 key from the &lt;code&gt;Upload Custom App&lt;/code&gt; endpont used to upload the custom app file. 
     - parameter installType: (form) (Required) Options are package, zip, image 
     - parameter installEnforcement: (form) (Required) Options are install_once, continuously_enforce, no_enforcement 
     - parameter showInSelfService: (form) (Optional, default&#x3D;false) Displays this app in Self Service 
     - parameter selfServiceCategoryId: (form) (Required for show_in_self_service&#x3D;true) Self Service Category (by ID) to display app in 
     - parameter selfServiceRecommended: (form) (Optional, default&#x3D;false) Adds recommended flag to app in Self Service 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func createCustomAppWithRequestBuilder(name: String, fileKey: String, installType: String, installEnforcement: String, showInSelfService: String, selfServiceCategoryId: String, selfServiceRecommended: String) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-apps"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "name": name.encodeToJSON(),
            "file_key": fileKey.encodeToJSON(),
            "install_type": installType.encodeToJSON(),
            "install_enforcement": installEnforcement.encodeToJSON(),
            "show_in_self_service": showInSelfService.encodeToJSON(),
            "self_service_category_id": selfServiceCategoryId.encodeToJSON(),
            "self_service_recommended": selfServiceRecommended.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/x-www-form-urlencoded",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Custom App
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteCustomApp(libraryItemId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteCustomAppWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Custom App
     - DELETE /api/v1/library/custom-apps/{library_item_id}
     - <p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific custom app from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#865bfd6c-bbd8-4d1e-8e1a-06ceed4fe6d7
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCustomAppWithRequestBuilder(libraryItemId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/library/custom-apps/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = kandji_sdkAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Custom App
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getCustomApp(libraryItemId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getCustomAppWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Custom App
     - GET /api/v1/library/custom-apps/{library_item_id}
     - <p>This endpoint retrieves details about a specific custom app from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#484fc554-9c1e-447a-b76b-907e0b501a5a
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getCustomAppWithRequestBuilder(libraryItemId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-apps/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
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
     List Custom Apps
     
     - parameter page: (query) Optional page number. Used when results exceed pagination threshold. A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listCustomApps(page: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return listCustomAppsWithRequestBuilder(page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Custom Apps
     - GET /api/v1/library/custom-apps
     - This endpoint makes a request to retrieve a list of custom apps from the Kandji library.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#86a74b19-c528-490b-817f-31cf9e9c1826
}
     - parameter page: (query) Optional page number. Used when results exceed pagination threshold. A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func listCustomAppsWithRequestBuilder(page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-apps"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Custom App
     
     - parameter libraryItemId: (path)  
     - parameter name: (form) Renaming a Custom App 
     - parameter active: (form) (Optional, default&#x3D;true) Whether this Custom App is active and installable 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateCustomApp(libraryItemId: String, name: String, active: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return updateCustomAppWithRequestBuilder(libraryItemId: libraryItemId, name: name, active: active).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Custom App
     - PATCH /api/v1/library/custom-apps/{library_item_id}
     - <p>This request allows you to update a custom app in the Kandji library.</p> <p>Must have already generated a <code>file_key</code> via <code>Create custom app</code> endpoint and uploaded the file to S3 using a request similar to the <code>Upload to S3</code> example.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#c8c69dfd-7749-4958-b550-16c98aa6aa90
}
     - parameter libraryItemId: (path)  
     - parameter name: (form) Renaming a Custom App 
     - parameter active: (form) (Optional, default&#x3D;true) Whether this Custom App is active and installable 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func updateCustomAppWithRequestBuilder(libraryItemId: String, name: String, active: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-apps/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "name": name.encodeToJSON(),
            "active": active.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/x-www-form-urlencoded",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Upload Custom App
     
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func uploadCustomApp(body: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadCustomAppWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload Custom App
     - POST /api/v1/library/custom-apps/upload
     - <p>This request retrieves the S3 upload details need for uploading the app to Amazon S3.</p> <p>Creates a pre-signed <code>post_url</code> to upload a new Custom App to S3.</p> <p>The provided <code>name</code> will be used to calculate a unique <code>file_key</code> in S3.</p> <p>A separate request will have to be made to the <code>Upload to S3</code> endpoint to upload the file to S3 directly using the <code>post_url</code> and <code>post_data</code> from the <code>Upload Custom App</code> response.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#f5b29c86-e066-4d13-ab22-46b93790d7e3
}
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func uploadCustomAppWithRequestBuilder(body: String? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/library/custom-apps/upload"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = kandji_sdkAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
}
