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
 * The InstantWinFilter model module.
 * @module model/InstantWinFilter
 * @version 1.0.16
 */
class InstantWinFilter {
    /**
     * Constructs a new <code>InstantWinFilter</code>.
     * @alias module:model/InstantWinFilter
     */
    constructor() { 
        
        InstantWinFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InstantWinFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinFilter} obj Optional instance to populate.
     * @return {module:model/InstantWinFilter} The populated <code>InstantWinFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinFilter();

            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('ids')) {
                obj['ids'] = ApiClient.convertToType(data['ids'], ['String']);
            }
            if (data.hasOwnProperty('skip')) {
                obj['skip'] = ApiClient.convertToType(data['skip'], 'Number');
            }
            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('instantWinTypes')) {
                obj['instantWinTypes'] = ApiClient.convertToType(data['instantWinTypes'], ['Number']);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<String>} tags
 */
InstantWinFilter.prototype['tags'] = undefined;

/**
 * @member {Array.<String>} ids
 */
InstantWinFilter.prototype['ids'] = undefined;

/**
 * @member {Number} skip
 */
InstantWinFilter.prototype['skip'] = undefined;

/**
 * @member {Number} limit
 */
InstantWinFilter.prototype['limit'] = undefined;

/**
 * Specify the constraints that need to be applied to the filter.
 * @member {Array.<String>} constraints
 */
InstantWinFilter.prototype['constraints'] = undefined;

/**
 * @member {Array.<Number>} instantWinTypes
 */
InstantWinFilter.prototype['instantWinTypes'] = undefined;






export default InstantWinFilter;

