/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.10
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import FileObjectResponse from '../model/FileObjectResponse';
import FileRequest from '../model/FileRequest';

/**
* Files service.
* @module api/FilesApi
* @version 1.0.10
*/
export default class FilesApi {

    /**
    * Constructs a new FilesApi. 
    * @alias module:api/FilesApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getFiles operation.
     * @callback module:api/FilesApi~getFilesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/FileObjectResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get files.
     * This operation supports retrieval of file objects for one or many entities.
     * @param {module:model/FileRequest} fileRequest 
     * @param {module:api/FilesApi~getFilesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FileObjectResponse}
     */
    getFiles(fileRequest, callback) {
      let postBody = fileRequest;
      // verify the required parameter 'fileRequest' is set
      if (fileRequest === undefined || fileRequest === null) {
        throw new Error("Missing the required parameter 'fileRequest' when calling getFiles");
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
      let returnType = FileObjectResponse;
      return this.apiClient.callApi(
        '/files', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
