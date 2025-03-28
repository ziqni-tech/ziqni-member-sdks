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

import ApiClient from '../ApiClient';
import Error from './Error';
import InstantWinsAvailablePlayResults from './InstantWinsAvailablePlayResults';
import ResponseMeta from './ResponseMeta';

/**
 * The InstantWinsAvailablePlayResponse model module.
 * @module model/InstantWinsAvailablePlayResponse
 * @version 1.0.19
 */
class InstantWinsAvailablePlayResponse {
    /**
     * Constructs a new <code>InstantWinsAvailablePlayResponse</code>.
     * @alias module:model/InstantWinsAvailablePlayResponse
     */
    constructor() { 
        
        InstantWinsAvailablePlayResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InstantWinsAvailablePlayResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinsAvailablePlayResponse} obj Optional instance to populate.
     * @return {module:model/InstantWinsAvailablePlayResponse} The populated <code>InstantWinsAvailablePlayResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinsAvailablePlayResponse();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], [InstantWinsAvailablePlayResults]);
            }
            if (data.hasOwnProperty('errors')) {
                obj['errors'] = ApiClient.convertToType(data['errors'], [Error]);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseMeta} meta
 */
InstantWinsAvailablePlayResponse.prototype['meta'] = undefined;

/**
 * @member {Array.<module:model/InstantWinsAvailablePlayResults>} data
 */
InstantWinsAvailablePlayResponse.prototype['data'] = undefined;

/**
 * @member {Array.<module:model/Error>} errors
 */
InstantWinsAvailablePlayResponse.prototype['errors'] = undefined;






export default InstantWinsAvailablePlayResponse;

