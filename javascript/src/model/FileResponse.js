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

import ApiClient from '../ApiClient';
import Error from './Error';
import ResponseMeta from './ResponseMeta';

/**
 * The FileResponse model module.
 * @module model/FileResponse
 * @version 1.0.17
 */
class FileResponse {
    /**
     * Constructs a new <code>FileResponse</code>.
     *         
     * @alias module:model/FileResponse
     */
    constructor() { 
        
        FileResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>FileResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FileResponse} obj Optional instance to populate.
     * @return {module:model/FileResponse} The populated <code>FileResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new FileResponse();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], [File]);
            }
            if (data.hasOwnProperty('errors')) {
                obj['errors'] = ApiClient.convertToType(data['errors'], [Error]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>FileResponse</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>FileResponse</code>.
     */
    static validateJSON(data) {
        // validate the optional field `meta`
        if (data['meta']) { // data not null
          ResponseMeta.validateJSON(data['meta']);
        }
        if (data['data']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['data'])) {
                throw new Error("Expected the field `data` to be an array in the JSON data but got " + data['data']);
            }
            // validate the optional field `data` (array)
            for (const item of data['data']) {
                File.validateJSON(item);
            };
        }
        if (data['errors']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['errors'])) {
                throw new Error("Expected the field `errors` to be an array in the JSON data but got " + data['errors']);
            }
            // validate the optional field `errors` (array)
            for (const item of data['errors']) {
                Error.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {module:model/ResponseMeta} meta
 */
FileResponse.prototype['meta'] = undefined;

/**
 * 
 * @member {Array.<File>} data
 */
FileResponse.prototype['data'] = undefined;

/**
 * 
 * @member {Array.<module:model/Error>} errors
 */
FileResponse.prototype['errors'] = undefined;






export default FileResponse;

