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

/**
 * The DateRange model module.
 * @module model/DateRange
 * @version 1.0.16
 */
class DateRange {
    /**
     * Constructs a new <code>DateRange</code>.
     * @alias module:model/DateRange
     */
    constructor() { 
        
        DateRange.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DateRange</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DateRange} obj Optional instance to populate.
     * @return {module:model/DateRange} The populated <code>DateRange</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DateRange();

            if (data.hasOwnProperty('before')) {
                obj['before'] = ApiClient.convertToType(data['before'], 'Date');
            }
            if (data.hasOwnProperty('after')) {
                obj['after'] = ApiClient.convertToType(data['after'], 'Date');
            }
        }
        return obj;
    }


}

/**
 * @member {Date} before
 */
DateRange.prototype['before'] = undefined;

/**
 * @member {Date} after
 */
DateRange.prototype['after'] = undefined;






export default DateRange;

