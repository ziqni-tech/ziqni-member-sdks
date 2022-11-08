/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import AwardRequest from '../model/AwardRequest';
import AwardResponse from '../model/AwardResponse';
import ClaimAwardRequest from '../model/ClaimAwardRequest';

/**
* Awards service.
* @module api/AwardsApi
* @version 1.0.0
*/
export default class AwardsApi {

    /**
    * Constructs a new AwardsApi. 
    * @alias module:api/AwardsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the claimAwards operation.
     * @callback module:api/AwardsApi~claimAwardsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/AwardResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Claim awards.
     * This operation enables a member to claim awards.
     * @param {module:model/ClaimAwardRequest} claimAwardRequest 
     * @param {module:api/AwardsApi~claimAwardsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/AwardResponse}
     */
    claimAwards(claimAwardRequest, callback) {
      let postBody = claimAwardRequest;
      // verify the required parameter 'claimAwardRequest' is set
      if (claimAwardRequest === undefined || claimAwardRequest === null) {
        throw new Error("Missing the required parameter 'claimAwardRequest' when calling claimAwards");
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
      let returnType = AwardResponse;
      return this.apiClient.callApi(
        '/awards-claim', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getAwards operation.
     * @callback module:api/AwardsApi~getAwardsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/AwardResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get awards.
     * This operation supports retrieval of awards for one or many entities.
     * @param {module:model/AwardRequest} awardRequest 
     * @param {module:api/AwardsApi~getAwardsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/AwardResponse}
     */
    getAwards(awardRequest, callback) {
      let postBody = awardRequest;
      // verify the required parameter 'awardRequest' is set
      if (awardRequest === undefined || awardRequest === null) {
        throw new Error("Missing the required parameter 'awardRequest' when calling getAwards");
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
      let returnType = AwardResponse;
      return this.apiClient.callApi(
        '/awards', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}