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
 * The OptionalModelFields model module.
 * @module model/OptionalModelFields
 * @version 0.0.1
 */

class OptionalModelFields {
  /**
   * Constructs a new <code>OptionalModelFields</code>.
   * @alias module:model/OptionalModelFields
   */
  constructor() {
    OptionalModelFields.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj) {}
  /**
   * Constructs a <code>OptionalModelFields</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/OptionalModelFields} obj Optional instance to populate.
   * @return {module:model/OptionalModelFields} The populated <code>OptionalModelFields</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new OptionalModelFields();

      if (data.hasOwnProperty('customFields')) {
        obj['customFields'] = ApiClient.convertToType(data['customFields'], {
          'String': Object
        });
      }

      if (data.hasOwnProperty('tags')) {
        obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
      }

      if (data.hasOwnProperty('metadata')) {
        obj['metadata'] = ApiClient.convertToType(data['metadata'], {
          'String': 'String'
        });
      }
    }

    return obj;
  }

}
/**
 * @member {Object.<String, Object>} customFields
 */


OptionalModelFields.prototype['customFields'] = undefined;
/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */

OptionalModelFields.prototype['tags'] = undefined;
/**
 * @member {Object.<String, String>} metadata
 */

OptionalModelFields.prototype['metadata'] = undefined;
export default OptionalModelFields;