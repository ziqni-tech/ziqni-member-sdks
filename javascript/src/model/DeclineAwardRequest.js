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

/**
 * The DeclineAwardRequest model module.
 * @module model/DeclineAwardRequest
 * @version 1.0.19
 */
class DeclineAwardRequest {
    /**
     * Constructs a new <code>DeclineAwardRequest</code>.
     * @alias module:model/DeclineAwardRequest
     */
    constructor() { 
        
        DeclineAwardRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DeclineAwardRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DeclineAwardRequest} obj Optional instance to populate.
     * @return {module:model/DeclineAwardRequest} The populated <code>DeclineAwardRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DeclineAwardRequest();

            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('awardIds')) {
                obj['awardIds'] = ApiClient.convertToType(data['awardIds'], ['String']);
            }
            if (data.hasOwnProperty('currencyKey')) {
                obj['currencyKey'] = ApiClient.convertToType(data['currencyKey'], 'String');
            }
        }
        return obj;
    }


}

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
DeclineAwardRequest.prototype['languageKey'] = undefined;

/**
 * @member {Array.<String>} awardIds
 */
DeclineAwardRequest.prototype['awardIds'] = undefined;

/**
 * The UoM currency key to normalise the value to for presentation. Example; If the reward is in EUR and this value is set to USD then the value will be multiplied by 1.09387699997429
 * @member {String} currencyKey
 */
DeclineAwardRequest.prototype['currencyKey'] = undefined;






export default DeclineAwardRequest;
