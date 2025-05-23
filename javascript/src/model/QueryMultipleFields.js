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
 * The QueryMultipleFields model module.
 * @module model/QueryMultipleFields
 * @version 1.0.19
 */
class QueryMultipleFields {
    /**
     * Constructs a new <code>QueryMultipleFields</code>.
     * @alias module:model/QueryMultipleFields
     */
    constructor() { 
        
        QueryMultipleFields.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>QueryMultipleFields</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/QueryMultipleFields} obj Optional instance to populate.
     * @return {module:model/QueryMultipleFields} The populated <code>QueryMultipleFields</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new QueryMultipleFields();

            if (data.hasOwnProperty('queryFields')) {
                obj['queryFields'] = ApiClient.convertToType(data['queryFields'], ['String']);
            }
            if (data.hasOwnProperty('queryValue')) {
                obj['queryValue'] = ApiClient.convertToType(data['queryValue'], 'String');
            }
        }
        return obj;
    }


}

/**
 * Multiple fields to be included in search for the given value.
 * @member {Array.<String>} queryFields
 */
QueryMultipleFields.prototype['queryFields'] = undefined;

/**
 * The value to search for across given fields.
 * @member {String} queryValue
 */
QueryMultipleFields.prototype['queryValue'] = undefined;






export default QueryMultipleFields;

