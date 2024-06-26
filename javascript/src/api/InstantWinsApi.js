/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.16
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import InstantWinPlayRequest from '../model/InstantWinPlayRequest';
import InstantWinPlayResponse from '../model/InstantWinPlayResponse';
import InstantWinRequest from '../model/InstantWinRequest';
import InstantWinResponse from '../model/InstantWinResponse';

/**
* InstantWins service.
* @module api/InstantWinsApi
* @version 1.0.16
*/
export default class InstantWinsApi {

    /**
    * Constructs a new InstantWinsApi. 
    * @alias module:api/InstantWinsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the listInstantWins operation.
     * @callback module:api/InstantWinsApi~listInstantWinsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InstantWinResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {module:model/InstantWinRequest} instantWinRequest 
     * @param {module:api/InstantWinsApi~listInstantWinsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InstantWinResponse}
     */
    listInstantWins(instantWinRequest, callback) {
      let postBody = instantWinRequest;
      // verify the required parameter 'instantWinRequest' is set
      if (instantWinRequest === undefined || instantWinRequest === null) {
        throw new Error("Missing the required parameter 'instantWinRequest' when calling listInstantWins");
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
      let returnType = InstantWinResponse;
      return this.apiClient.callApi(
        '/instant-wins', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the playInstantWin operation.
     * @callback module:api/InstantWinsApi~playInstantWinCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InstantWinPlayResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {module:model/InstantWinPlayRequest} instantWinPlayRequest 
     * @param {module:api/InstantWinsApi~playInstantWinCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InstantWinPlayResponse}
     */
    playInstantWin(instantWinPlayRequest, callback) {
      let postBody = instantWinPlayRequest;
      // verify the required parameter 'instantWinPlayRequest' is set
      if (instantWinPlayRequest === undefined || instantWinPlayRequest === null) {
        throw new Error("Missing the required parameter 'instantWinPlayRequest' when calling playInstantWin");
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
      let returnType = InstantWinPlayResponse;
      return this.apiClient.callApi(
        '/instant-wins-play', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
