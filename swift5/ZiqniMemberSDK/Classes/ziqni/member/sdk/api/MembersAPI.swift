//
// MembersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MembersAPI {

    /**
     Get member information by member reference id
     
     - parameter memberRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMember(memberRequest: MemberRequest, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: MemberResponse?, _ error: Error?) -> Void)) {
        getMemberWithRequestBuilder(memberRequest: memberRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get member information by member reference id
     - POST /member-info
     - Returns member information for the provided member reference id
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter memberRequest: (body)  
     - returns: RequestBuilder<MemberResponse> 
     */
    open class func getMemberWithRequestBuilder(memberRequest: MemberRequest) -> RequestBuilder<MemberResponse> {
        let localVariablePath = "/member-info"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: memberRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MemberResponse>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}