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

/**
 * The ClaimAwardRequest model module.
 * @module model/ClaimAwardRequest
 * @version 0.0.1
 */
class ClaimAwardRequest {
    /**
     * Constructs a new <code>ClaimAwardRequest</code>.
     * @alias module:model/ClaimAwardRequest
     */
    constructor() { 
        
        ClaimAwardRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ClaimAwardRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ClaimAwardRequest} obj Optional instance to populate.
     * @return {module:model/ClaimAwardRequest} The populated <code>ClaimAwardRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ClaimAwardRequest();

            if (data.hasOwnProperty('awardIds')) {
                obj['awardIds'] = ApiClient.convertToType(data['awardIds'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<String>} awardIds
 */
ClaimAwardRequest.prototype['awardIds'] = undefined;






export default ClaimAwardRequest;

