/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.19
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import MemberRequest from '../model/MemberRequest';
import MemberResponse from '../model/MemberResponse';

/**
* Members service.
* @module api/MembersApi
* @version 1.0.19
*/
export default class MembersApi {

    /**
    * Constructs a new MembersApi. 
    * @alias module:api/MembersApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getMember operation.
     * @callback module:api/MembersApi~getMemberCallback
     * @param {String} error Error message, if any.
     * @param {module:model/MemberResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get member information by member reference id
     * Returns member information for the provided member reference id
     * @param {module:model/MemberRequest} memberRequest 
     * @param {module:api/MembersApi~getMemberCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/MemberResponse}
     */
    getMember(memberRequest, callback) {
      let postBody = memberRequest;
      // verify the required parameter 'memberRequest' is set
      if (memberRequest === undefined || memberRequest === null) {
        throw new Error("Missing the required parameter 'memberRequest' when calling getMember");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = MemberResponse;
      return this.apiClient.callApi(
        '/member-info', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
