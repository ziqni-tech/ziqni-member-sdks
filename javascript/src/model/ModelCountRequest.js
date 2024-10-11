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
 * The ModelCountRequest model module.
 * @module model/ModelCountRequest
 * @version 1.0.17
 */
class ModelCountRequest {
    /**
     * Constructs a new <code>ModelCountRequest</code>.
     * 
     * @alias module:model/ModelCountRequest
     */
    constructor() { 
        
        ModelCountRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ModelCountRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ModelCountRequest} obj Optional instance to populate.
     * @return {module:model/ModelCountRequest} The populated <code>ModelCountRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ModelCountRequest();

            if (data.hasOwnProperty('entityId')) {
                obj['entityId'] = ApiClient.convertToType(data['entityId'], 'String');
            }
            if (data.hasOwnProperty('entityType')) {
                obj['entityType'] = ApiClient.convertToType(data['entityType'], 'String');
            }
            if (data.hasOwnProperty('isReferenceId')) {
                obj['isReferenceId'] = ApiClient.convertToType(data['isReferenceId'], 'Boolean');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ModelCountRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ModelCountRequest</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['entityId'] && !(typeof data['entityId'] === 'string' || data['entityId'] instanceof String)) {
            throw new Error("Expected the field `entityId` to be a primitive type in the JSON string but got " + data['entityId']);
        }
        // ensure the json data is a string
        if (data['entityType'] && !(typeof data['entityType'] === 'string' || data['entityType'] instanceof String)) {
            throw new Error("Expected the field `entityType` to be a primitive type in the JSON string but got " + data['entityType']);
        }

        return true;
    }


}



/**
 * The entity id, like the meber reference id or ziqni member id or even a product id
 * @member {String} entityId
 */
ModelCountRequest.prototype['entityId'] = undefined;

/**
 * Product etc
 * @member {String} entityType
 */
ModelCountRequest.prototype['entityType'] = undefined;

/**
 * If true it is the objects reference ID otherwise it is the ZIQNI id
 * @member {Boolean} isReferenceId
 */
ModelCountRequest.prototype['isReferenceId'] = undefined;






export default ModelCountRequest;

