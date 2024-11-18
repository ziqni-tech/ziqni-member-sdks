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
 * The RewardTypeReduced model module.
 * @module model/RewardTypeReduced
 * @version 1.0.19
 */
class RewardTypeReduced {
    /**
     * Constructs a new <code>RewardTypeReduced</code>.
     * @alias module:model/RewardTypeReduced
     */
    constructor() { 
        
        RewardTypeReduced.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RewardTypeReduced</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RewardTypeReduced} obj Optional instance to populate.
     * @return {module:model/RewardTypeReduced} The populated <code>RewardTypeReduced</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RewardTypeReduced();

            if (data.hasOwnProperty('key')) {
                obj['key'] = ApiClient.convertToType(data['key'], 'String');
            }
            if (data.hasOwnProperty('uom')) {
                obj['uom'] = ApiClient.convertToType(data['uom'], 'String');
            }
            if (data.hasOwnProperty('uomIsoCode')) {
                obj['uomIsoCode'] = ApiClient.convertToType(data['uomIsoCode'], 'String');
            }
            if (data.hasOwnProperty('uomSymbol')) {
                obj['uomSymbol'] = ApiClient.convertToType(data['uomSymbol'], 'String');
            }
            if (data.hasOwnProperty('uomType')) {
                obj['uomType'] = ApiClient.convertToType(data['uomType'], 'String');
            }
            if (data.hasOwnProperty('customFields')) {
                obj['customFields'] = ApiClient.convertToType(data['customFields'], {'String': Object});
            }
        }
        return obj;
    }


}

/**
 * A unique key that represents the reward type
 * @member {String} key
 */
RewardTypeReduced.prototype['key'] = undefined;

/**
 * The key assigned to the unit of measure 
 * @member {String} uom
 */
RewardTypeReduced.prototype['uom'] = undefined;

/**
 * The ISO code assigned to the unit of measure
 * @member {String} uomIsoCode
 */
RewardTypeReduced.prototype['uomIsoCode'] = undefined;

/**
 * The symbol assigned to the unit of measure
 * @member {String} uomSymbol
 */
RewardTypeReduced.prototype['uomSymbol'] = undefined;

/**
 *  The type of UOM, either Other Currency Mass Time Temperature ElectricCurrent AmountOfSubstance LuminousIntensity Distance
 * @member {String} uomType
 */
RewardTypeReduced.prototype['uomType'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
RewardTypeReduced.prototype['customFields'] = undefined;






export default RewardTypeReduced;

