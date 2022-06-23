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
import ContestStatus from './ContestStatus';
import QuerySortBy from './QuerySortBy';
import RangeQuery from './RangeQuery';
/**
 * The ContestFilter model module.
 * @module model/ContestFilter
 * @version 0.0.1
 */

class ContestFilter {
  /**
   * Constructs a new <code>ContestFilter</code>.
   * Filter to trim results from list of Contets
   * @alias module:model/ContestFilter
   */
  constructor() {
    ContestFilter.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj) {}
  /**
   * Constructs a <code>ContestFilter</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ContestFilter} obj Optional instance to populate.
   * @return {module:model/ContestFilter} The populated <code>ContestFilter</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new ContestFilter();

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

      if (data.hasOwnProperty('sortBy')) {
        obj['sortBy'] = QuerySortBy.constructFromObject(data['sortBy']);
      }

      if (data.hasOwnProperty('competitionIds')) {
        obj['competitionIds'] = ApiClient.convertToType(data['competitionIds'], ['String']);
      }

      if (data.hasOwnProperty('status')) {
        obj['status'] = ApiClient.convertToType(data['status'], [ContestStatus]);
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
    }

    return obj;
  }

}
/**
 * @member {Array.<String>} productIds
 */


ContestFilter.prototype['productIds'] = undefined;
/**
 * @member {Array.<String>} tags
 */

ContestFilter.prototype['tags'] = undefined;
/**
 * @member {module:model/RangeQuery} startDate
 */

ContestFilter.prototype['startDate'] = undefined;
/**
 * @member {module:model/RangeQuery} endDate
 */

ContestFilter.prototype['endDate'] = undefined;
/**
 * @member {module:model/QuerySortBy} sortBy
 */

ContestFilter.prototype['sortBy'] = undefined;
/**
 * @member {Array.<String>} competitionIds
 */

ContestFilter.prototype['competitionIds'] = undefined;
/**
 * @member {Array.<module:model/ContestStatus>} status
 */

ContestFilter.prototype['status'] = undefined;
/**
 * @member {Number} skip
 */

ContestFilter.prototype['skip'] = undefined;
/**
 * @member {Number} limit
 */

ContestFilter.prototype['limit'] = undefined;
/**
 * Specify the constraints that need to be applied to the filter.
 * @member {Array.<String>} constraints
 */

ContestFilter.prototype['constraints'] = undefined;
export default ContestFilter;