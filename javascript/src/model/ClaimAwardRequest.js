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
 * The ClaimAwardRequest model module.
 * @module model/ClaimAwardRequest
 * @version 1.0.14
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

            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('awardIds')) {
                obj['awardIds'] = ApiClient.convertToType(data['awardIds'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
ClaimAwardRequest.prototype['languageKey'] = undefined;

/**
 * @member {Array.<String>} awardIds
 */
ClaimAwardRequest.prototype['awardIds'] = undefined;






export default ClaimAwardRequest;

