/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.11
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import CallbackEntry from './CallbackEntry';

/**
 * The CallbacksResponse model module.
 * @module model/CallbacksResponse
 * @version 1.0.11
 */
class CallbacksResponse {
    /**
     * Constructs a new <code>CallbacksResponse</code>.
     * @alias module:model/CallbacksResponse
     * @param callback {Array.<module:model/CallbackEntry>} 
     */
    constructor(callback) { 
        
        CallbacksResponse.initialize(this, callback);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, callback) { 
        obj['callback'] = callback;
    }

    /**
     * Constructs a <code>CallbacksResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CallbacksResponse} obj Optional instance to populate.
     * @return {module:model/CallbacksResponse} The populated <code>CallbacksResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CallbacksResponse();

            if (data.hasOwnProperty('callback')) {
                obj['callback'] = ApiClient.convertToType(data['callback'], [CallbackEntry]);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<module:model/CallbackEntry>} callback
 */
CallbacksResponse.prototype['callback'] = undefined;






export default CallbacksResponse;

