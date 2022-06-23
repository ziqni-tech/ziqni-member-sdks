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
import TranslationEntry from './TranslationEntry';
/**
 * The Translation model module.
 * @module model/Translation
 * @version 0.0.1
 */

class Translation {
  /**
   * Constructs a new <code>Translation</code>.
   * @alias module:model/Translation
   */
  constructor() {
    Translation.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj) {}
  /**
   * Constructs a <code>Translation</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Translation} obj Optional instance to populate.
   * @return {module:model/Translation} The populated <code>Translation</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new Translation();

      if (data.hasOwnProperty('id')) {
        obj['id'] = ApiClient.convertToType(data['id'], 'String');
      }

      if (data.hasOwnProperty('accountId')) {
        obj['accountId'] = ApiClient.convertToType(data['accountId'], 'String');
      }

      if (data.hasOwnProperty('entityId')) {
        obj['entityId'] = ApiClient.convertToType(data['entityId'], 'String');
      }

      if (data.hasOwnProperty('entityType')) {
        obj['entityType'] = ApiClient.convertToType(data['entityType'], 'String');
      }

      if (data.hasOwnProperty('version')) {
        obj['version'] = ApiClient.convertToType(data['version'], 'Number');
      }

      if (data.hasOwnProperty('created')) {
        obj['created'] = ApiClient.convertToType(data['created'], 'Date');
      }

      if (data.hasOwnProperty('translations')) {
        obj['translations'] = ApiClient.convertToType(data['translations'], [TranslationEntry]);
      }

      if (data.hasOwnProperty('languageId')) {
        obj['languageId'] = ApiClient.convertToType(data['languageId'], 'String');
      }

      if (data.hasOwnProperty('languageKey')) {
        obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
      }
    }

    return obj;
  }

}
/**
 * @member {String} id
 */


Translation.prototype['id'] = undefined;
/**
 * @member {String} accountId
 */

Translation.prototype['accountId'] = undefined;
/**
 * @member {String} entityId
 */

Translation.prototype['entityId'] = undefined;
/**
 * @member {String} entityType
 */

Translation.prototype['entityType'] = undefined;
/**
 * @member {Number} version
 */

Translation.prototype['version'] = undefined;
/**
 * date-time
 * @member {Date} created
 */

Translation.prototype['created'] = undefined;
/**
 * @member {Array.<module:model/TranslationEntry>} translations
 */

Translation.prototype['translations'] = undefined;
/**
 * @member {String} languageId
 */

Translation.prototype['languageId'] = undefined;
/**
 * @member {String} languageKey
 */

Translation.prototype['languageKey'] = undefined;
export default Translation;