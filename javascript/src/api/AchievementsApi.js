/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.17
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import AchievementRequest from '../model/AchievementRequest';
import AchievementResponse from '../model/AchievementResponse';

/**
* Achievements service.
* @module api/AchievementsApi
* @version 1.0.17
*/
export default class AchievementsApi {

    /**
    * Constructs a new AchievementsApi. 
    * @alias module:api/AchievementsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getAchievements operation.
     * @callback module:api/AchievementsApi~getAchievementsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/AchievementResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get achievements by member reference id
     * Returns a list of achievements for the provided member ref id and applied filters.
     * @param {module:model/AchievementRequest} achievementRequest 
     * @param {module:api/AchievementsApi~getAchievementsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/AchievementResponse}
     */
    getAchievements(achievementRequest, callback) {
      let postBody = achievementRequest;
      // verify the required parameter 'achievementRequest' is set
      if (achievementRequest === undefined || achievementRequest === null) {
        throw new Error("Missing the required parameter 'achievementRequest' when calling getAchievements");
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
      let returnType = AchievementResponse;
      return this.apiClient.callApi(
        '/achievements', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
