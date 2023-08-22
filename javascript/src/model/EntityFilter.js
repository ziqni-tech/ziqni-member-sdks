/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.10
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The EntityFilter model module.
 * @module model/EntityFilter
 * @version 1.0.10
 */
class EntityFilter {
    /**
     * Constructs a new <code>EntityFilter</code>.
     * @alias module:model/EntityFilter
     */
    constructor() { 
        
        EntityFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>EntityFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityFilter} obj Optional instance to populate.
     * @return {module:model/EntityFilter} The populated <code>EntityFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityFilter();

            if (data.hasOwnProperty('entityType')) {
                obj['entityType'] = ApiClient.convertToType(data['entityType'], 'String');
            }
            if (data.hasOwnProperty('entityIds')) {
                obj['entityIds'] = ApiClient.convertToType(data['entityIds'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * Achievement, Contest or Competition
 * @member {String} entityType
 */
EntityFilter.prototype['entityType'] = undefined;

/**
 * @member {Array.<String>} entityIds
 */
EntityFilter.prototype['entityIds'] = undefined;






export default EntityFilter;

