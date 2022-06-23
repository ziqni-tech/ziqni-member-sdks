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
import Award from './Award';
import Error from './Error';
import ResponseMeta from './ResponseMeta';

/**
 * The AwardResponse model module.
 * @module model/AwardResponse
 * @version 0.0.1
 */
class AwardResponse {
    /**
     * Constructs a new <code>AwardResponse</code>.
     * @alias module:model/AwardResponse
     */
    constructor() { 
        
        AwardResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AwardResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AwardResponse} obj Optional instance to populate.
     * @return {module:model/AwardResponse} The populated <code>AwardResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AwardResponse();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], [Award]);
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
AwardResponse.prototype['meta'] = undefined;

/**
 * @member {Array.<module:model/Award>} data
 */
AwardResponse.prototype['data'] = undefined;

/**
 * @member {Array.<module:model/Error>} errors
 */
AwardResponse.prototype['errors'] = undefined;






export default AwardResponse;

