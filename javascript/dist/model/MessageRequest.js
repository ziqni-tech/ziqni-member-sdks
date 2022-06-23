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
 * The MessageRequest model module.
 * @module model/MessageRequest
 * @version 0.0.1
 */

class MessageRequest {
  /**
   * Constructs a new <code>MessageRequest</code>.
   * @alias module:model/MessageRequest
   */
  constructor() {
    MessageRequest.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj) {}
  /**
   * Constructs a <code>MessageRequest</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/MessageRequest} obj Optional instance to populate.
   * @return {module:model/MessageRequest} The populated <code>MessageRequest</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new MessageRequest();

      if (data.hasOwnProperty('id')) {
        obj['id'] = ApiClient.convertToType(data['id'], 'String');
      }
    }

    return obj;
  }

}
/**
 * @member {String} id
 */


MessageRequest.prototype['id'] = undefined;
export default MessageRequest;