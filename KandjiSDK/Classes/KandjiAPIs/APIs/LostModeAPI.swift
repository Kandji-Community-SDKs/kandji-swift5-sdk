//
// LostModeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

extension OpenAPIClientAPI {


open class LostModeAPI {

    /**
     Disable Lost Mode
     
     - parameter deviceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func disableLostMode(deviceId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return disableLostModeWithRequestBuilder(deviceId: deviceId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Disable Lost Mode
     - POST /api/v1/devices/{device_id}/action/disablelostmode
     - <p>This command will send a request to turn off lost mode on iOS and iPadOS.</p> <p>If the command is already pending, the message &quot;<em>Disable lost mode is already pending for this device.</em>&quot; will be in the response.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#9931de43-41f0-41ed-b5cb-6749fb2a79df
}
     - parameter deviceId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func disableLostModeWithRequestBuilder(deviceId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/devices/{device_id}/action/disablelostmode"
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{device_id}", with: deviceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Enable Lost Mode
     
     - parameter deviceId: (path)  
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func enableLostMode(deviceId: String, body: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return enableLostModeWithRequestBuilder(deviceId: deviceId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Enable Lost Mode
     - POST /api/v1/devices/{device_id}/action/enablelostmode
     - <p>This endpoint sends an MDM command to remotely turn on lost mode on iOS and iPadOS.</p> <p>Optionally, a JSON payload can be sent in the request to set a lock message, phone number, and footnote on the target device.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#daee2351-6856-441c-894f-1b8143d4edbe
}
     - parameter deviceId: (path)  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func enableLostModeWithRequestBuilder(deviceId: String, body: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/devices/{device_id}/action/enablelostmode"
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{device_id}", with: deviceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Play Lost Mode Sound
     
     - parameter deviceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func playLostModeSound(deviceId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return playLostModeSoundWithRequestBuilder(deviceId: deviceId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Play Lost Mode Sound
     - POST /api/v1/devices/{device_id}/action/playlostmodesound
     - <p>This command will tell the target iOS or iPadOS device to play the lost mode sound.</p> <p><strong>Note</strong>: The Lost Mode sound will play for 2 minutes, even if the device is in silent mode. Anyone finding the device can silence the sound by pressing any of its side buttons.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#be0a10f4-222c-4984-b451-1e42b46efe43
}
     - parameter deviceId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func playLostModeSoundWithRequestBuilder(deviceId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/devices/{device_id}/action/playlostmodesound"
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{device_id}", with: deviceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Location
     
     - parameter deviceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateLocation(deviceId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return updateLocationWithRequestBuilder(deviceId: deviceId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Location
     - POST /api/v1/devices/{device_id}/action/updatelocation
     - This endpoint sends an MDM command to update the location data on iOS and iPadOS.
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#6159f4fb-622d-46f5-bcb5-4879dd8f0b9b
}
     - parameter deviceId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func updateLocationWithRequestBuilder(deviceId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/devices/{device_id}/action/updatelocation"
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{device_id}", with: deviceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
}
