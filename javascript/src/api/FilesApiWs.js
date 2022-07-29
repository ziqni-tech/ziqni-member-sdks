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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClientStomp', 'model/FileRequest', 'model/FileResponse'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClientStomp'), require('../model/FileRequest'), require('../model/FileResponse'));
  } else {
    // Browser globals (root is window)
    if (!root.ZiqniMemberApi) {
      root.ZiqniMemberApi = {};
    }
    root.ZiqniMemberApi.FilesApi = factory(root.ZiqniMemberApi.ApiClientStomp, root.ZiqniMemberApi.FileRequest, root.ZiqniMemberApi.FileResponse);
  }
}(this, function(ApiClientStomp, FileRequest, FileResponse) {
  'use strict';

  /**
   * Files service.
   * @module api/FilesApi
   * @version 1.0.0
   */

  /**
   * Constructs a new FilesApi. 
   * @alias module:api/FilesApi
   * @class
   * @param {module:ApiClientStomp} [apiClientStomp] Optional API client implementation to use,
   * default to {@link module:ApiClientStomp#instance} if unspecified.
   */
  var exports = function(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;


    /**
     * Callback function to receive the result of the getFiles operation.
     * @callback module:api/FilesApi~getFilesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/FileResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get files.
     * This operation supports retrieval of file objects for one or many entities.
     * @param {module:model/FileRequest} fileRequest 
     * @param {module:api/FilesApi~getFilesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FileResponse}
     */
    this.getFiles = function(fileRequest, callback) {
      var postBody = fileRequest;
      // verify the required parameter 'fileRequest' is set
      if (fileRequest === undefined || fileRequest === null) {
        throw new Error("Missing the required parameter 'fileRequest' when calling getFiles");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };
      var destination = '/gapi/getFiles';

      var returnType = FileResponse;
      return this.apiClientStomp.sendRpc(destination, callback, pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody, returnType);
    }
  };

  return exports;
}));
