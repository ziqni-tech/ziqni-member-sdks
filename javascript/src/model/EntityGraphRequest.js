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
import EntityGraphTraversal from './EntityGraphTraversal';
import EntityType from './EntityType';

/**
 * The EntityGraphRequest model module.
 * @module model/EntityGraphRequest
 * @version 1.0.17
 */
class EntityGraphRequest {
    /**
     * Constructs a new <code>EntityGraphRequest</code>.
     * 
     * @alias module:model/EntityGraphRequest
     * @param ids {Array.<String>} The identifier of the node to create a connected graph for
     * @param entityType {module:model/EntityType} 
     */
    constructor(ids, entityType) { 
        
        EntityGraphRequest.initialize(this, ids, entityType);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, ids, entityType) { 
        obj['ids'] = ids;
        obj['entityType'] = entityType;
    }

    /**
     * Constructs a <code>EntityGraphRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityGraphRequest} obj Optional instance to populate.
     * @return {module:model/EntityGraphRequest} The populated <code>EntityGraphRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityGraphRequest();

            if (data.hasOwnProperty('ids')) {
                obj['ids'] = ApiClient.convertToType(data['ids'], ['String']);
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('traversal')) {
                obj['traversal'] = EntityGraphTraversal.constructFromObject(data['traversal']);
            }
            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('includes')) {
                obj['includes'] = ApiClient.convertToType(data['includes'], ['String']);
            }
            if (data.hasOwnProperty('entityType')) {
                obj['entityType'] = EntityType.constructFromObject(data['entityType']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>EntityGraphRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>EntityGraphRequest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of EntityGraphRequest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is an array
        if (!Array.isArray(data['ids'])) {
            throw new Error("Expected the field `ids` to be an array in the JSON data but got " + data['ids']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['constraints'])) {
            throw new Error("Expected the field `constraints` to be an array in the JSON data but got " + data['constraints']);
        }
        // ensure the json data is a string
        if (data['languageKey'] && !(typeof data['languageKey'] === 'string' || data['languageKey'] instanceof String)) {
            throw new Error("Expected the field `languageKey` to be a primitive type in the JSON string but got " + data['languageKey']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['includes'])) {
            throw new Error("Expected the field `includes` to be an array in the JSON data but got " + data['includes']);
        }

        return true;
    }


}

EntityGraphRequest.RequiredProperties = ["ids", "entityType"];

/**
 * The identifier of the node to create a connected graph for
 * @member {Array.<String>} ids
 */
EntityGraphRequest.prototype['ids'] = undefined;

/**
 * Specify the constraints that need to be applied to the filter.
 * @member {Array.<String>} constraints
 */
EntityGraphRequest.prototype['constraints'] = undefined;

/**
 * @member {module:model/EntityGraphTraversal} traversal
 */
EntityGraphRequest.prototype['traversal'] = undefined;

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
EntityGraphRequest.prototype['languageKey'] = undefined;

/**
 * What objects to include from the entity in this response. For achievement the following can be included; description, memberTagsFilter, scheduling, and termsAndConditions
 * @member {Array.<String>} includes
 */
EntityGraphRequest.prototype['includes'] = undefined;

/**
 * @member {module:model/EntityType} entityType
 */
EntityGraphRequest.prototype['entityType'] = undefined;






export default EntityGraphRequest;

