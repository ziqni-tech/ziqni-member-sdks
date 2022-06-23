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
import EventRefType from './EventRefType';
import MessageStatus from './MessageStatus';
import MessageType from './MessageType';
import Translation from './Translation';
/**
 * The MessageAllOf model module.
 * @module model/MessageAllOf
 * @version 0.0.1
 */

class MessageAllOf {
  /**
   * Constructs a new <code>MessageAllOf</code>.
   * @alias module:model/MessageAllOf
   */
  constructor() {
    MessageAllOf.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  static initialize(obj) {}
  /**
   * Constructs a <code>MessageAllOf</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/MessageAllOf} obj Optional instance to populate.
   * @return {module:model/MessageAllOf} The populated <code>MessageAllOf</code> instance.
   */


  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new MessageAllOf();

      if (data.hasOwnProperty('eventRefType')) {
        obj['eventRefType'] = EventRefType.constructFromObject(data['eventRefType']);
      }

      if (data.hasOwnProperty('eventRefId')) {
        obj['eventRefId'] = ApiClient.convertToType(data['eventRefId'], 'String');
      }

      if (data.hasOwnProperty('messageType')) {
        obj['messageType'] = MessageType.constructFromObject(data['messageType']);
      }

      if (data.hasOwnProperty('subject')) {
        obj['subject'] = ApiClient.convertToType(data['subject'], 'String');
      }

      if (data.hasOwnProperty('body')) {
        obj['body'] = ApiClient.convertToType(data['body'], 'String');
      }

      if (data.hasOwnProperty('prize')) {
        obj['prize'] = ApiClient.convertToType(data['prize'], 'String');
      }

      if (data.hasOwnProperty('status')) {
        obj['status'] = MessageStatus.constructFromObject(data['status']);
      }

      if (data.hasOwnProperty('expiry')) {
        obj['expiry'] = ApiClient.convertToType(data['expiry'], 'Date');
      }

      if (data.hasOwnProperty('memberId')) {
        obj['memberId'] = ApiClient.convertToType(data['memberId'], ['String']);
      }

      if (data.hasOwnProperty('translations')) {
        obj['translations'] = ApiClient.convertToType(data['translations'], [Translation]);
      }

      if (data.hasOwnProperty('translatableFields')) {
        obj['translatableFields'] = ApiClient.convertToType(data['translatableFields'], ['String']);
      }
    }

    return obj;
  }

}
/**
 * @member {module:model/EventRefType} eventRefType
 */


MessageAllOf.prototype['eventRefType'] = undefined;
/**
 * The reference ID of the event object
 * @member {String} eventRefId
 */

MessageAllOf.prototype['eventRefId'] = undefined;
/**
 * @member {module:model/MessageType} messageType
 */

MessageAllOf.prototype['messageType'] = undefined;
/**
 * The title of the message
 * @member {String} subject
 */

MessageAllOf.prototype['subject'] = undefined;
/**
 * The context of the message
 * @member {String} body
 */

MessageAllOf.prototype['body'] = undefined;
/**
 * Unique system identifier of an Award
 * @member {String} prize
 */

MessageAllOf.prototype['prize'] = undefined;
/**
 * @member {module:model/MessageStatus} status
 */

MessageAllOf.prototype['status'] = undefined;
/**
 * The time that the message will disappear after. ISO8601 timestamp
 * @member {Date} expiry
 */

MessageAllOf.prototype['expiry'] = undefined;
/**
 * The reference ID of the event object
 * @member {Array.<String>} memberId
 */

MessageAllOf.prototype['memberId'] = undefined;
/**
 * @member {Array.<module:model/Translation>} translations
 */

MessageAllOf.prototype['translations'] = undefined;
/**
 * Message translatable fields
 * @member {Array.<String>} translatableFields
 */

MessageAllOf.prototype['translatableFields'] = undefined;
export default MessageAllOf;