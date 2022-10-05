/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
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
 * The RangeQuery model module.
 * @module model/RangeQuery
 * @version 1.0.0
 */
class RangeQuery {
    /**
     * Constructs a new <code>RangeQuery</code>.
     * @alias module:model/RangeQuery
     */
    constructor() { 
        
        RangeQuery.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RangeQuery</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RangeQuery} obj Optional instance to populate.
     * @return {module:model/RangeQuery} The populated <code>RangeQuery</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RangeQuery();

            if (data.hasOwnProperty('gt')) {
                obj['gt'] = ApiClient.convertToType(data['gt'], 'String');
            }
            if (data.hasOwnProperty('lt')) {
                obj['lt'] = ApiClient.convertToType(data['lt'], 'String');
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * Greater than value
 * @member {String} gt
 */
RangeQuery.prototype['gt'] = undefined;

/**
 * Less than value
 * @member {String} lt
 */
RangeQuery.prototype['lt'] = undefined;

/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
RangeQuery.prototype['constraints'] = undefined;






export default RangeQuery;

