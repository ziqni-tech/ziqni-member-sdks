/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.17
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
import ModelDefault from './ModelDefault';
import OptionalModelFields from './OptionalModelFields';

/**
 * The Message model module.
 * @module model/Message
 * @version 1.0.17
 */
class Message {
    /**
     * Constructs a new <code>Message</code>.
     * 
     * @alias module:model/Message
     * @implements module:model/ModelDefault
     * @implements module:model/OptionalModelFields
     * @param id {String} 
     */
    constructor(id) { 
        ModelDefault.initialize(this, id);OptionalModelFields.initialize(this);
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
            ModelDefault.constructFromObject(data, obj);
            OptionalModelFields.constructFromObject(data, obj);

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
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>Message</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>Message</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of Message.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['spaceName'] && !(typeof data['spaceName'] === 'string' || data['spaceName'] instanceof String)) {
            throw new Error("Expected the field `spaceName` to be a primitive type in the JSON string but got " + data['spaceName']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['tags'])) {
            throw new Error("Expected the field `tags` to be an array in the JSON data but got " + data['tags']);
        }
        // ensure the json data is a string
        if (data['eventRefId'] && !(typeof data['eventRefId'] === 'string' || data['eventRefId'] instanceof String)) {
            throw new Error("Expected the field `eventRefId` to be a primitive type in the JSON string but got " + data['eventRefId']);
        }
        // ensure the json data is a string
        if (data['subject'] && !(typeof data['subject'] === 'string' || data['subject'] instanceof String)) {
            throw new Error("Expected the field `subject` to be a primitive type in the JSON string but got " + data['subject']);
        }
        // ensure the json data is a string
        if (data['body'] && !(typeof data['body'] === 'string' || data['body'] instanceof String)) {
            throw new Error("Expected the field `body` to be a primitive type in the JSON string but got " + data['body']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['memberIds'])) {
            throw new Error("Expected the field `memberIds` to be an array in the JSON data but got " + data['memberIds']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['memberTags'])) {
            throw new Error("Expected the field `memberTags` to be an array in the JSON data but got " + data['memberTags']);
        }

        return true;
    }


}

Message.RequiredProperties = ["id"];

/**
 * 
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
 * 
 * @member {Array.<String>} memberTags
 */
Message.prototype['memberTags'] = undefined;


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

