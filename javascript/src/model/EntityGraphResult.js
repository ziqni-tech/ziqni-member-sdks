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
import EntityGraph from './EntityGraph';
import EntityGraphNode from './EntityGraphNode';

/**
 * The EntityGraphResult model module.
 * @module model/EntityGraphResult
 * @version 1.0.17
 */
class EntityGraphResult {
    /**
     * Constructs a new <code>EntityGraphResult</code>.
     * 
     * @alias module:model/EntityGraphResult
     * @param nodes {Array.<module:model/EntityGraphNode>} 
     */
    constructor(nodes) { 
        
        EntityGraphResult.initialize(this, nodes);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, nodes) { 
        obj['nodes'] = nodes;
    }

    /**
     * Constructs a <code>EntityGraphResult</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityGraphResult} obj Optional instance to populate.
     * @return {module:model/EntityGraphResult} The populated <code>EntityGraphResult</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityGraphResult();

            if (data.hasOwnProperty('nodes')) {
                obj['nodes'] = ApiClient.convertToType(data['nodes'], [EntityGraphNode]);
            }
            if (data.hasOwnProperty('graphs')) {
                obj['graphs'] = ApiClient.convertToType(data['graphs'], [EntityGraph]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>EntityGraphResult</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>EntityGraphResult</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of EntityGraphResult.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        if (data['nodes']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['nodes'])) {
                throw new Error("Expected the field `nodes` to be an array in the JSON data but got " + data['nodes']);
            }
            // validate the optional field `nodes` (array)
            for (const item of data['nodes']) {
                EntityGraphNode.validateJSON(item);
            };
        }
        if (data['graphs']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['graphs'])) {
                throw new Error("Expected the field `graphs` to be an array in the JSON data but got " + data['graphs']);
            }
            // validate the optional field `graphs` (array)
            for (const item of data['graphs']) {
                EntityGraph.validateJSON(item);
            };
        }

        return true;
    }


}

EntityGraphResult.RequiredProperties = ["nodes"];

/**
 * 
 * @member {Array.<module:model/EntityGraphNode>} nodes
 */
EntityGraphResult.prototype['nodes'] = undefined;

/**
 * 
 * @member {Array.<module:model/EntityGraph>} graphs
 */
EntityGraphResult.prototype['graphs'] = undefined;






export default EntityGraphResult;

