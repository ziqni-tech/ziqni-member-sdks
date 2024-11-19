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
 * The MemberTokenInfo model module.
 * @module model/MemberTokenInfo
 * @version 1.0.19
 */
class MemberTokenInfo {
    /**
     * Constructs a new <code>MemberTokenInfo</code>.
     * @alias module:model/MemberTokenInfo
     * @param jwtToken {String} 
     */
    constructor(jwtToken) { 
        
        MemberTokenInfo.initialize(this, jwtToken);
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
     * Constructs a <code>MemberTokenInfo</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MemberTokenInfo} obj Optional instance to populate.
     * @return {module:model/MemberTokenInfo} The populated <code>MemberTokenInfo</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MemberTokenInfo();

            if (data.hasOwnProperty('jwtToken')) {
                obj['jwtToken'] = ApiClient.convertToType(data['jwtToken'], 'String');
            }
            if (data.hasOwnProperty('modelCount')) {
                obj['modelCount'] = ApiClient.convertToType(data['modelCount'], {'String': 'Number'});
            }
        }
        return obj;
    }


}

/**
 * @member {String} jwtToken
 */
MemberTokenInfo.prototype['jwtToken'] = undefined;

/**
 * @member {Object.<String, Number>} modelCount
 */
MemberTokenInfo.prototype['modelCount'] = undefined;






export default MemberTokenInfo;
