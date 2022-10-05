/**
 * Ziqni Gamification Cloud API
 * This is the gamification cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import Error from './Error';
import Proxy from './Proxy';
import ResponseMeta from './ResponseMeta';

/**
 * The ProxyResponse model module.
 * @module model/ProxyResponse
 * @version 0.0.1
 */
class ProxyResponse {
    /**
     * Constructs a new <code>ProxyResponse</code>.
     * @alias module:model/ProxyResponse
     */
    constructor() { 
        
        ProxyResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ProxyResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ProxyResponse} obj Optional instance to populate.
     * @return {module:model/ProxyResponse} The populated <code>ProxyResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ProxyResponse();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], [Proxy]);
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
ProxyResponse.prototype['meta'] = undefined;

/**
 * @member {Array.<module:model/Proxy>} data
 */
ProxyResponse.prototype['data'] = undefined;

/**
 * @member {Array.<module:model/Error>} errors
 */
ProxyResponse.prototype['errors'] = undefined;






export default ProxyResponse;

