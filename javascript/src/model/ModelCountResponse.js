/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.14
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ModelCountResponse model module.
 * @module model/ModelCountResponse
 * @version 1.0.14
 */
class ModelCountResponse {
    /**
     * Constructs a new <code>ModelCountResponse</code>.
     * @alias module:model/ModelCountResponse
     */
    constructor() { 
        
        ModelCountResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ModelCountResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ModelCountResponse} obj Optional instance to populate.
     * @return {module:model/ModelCountResponse} The populated <code>ModelCountResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ModelCountResponse();

            if (data.hasOwnProperty('modelCount')) {
                obj['modelCount'] = ApiClient.convertToType(data['modelCount'], {'String': 'Number'});
            }
        }
        return obj;
    }


}

/**
 * @member {Object.<String, Number>} modelCount
 */
ModelCountResponse.prototype['modelCount'] = undefined;






export default ModelCountResponse;

