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
import MessageFilter from './MessageFilter';

/**
 * The MessageRequest model module.
 * @module model/MessageRequest
 * @version 1.0.17
 */
class MessageRequest {
    /**
     * Constructs a new <code>MessageRequest</code>.
     * 
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
    static initialize(obj) { 
    }

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

            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('messageFilter')) {
                obj['messageFilter'] = MessageFilter.constructFromObject(data['messageFilter']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>MessageRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>MessageRequest</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['languageKey'] && !(typeof data['languageKey'] === 'string' || data['languageKey'] instanceof String)) {
            throw new Error("Expected the field `languageKey` to be a primitive type in the JSON string but got " + data['languageKey']);
        }
        // validate the optional field `messageFilter`
        if (data['messageFilter']) { // data not null
          MessageFilter.validateJSON(data['messageFilter']);
        }

        return true;
    }


}



/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
MessageRequest.prototype['languageKey'] = undefined;

/**
 * @member {module:model/MessageFilter} messageFilter
 */
MessageRequest.prototype['messageFilter'] = undefined;






export default MessageRequest;

