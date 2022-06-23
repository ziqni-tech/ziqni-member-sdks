/**
 * Ziqni Gamification Cloud API
 * This is the gamification cloud for Ziqni
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
import QuerySortBy from './QuerySortBy';
import RangeQuery from './RangeQuery';

/**
 * The AchievementFilter model module.
 * @module model/AchievementFilter
 * @version 0.0.1
 */
class AchievementFilter {
    /**
     * Constructs a new <code>AchievementFilter</code>.
     * @alias module:model/AchievementFilter
     */
    constructor() { 
        
        AchievementFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AchievementFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AchievementFilter} obj Optional instance to populate.
     * @return {module:model/AchievementFilter} The populated <code>AchievementFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AchievementFilter();

            if (data.hasOwnProperty('productIds')) {
                obj['productIds'] = ApiClient.convertToType(data['productIds'], ['String']);
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('startDate')) {
                obj['startDate'] = RangeQuery.constructFromObject(data['startDate']);
            }
            if (data.hasOwnProperty('endDate')) {
                obj['endDate'] = RangeQuery.constructFromObject(data['endDate']);
            }
            if (data.hasOwnProperty('ids')) {
                obj['ids'] = ApiClient.convertToType(data['ids'], ['String']);
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = ApiClient.convertToType(data['status'], ['String']);
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
            if (data.hasOwnProperty('statusCode')) {
                obj['statusCode'] = ApiClient.convertToType(data['statusCode'], ['Number']);
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<String>} productIds
 */
AchievementFilter.prototype['productIds'] = undefined;

/**
 * @member {Array.<String>} tags
 */
AchievementFilter.prototype['tags'] = undefined;

/**
 * @member {module:model/RangeQuery} startDate
 */
AchievementFilter.prototype['startDate'] = undefined;

/**
 * @member {module:model/RangeQuery} endDate
 */
AchievementFilter.prototype['endDate'] = undefined;

/**
 * @member {Array.<String>} ids
 */
AchievementFilter.prototype['ids'] = undefined;

/**
 * Achievement status
 * @member {Array.<String>} status
 */
AchievementFilter.prototype['status'] = undefined;

/**
 * @member {Array.<module:model/QuerySortBy>} sortBy
 */
AchievementFilter.prototype['sortBy'] = undefined;

/**
 * @member {Number} skip
 */
AchievementFilter.prototype['skip'] = undefined;

/**
 * @member {Number} limit
 */
AchievementFilter.prototype['limit'] = undefined;

/**
 * Achievement status code
 * @member {Array.<Number>} statusCode
 */
AchievementFilter.prototype['statusCode'] = undefined;

/**
 * Specify the constraints that need to be applied to the filter.
 * @member {Array.<String>} constraints
 */
AchievementFilter.prototype['constraints'] = undefined;






export default AchievementFilter;

