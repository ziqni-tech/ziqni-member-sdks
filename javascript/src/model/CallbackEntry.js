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

/**
 * The CallbackEntry model module.
 * @module model/CallbackEntry
 * @version 1.0.19
 */
class CallbackEntry {
    /**
     * Constructs a new <code>CallbackEntry</code>.
     * @alias module:model/CallbackEntry
     * @param name {String} 
     * @param constraints {Array.<String>} 
     */
    constructor(name, constraints) { 
        
        CallbackEntry.initialize(this, name, constraints);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, name, constraints) { 
        obj['name'] = name;
        obj['constraints'] = constraints;
    }

    /**
     * Constructs a <code>CallbackEntry</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CallbackEntry} obj Optional instance to populate.
     * @return {module:model/CallbackEntry} The populated <code>CallbackEntry</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CallbackEntry();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} name
 */
CallbackEntry.prototype['name'] = undefined;

/**
 * @member {Array.<String>} constraints
 */
CallbackEntry.prototype['constraints'] = undefined;






export default CallbackEntry;

