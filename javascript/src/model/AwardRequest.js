/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.16
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import AwardFilter from './AwardFilter';

/**
 * The AwardRequest model module.
 * @module model/AwardRequest
 * @version 1.0.16
 */
class AwardRequest {
    /**
     * Constructs a new <code>AwardRequest</code>.
     * @alias module:model/AwardRequest
     */
    constructor() { 
        
        AwardRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AwardRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AwardRequest} obj Optional instance to populate.
     * @return {module:model/AwardRequest} The populated <code>AwardRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AwardRequest();

            if (data.hasOwnProperty('awardFilter')) {
                obj['awardFilter'] = AwardFilter.constructFromObject(data['awardFilter']);
            }
            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('currencyKey')) {
                obj['currencyKey'] = ApiClient.convertToType(data['currencyKey'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/AwardFilter} awardFilter
 */
AwardRequest.prototype['awardFilter'] = undefined;

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
AwardRequest.prototype['languageKey'] = undefined;

/**
 * The UoM currency key to normalise the value to for presentation. Example; If the reward is in EUR and this value is set to USD then the value will be multiplied by 1.09387699997429
 * @member {String} currencyKey
 */
AwardRequest.prototype['currencyKey'] = undefined;






export default AwardRequest;

