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
/**
 * The LeaderboardFilter model module.
 * @module model/LeaderboardFilter
 * @version 0.0.1
 */

class LeaderboardFilter {
  /**
   * Constructs a new <code>LeaderboardFilter</code>.
   * @alias module:model/LeaderboardFilter
   */
  constructor() {
    LeaderboardFilter.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj) {}
  /**
   * Constructs a <code>LeaderboardFilter</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/LeaderboardFilter} obj Optional instance to populate.
   * @return {module:model/LeaderboardFilter} The populated <code>LeaderboardFilter</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new LeaderboardFilter();

      if (data.hasOwnProperty('tags')) {
        obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
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
 * @member {Array.<String>} tags
 */


LeaderboardFilter.prototype['tags'] = undefined;
/**
 * @member {Array.<module:model/QuerySortBy>} sortBy
 */

LeaderboardFilter.prototype['sortBy'] = undefined;
/**
 * @member {Number} skip
 */

LeaderboardFilter.prototype['skip'] = undefined;
/**
 * @member {Number} limit
 */

LeaderboardFilter.prototype['limit'] = undefined;
/**
 * Achievement status code
 * @member {Array.<Number>} statusCode
 */

LeaderboardFilter.prototype['statusCode'] = undefined;
/**
 * Specify the constraints that need to be applied to the filter.
 * @member {Array.<String>} constraints
 */

LeaderboardFilter.prototype['constraints'] = undefined;
export default LeaderboardFilter;