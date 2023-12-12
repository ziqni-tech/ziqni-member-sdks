/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.12
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import EntityGraphRequest from '../model/EntityGraphRequest';
import EntityGraphResponse from '../model/EntityGraphResponse';

/**
* Graphs service.
* @module api/GraphsApi
* @version 1.0.12
*/
export default class GraphsApi {

    /**
    * Constructs a new GraphsApi. 
    * @alias module:api/GraphsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getGraph operation.
     * @callback module:api/GraphsApi~getGraphCallback
     * @param {String} error Error message, if any.
     * @param {module:model/EntityGraphResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get achievements by member reference id
     * Returns a list of graphs based on the entity type.
     * @param {module:model/EntityGraphRequest} entityGraphRequest 
     * @param {module:api/GraphsApi~getGraphCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/EntityGraphResponse}
     */
    getGraph(entityGraphRequest, callback) {
      let postBody = entityGraphRequest;
      // verify the required parameter 'entityGraphRequest' is set
      if (entityGraphRequest === undefined || entityGraphRequest === null) {
        throw new Error("Missing the required parameter 'entityGraphRequest' when calling getGraph");
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
      let returnType = EntityGraphResponse;
      return this.apiClient.callApi(
        '/graphs', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
