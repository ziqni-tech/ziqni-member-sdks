//
// ContestsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ContestsAPI {

    /**
     Get contests by member reference Id
     
     - parameter contestRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getContests(contestRequest: ContestRequest, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: ContestResponse?, _ error: Error?) -> Void)) {
        getContestsWithRequestBuilder(contestRequest: contestRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get contests by member reference Id
     - POST /contests
     - Returns a list of contests for the provided member ref id and applied filters.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter contestRequest: (body)  
     - returns: RequestBuilder<ContestResponse> 
     */
    open class func getContestsWithRequestBuilder(contestRequest: ContestRequest) -> RequestBuilder<ContestResponse> {
        let localVariablePath = "/contests"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: contestRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ContestResponse>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
