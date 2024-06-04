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
import CallbacksResponse from '../model/CallbacksResponse';

/**
* Callbacks service.
* @module api/CallbacksApi
* @version 1.0.16
*/
export default class CallbacksApi {

    /**
    * Constructs a new CallbacksApi. 
    * @alias module:api/CallbacksApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the listCallbacks operation.
     * @callback module:api/CallbacksApi~listCallbacksCallback
     * @param {String} error Error message, if any.
     * @param {module:model/CallbacksResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Describe the system callbacks and there constraints
     * subscribes a client to receive out-of-band data
     * @param {module:api/CallbacksApi~listCallbacksCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/CallbacksResponse}
     */
    listCallbacks(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = CallbacksResponse;
      return this.apiClient.callApi(
        '/callbacks', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
