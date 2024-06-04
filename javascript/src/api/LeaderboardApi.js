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
import LeaderboardResponse from '../model/LeaderboardResponse';
import LeaderboardSubscriptionRequest from '../model/LeaderboardSubscriptionRequest';

/**
* Leaderboard service.
* @module api/LeaderboardApi
* @version 1.0.16
*/
export default class LeaderboardApi {

    /**
    * Constructs a new LeaderboardApi. 
    * @alias module:api/LeaderboardApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the subscribeToLeaderboard operation.
     * @callback module:api/LeaderboardApi~subscribeToLeaderboardCallback
     * @param {String} error Error message, if any.
     * @param {module:model/LeaderboardResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {Object} opts Optional parameters
     * @param {module:model/LeaderboardSubscriptionRequest} opts.leaderboardSubscriptionRequest 
     * @param {module:api/LeaderboardApi~subscribeToLeaderboardCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/LeaderboardResponse}
     */
    subscribeToLeaderboard(opts, callback) {
      opts = opts || {};
      let postBody = opts['leaderboardSubscriptionRequest'];

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
      let returnType = LeaderboardResponse;
      return this.apiClient.callApi(
        '/leaderboard', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
