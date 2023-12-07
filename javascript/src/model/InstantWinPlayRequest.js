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

/**
 * The InstantWinPlayRequest model module.
 * @module model/InstantWinPlayRequest
 * @version 1.0.11
 */
class InstantWinPlayRequest {
    /**
     * Constructs a new <code>InstantWinPlayRequest</code>.
     * @alias module:model/InstantWinPlayRequest
     */
    constructor() { 
        
        InstantWinPlayRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InstantWinPlayRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinPlayRequest} obj Optional instance to populate.
     * @return {module:model/InstantWinPlayRequest} The populated <code>InstantWinPlayRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinPlayRequest();

            if (data.hasOwnProperty('awardId')) {
                obj['awardId'] = ApiClient.convertToType(data['awardId'], 'String');
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
 * The award identifier is required to claim this. This can only be made once.
 * @member {String} awardId
 */
InstantWinPlayRequest.prototype['awardId'] = undefined;

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
InstantWinPlayRequest.prototype['languageKey'] = undefined;

/**
 * The UoM currency key to normalise the value to for presentation. Example; If the reward is in EUR and this value is set to USD then the value will be multiplied by 1.09387699997429
 * @member {String} currencyKey
 */
InstantWinPlayRequest.prototype['currencyKey'] = undefined;






export default InstantWinPlayRequest;

