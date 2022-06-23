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
/**
 * The RewardRequest model module.
 * @module model/RewardRequest
 * @version 0.0.1
 */

class RewardRequest {
  /**
   * Constructs a new <code>RewardRequest</code>.
   * @alias module:model/RewardRequest
   * @param entityId {String} 
   */
  constructor(entityId) {
    RewardRequest.initialize(this, entityId);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj, entityId) {
    obj['entityId'] = entityId;
  }
  /**
   * Constructs a <code>RewardRequest</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/RewardRequest} obj Optional instance to populate.
   * @return {module:model/RewardRequest} The populated <code>RewardRequest</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new RewardRequest();

      if (data.hasOwnProperty('entityId')) {
        obj['entityId'] = ApiClient.convertToType(data['entityId'], 'String');
      }
    }

    return obj;
  }

}
/**
 * @member {String} entityId
 */


RewardRequest.prototype['entityId'] = undefined;
export default RewardRequest;