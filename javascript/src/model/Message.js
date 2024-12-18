/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.19
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import EventRefType from './EventRefType';
import MessageAllOf from './MessageAllOf';
import MessageStatus from './MessageStatus';
import MessageType from './MessageType';
import ModelDefault from './ModelDefault';
import OptionalModelFields from './OptionalModelFields';

/**
 * The Message model module.
 * @module model/Message
 * @version 1.0.19
 */
class Message {
    /**
     * Constructs a new <code>Message</code>.
     * @alias module:model/Message
     * @implements module:model/MessageAllOf
     * @implements module:model/ModelDefault
     * @implements module:model/OptionalModelFields
     * @param id {String} Ziqni id of the model
     */
    constructor(id) { 
        MessageAllOf.initialize(this, id);ModelDefault.initialize(this, id);OptionalModelFields.initialize(this);
        Message.initialize(this, id);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id) { 
        obj['id'] = id;
    }

    /**
     * Constructs a <code>Message</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Message} obj Optional instance to populate.
     * @return {module:model/Message} The populated <code>Message</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Message();
            MessageAllOf.constructFromObject(data, obj);
            ModelDefault.constructFromObject(data, obj);
            OptionalModelFields.constructFromObject(data, obj);

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
            if (data.hasOwnProperty('status')) {
                obj['status'] = MessageStatus.constructFromObject(data['status']);
            }
            if (data.hasOwnProperty('expiry')) {
                obj['expiry'] = ApiClient.convertToType(data['expiry'], 'Date');
            }
            if (data.hasOwnProperty('memberIds')) {
                obj['memberIds'] = ApiClient.convertToType(data['memberIds'], ['String']);
            }
            if (data.hasOwnProperty('memberTags')) {
                obj['memberTags'] = ApiClient.convertToType(data['memberTags'], ['String']);
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('spaceName')) {
                obj['spaceName'] = ApiClient.convertToType(data['spaceName'], 'String');
            }
            if (data.hasOwnProperty('created')) {
                obj['created'] = ApiClient.convertToType(data['created'], 'Date');
            }
            if (data.hasOwnProperty('customFields')) {
                obj['customFields'] = ApiClient.convertToType(data['customFields'], {'String': Object});
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('metadata')) {
                obj['metadata'] = ApiClient.convertToType(data['metadata'], {'String': 'String'});
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/EventRefType} eventRefType
 */
Message.prototype['eventRefType'] = undefined;

/**
 * The reference ID of the event object
 * @member {String} eventRefId
 */
Message.prototype['eventRefId'] = undefined;

/**
 * @member {module:model/MessageType} messageType
 */
Message.prototype['messageType'] = undefined;

/**
 * The title of the message
 * @member {String} subject
 */
Message.prototype['subject'] = undefined;

/**
 * The context of the message
 * @member {String} body
 */
Message.prototype['body'] = undefined;

/**
 * @member {module:model/MessageStatus} status
 */
Message.prototype['status'] = undefined;

/**
 * The time that the message will disappear after. ISO8601 timestamp
 * @member {Date} expiry
 */
Message.prototype['expiry'] = undefined;

/**
 * The reference ID of the event object
 * @member {Array.<String>} memberIds
 */
Message.prototype['memberIds'] = undefined;

/**
 * @member {Array.<String>} memberTags
 */
Message.prototype['memberTags'] = undefined;

/**
 * Ziqni id of the model
 * @member {String} id
 */
Message.prototype['id'] = undefined;

/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
Message.prototype['spaceName'] = undefined;

/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
Message.prototype['created'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
Message.prototype['customFields'] = undefined;

/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
Message.prototype['tags'] = undefined;

/**
 * @member {Object.<String, String>} metadata
 */
Message.prototype['metadata'] = undefined;


// Implement MessageAllOf interface:
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
 * @member {Array.<String>} memberIds
 */
MessageAllOf.prototype['memberIds'] = undefined;
/**
 * @member {Array.<String>} memberTags
 */
MessageAllOf.prototype['memberTags'] = undefined;
/**
 * @member {String} id
 */
MessageAllOf.prototype['id'] = undefined;
// Implement ModelDefault interface:
/**
 * Ziqni id of the model
 * @member {String} id
 */
ModelDefault.prototype['id'] = undefined;
/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
ModelDefault.prototype['spaceName'] = undefined;
/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
ModelDefault.prototype['created'] = undefined;
// Implement OptionalModelFields interface:
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




export default Message;

