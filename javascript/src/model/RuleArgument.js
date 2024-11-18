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
 * The RuleArgument model module.
 * @module model/RuleArgument
 * @version 1.0.19
 */
class RuleArgument {
    /**
     * Constructs a new <code>RuleArgument</code>.
     * @alias module:model/RuleArgument
     * @param argument {String} 
     */
    constructor(argument) { 
        
        RuleArgument.initialize(this, argument);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, argument) { 
        obj['argument'] = argument;
    }

    /**
     * Constructs a <code>RuleArgument</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RuleArgument} obj Optional instance to populate.
     * @return {module:model/RuleArgument} The populated <code>RuleArgument</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RuleArgument();

            if (data.hasOwnProperty('argument')) {
                obj['argument'] = ApiClient.convertToType(data['argument'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'String');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('order')) {
                obj['order'] = ApiClient.convertToType(data['order'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {String} argument
 */
RuleArgument.prototype['argument'] = undefined;

/**
 * @member {String} value
 */
RuleArgument.prototype['value'] = undefined;

/**
 * @member {String} type
 */
RuleArgument.prototype['type'] = undefined;

/**
 * @member {Number} order
 */
RuleArgument.prototype['order'] = undefined;






export default RuleArgument;

