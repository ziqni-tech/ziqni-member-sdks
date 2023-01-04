/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import ManageOptinRequest from '../model/ManageOptinRequest';
import OptInResponse from '../model/OptInResponse';
import OptInStatesRequest from '../model/OptInStatesRequest';

/**
* OptIn service.
* @module api/OptInApi
* @version 1.0.1
*/
export default class OptInApi {

    /**
    * Constructs a new OptInApi. 
    * @alias module:api/OptInApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the manageOptin operation.
     * @callback module:api/OptInApi~manageOptinCallback
     * @param {String} error Error message, if any.
     * @param {module:model/OptInResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get member optin information
     * Returns a list of member optin information
     * @param {module:model/ManageOptinRequest} manageOptinRequest 
     * @param {module:api/OptInApi~manageOptinCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/OptInResponse}
     */
    manageOptin(manageOptinRequest, callback) {
      let postBody = manageOptinRequest;
      // verify the required parameter 'manageOptinRequest' is set
      if (manageOptinRequest === undefined || manageOptinRequest === null) {
        throw new Error("Missing the required parameter 'manageOptinRequest' when calling manageOptin");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['OAuth2'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = OptInResponse;
      return this.apiClient.callApi(
        '/manage-optin', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the optInStates operation.
     * @callback module:api/OptInApi~optInStatesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/OptInResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get member optin status information
     * Returns a list of member optin status information
     * @param {module:model/OptInStatesRequest} optInStatesRequest 
     * @param {module:api/OptInApi~optInStatesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/OptInResponse}
     */
    optInStates(optInStatesRequest, callback) {
      let postBody = optInStatesRequest;
      // verify the required parameter 'optInStatesRequest' is set
      if (optInStatesRequest === undefined || optInStatesRequest === null) {
        throw new Error("Missing the required parameter 'optInStatesRequest' when calling optInStates");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['OAuth2'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = OptInResponse;
      return this.apiClient.callApi(
        '/optin-states', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
