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

/**
 * The MemberRequest model module.
 * @module model/MemberRequest
 * @version 1.0.17
 */
class MemberRequest {
    /**
     * Constructs a new <code>MemberRequest</code>.
     * 
     * @alias module:model/MemberRequest
     * @param includeCustomFields {Array.<String>} Only include custom fields that have these keys
     */
    constructor(includeCustomFields) { 
        
        MemberRequest.initialize(this, includeCustomFields);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, includeCustomFields) { 
        obj['includeCustomFields'] = includeCustomFields;
    }

    /**
     * Constructs a <code>MemberRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MemberRequest} obj Optional instance to populate.
     * @return {module:model/MemberRequest} The populated <code>MemberRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MemberRequest();

            if (data.hasOwnProperty('includeFields')) {
                obj['includeFields'] = ApiClient.convertToType(data['includeFields'], ['String']);
            }
            if (data.hasOwnProperty('includeCustomFields')) {
                obj['includeCustomFields'] = ApiClient.convertToType(data['includeCustomFields'], ['String']);
            }
            if (data.hasOwnProperty('includeMetaDataFields')) {
                obj['includeMetaDataFields'] = ApiClient.convertToType(data['includeMetaDataFields'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>MemberRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>MemberRequest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of MemberRequest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is an array
        if (!Array.isArray(data['includeFields'])) {
            throw new Error("Expected the field `includeFields` to be an array in the JSON data but got " + data['includeFields']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['includeCustomFields'])) {
            throw new Error("Expected the field `includeCustomFields` to be an array in the JSON data but got " + data['includeCustomFields']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['includeMetaDataFields'])) {
            throw new Error("Expected the field `includeMetaDataFields` to be an array in the JSON data but got " + data['includeMetaDataFields']);
        }

        return true;
    }


}

MemberRequest.RequiredProperties = ["includeCustomFields"];

/**
 * ALL, or else the name of the top level fields you want to include
 * @member {Array.<String>} includeFields
 */
MemberRequest.prototype['includeFields'] = undefined;

/**
 * Only include custom fields that have these keys
 * @member {Array.<String>} includeCustomFields
 */
MemberRequest.prototype['includeCustomFields'] = undefined;

/**
 * Only include metadata that have these keys
 * @member {Array.<String>} includeMetaDataFields
 */
MemberRequest.prototype['includeMetaDataFields'] = undefined;






export default MemberRequest;

