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
import NumberRange from './NumberRange';
import QuerySortBy from './QuerySortBy';

/**
 * The AwardFilter model module.
 * @module model/AwardFilter
 * @version 1.0.16
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
            if (data.hasOwnProperty('lifecycleStatus')) {
                obj['lifecycleStatus'] = ApiClient.convertToType(data['lifecycleStatus'], 'String');
            }
        }
        return obj;
    }


}

/**
 * Filter by specific product identifiers
 * @member {Array.<String>} productIds
 */
AwardFilter.prototype['productIds'] = undefined;

/**
 * Filter only records that have these tags
 * @member {Array.<String>} tags
 */
AwardFilter.prototype['tags'] = undefined;

/**
 * The award identifiers to filter by
 * @member {Array.<String>} ids
 */
AwardFilter.prototype['ids'] = undefined;

/**
 * @member {module:model/NumberRange} statusCode
 */
AwardFilter.prototype['statusCode'] = undefined;

/**
 * Define Sorting requirements by field keys
 * @member {Array.<module:model/QuerySortBy>} sortBy
 */
AwardFilter.prototype['sortBy'] = undefined;

/**
 * Skip the first records, allows for paging
 * @member {Number} skip
 */
AwardFilter.prototype['skip'] = undefined;

/**
 * Only return this many records, allows for paging. default is 20 if not set
 * @member {Number} limit
 */
AwardFilter.prototype['limit'] = undefined;

/**
 * System defined [optional]
 * @member {Array.<String>} constraints
 */
AwardFilter.prototype['constraints'] = undefined;

/**
 * Achievement, Contest or Competition
 * @member {Array.<String>} entityIds
 */
AwardFilter.prototype['entityIds'] = undefined;

/**
 * These states are derived values from the activeFrom and activeUntil values in the Award Upcoming: Refers to events, activities, or items that are scheduled to happen or become available in the future. Active: Describes events, processes, or items that are currently happening or in progress. Archived: Indicates events, documents, or records that are no longer active or current but have been stored or preserved for reference or historical purposes.
 * @member {module:model/AwardFilter.LifecycleStatusEnum} lifecycleStatus
 */
AwardFilter.prototype['lifecycleStatus'] = undefined;





/**
 * Allowed values for the <code>lifecycleStatus</code> property.
 * @enum {String}
 * @readonly
 */
AwardFilter['LifecycleStatusEnum'] = {

    /**
     * value: "Upcoming"
     * @const
     */
    "Upcoming": "Upcoming",

    /**
     * value: "Active"
     * @const
     */
    "Active": "Active",

    /**
     * value: "Archived"
     * @const
     */
    "Archived": "Archived"
};



export default AwardFilter;

