/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.14
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ResponseMeta from './ResponseMeta';

/**
 * The ProxyMessage model module.
 * @module model/ProxyMessage
 * @version 1.0.14
 */
class ProxyMessage {
    /**
     * Constructs a new <code>ProxyMessage</code>.
     * @alias module:model/ProxyMessage
     */
    constructor() { 
        
        ProxyMessage.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ProxyMessage</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ProxyMessage} obj Optional instance to populate.
     * @return {module:model/ProxyMessage} The populated <code>ProxyMessage</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ProxyMessage();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], Object);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseMeta} meta
 */
ProxyMessage.prototype['meta'] = undefined;

/**
 * @member {Object} data
 */
ProxyMessage.prototype['data'] = undefined;






export default ProxyMessage;

