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
import EntityRequest from '../model/EntityRequest';
import RuleResponse from '../model/RuleResponse';

/**
* Rules service.
* @module api/RulesApi
* @version 1.0.19
*/
export default class RulesApi {

    /**
    * Constructs a new RulesApi. 
    * @alias module:api/RulesApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getRules operation.
     * @callback module:api/RulesApi~getRulesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/RuleResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get rules
     * This operation support retrieval of rules for one or many entities.
     * @param {module:model/EntityRequest} entityRequest 
     * @param {module:api/RulesApi~getRulesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/RuleResponse}
     */
    getRules(entityRequest, callback) {
      let postBody = entityRequest;
      // verify the required parameter 'entityRequest' is set
      if (entityRequest === undefined || entityRequest === null) {
        throw new Error("Missing the required parameter 'entityRequest' when calling getRules");
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
      let returnType = RuleResponse;
      return this.apiClient.callApi(
        '/rules', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
