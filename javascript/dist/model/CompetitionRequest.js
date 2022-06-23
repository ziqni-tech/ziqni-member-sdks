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
import CompetitionFilter from './CompetitionFilter';
/**
 * The CompetitionRequest model module.
 * @module model/CompetitionRequest
 * @version 0.0.1
 */

class CompetitionRequest {
  /**
   * Constructs a new <code>CompetitionRequest</code>.
   * @alias module:model/CompetitionRequest
   */
  constructor() {
    CompetitionRequest.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj) {}
  /**
   * Constructs a <code>CompetitionRequest</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/CompetitionRequest} obj Optional instance to populate.
   * @return {module:model/CompetitionRequest} The populated <code>CompetitionRequest</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new CompetitionRequest();

      if (data.hasOwnProperty('competitionFilter')) {
        obj['competitionFilter'] = CompetitionFilter.constructFromObject(data['competitionFilter']);
      }
    }

    return obj;
  }

}
/**
 * @member {module:model/CompetitionFilter} competitionFilter
 */


CompetitionRequest.prototype['competitionFilter'] = undefined;
export default CompetitionRequest;