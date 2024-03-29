//
// MessagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MessagesAPI {

    /**
     Get messages by member reference id
     
     - parameter messageRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMessages(messageRequest: MessageRequest, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: MessageResponse?, _ error: Error?) -> Void)) {
        getMessagesWithRequestBuilder(messageRequest: messageRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get messages by member reference id
     - POST /messages
     - Returns a list of messages for the provided member ref id and applied filters.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter messageRequest: (body)  
     - returns: RequestBuilder<MessageResponse> 
     */
    open class func getMessagesWithRequestBuilder(messageRequest: MessageRequest) -> RequestBuilder<MessageResponse> {
        let localVariablePath = "/messages"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: messageRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessageResponse>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
