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
 * The Token model module.
 * @module model/Token
 * @version 0.0.1
 */
class Token {
    /**
     * Constructs a new <code>Token</code>.
     * @alias module:model/Token
     * @param jwtToken {String} 
     */
    constructor(jwtToken) { 
        
        Token.initialize(this, jwtToken);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, jwtToken) { 
        obj['jwtToken'] = jwtToken;
    }

    /**
     * Constructs a <code>Token</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Token} obj Optional instance to populate.
     * @return {module:model/Token} The populated <code>Token</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Token();

            if (data.hasOwnProperty('jwtToken')) {
                obj['jwtToken'] = ApiClient.convertToType(data['jwtToken'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} jwtToken
 */
Token.prototype['jwtToken'] = undefined;






export default Token;

