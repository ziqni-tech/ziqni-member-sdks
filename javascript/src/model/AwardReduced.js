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
import AwardReducedAllOf from './AwardReducedAllOf';

/**
 * The AwardReduced model module.
 * @module model/AwardReduced
 * @version 1.0.19
 */
class AwardReduced {
    /**
     * Constructs a new <code>AwardReduced</code>.
     * @alias module:model/AwardReduced
     * @implements module:model/AwardReducedAllOf
     */
    constructor() { 
        AwardReducedAllOf.initialize(this);
        AwardReduced.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AwardReduced</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AwardReduced} obj Optional instance to populate.
     * @return {module:model/AwardReduced} The populated <code>AwardReduced</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AwardReduced();
            AwardReducedAllOf.constructFromObject(data, obj);

            if (data.hasOwnProperty('awardId')) {
                obj['awardId'] = ApiClient.convertToType(data['awardId'], 'String');
            }
            if (data.hasOwnProperty('rewardId')) {
                obj['rewardId'] = ApiClient.convertToType(data['rewardId'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * A unique identifier of a Award
 * @member {String} awardId
 */
AwardReduced.prototype['awardId'] = undefined;

/**
 * A unique identifier of a Reward
 * @member {String} rewardId
 */
AwardReduced.prototype['rewardId'] = undefined;

/**
 * Numerical value of the award that will be issued
 * @member {Number} value
 */
AwardReduced.prototype['value'] = undefined;


// Implement AwardReducedAllOf interface:
/**
 * A unique identifier of a Award
 * @member {String} awardId
 */
AwardReducedAllOf.prototype['awardId'] = undefined;
/**
 * A unique identifier of a Reward
 * @member {String} rewardId
 */
AwardReducedAllOf.prototype['rewardId'] = undefined;
/**
 * Numerical value of the award that will be issued
 * @member {Number} value
 */
AwardReducedAllOf.prototype['value'] = undefined;




export default AwardReduced;

