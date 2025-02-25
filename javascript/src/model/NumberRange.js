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
 * The NumberRange model module.
 * @module model/NumberRange
 * @version 1.0.19
 */
class NumberRange {
    /**
     * Constructs a new <code>NumberRange</code>.
     * @alias module:model/NumberRange
     */
    constructor() { 
        
        NumberRange.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>NumberRange</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/NumberRange} obj Optional instance to populate.
     * @return {module:model/NumberRange} The populated <code>NumberRange</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new NumberRange();

            if (data.hasOwnProperty('moreThan')) {
                obj['moreThan'] = ApiClient.convertToType(data['moreThan'], 'Number');
            }
            if (data.hasOwnProperty('lessThan')) {
                obj['lessThan'] = ApiClient.convertToType(data['lessThan'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} moreThan
 */
NumberRange.prototype['moreThan'] = undefined;

/**
 * @member {Number} lessThan
 */
NumberRange.prototype['lessThan'] = undefined;






export default NumberRange;

