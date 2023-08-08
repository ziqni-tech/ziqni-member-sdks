/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.9
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import NumberRange from './NumberRange';
import QuerySortBy from './QuerySortBy';

/**
 * The AwardFilter model module.
 * @module model/AwardFilter
 * @version 1.0.9
 */
class AwardFilter {
    /**
     * Constructs a new <code>AwardFilter</code>.
     * @alias module:model/AwardFilter
     */
    constructor() { 
        
        AwardFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AwardFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AwardFilter} obj Optional instance to populate.
     * @return {module:model/AwardFilter} The populated <code>AwardFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AwardFilter();

            if (data.hasOwnProperty('productIds')) {
                obj['productIds'] = ApiClient.convertToType(data['productIds'], ['String']);
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('ids')) {
                obj['ids'] = ApiClient.convertToType(data['ids'], ['String']);
            }
            if (data.hasOwnProperty('statusCode')) {
                obj['statusCode'] = NumberRange.constructFromObject(data['statusCode']);
            }
            if (data.hasOwnProperty('sortBy')) {
                obj['sortBy'] = ApiClient.convertToType(data['sortBy'], [QuerySortBy]);
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
            if (data.hasOwnProperty('entityIds')) {
                obj['entityIds'] = ApiClient.convertToType(data['entityIds'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<String>} productIds
 */
AwardFilter.prototype['productIds'] = undefined;

/**
 * @member {Array.<String>} tags
 */
AwardFilter.prototype['tags'] = undefined;

/**
 * @member {Array.<String>} ids
 */
AwardFilter.prototype['ids'] = undefined;

/**
 * @member {module:model/NumberRange} statusCode
 */
AwardFilter.prototype['statusCode'] = undefined;

/**
 * @member {Array.<module:model/QuerySortBy>} sortBy
 */
AwardFilter.prototype['sortBy'] = undefined;

/**
 * @member {Number} skip
 */
AwardFilter.prototype['skip'] = undefined;

/**
 * @member {Number} limit
 */
AwardFilter.prototype['limit'] = undefined;

/**
 * @member {Array.<String>} constraints
 */
AwardFilter.prototype['constraints'] = undefined;

/**
 * Achievement, Contest or Competition
 * @member {Array.<String>} entityIds
 */
AwardFilter.prototype['entityIds'] = undefined;






export default AwardFilter;

