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
import OptinStatus from './OptinStatus';

/**
 * The EntityGraphNode model module.
 * @module model/EntityGraphNode
 * @version 1.0.19
 */
class EntityGraphNode {
    /**
     * Constructs a new <code>EntityGraphNode</code>.
     * Mission is a specialised view of connected achievements. The first achievement is the container, every dependant achievement is a chained dependency
     * @alias module:model/EntityGraphNode
     * @param optInStatus {module:model/OptinStatus} 
     * @param entityId {String} 
     */
    constructor(optInStatus, entityId) { 
        
        EntityGraphNode.initialize(this, optInStatus, entityId);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, optInStatus, entityId) { 
        obj['optInStatus'] = optInStatus;
        obj['entityId'] = entityId;
    }

    /**
     * Constructs a <code>EntityGraphNode</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityGraphNode} obj Optional instance to populate.
     * @return {module:model/EntityGraphNode} The populated <code>EntityGraphNode</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityGraphNode();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('optInStatus')) {
                obj['optInStatus'] = OptinStatus.constructFromObject(data['optInStatus']);
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('entityType')) {
                obj['entityType'] = ApiClient.convertToType(data['entityType'], 'String');
            }
            if (data.hasOwnProperty('entityId')) {
                obj['entityId'] = ApiClient.convertToType(data['entityId'], 'String');
            }
            if (data.hasOwnProperty('entityStatusCode')) {
                obj['entityStatusCode'] = ApiClient.convertToType(data['entityStatusCode'], 'Number');
            }
            if (data.hasOwnProperty('entityStatus')) {
                obj['entityStatus'] = ApiClient.convertToType(data['entityStatus'], 'String');
            }
            if (data.hasOwnProperty('includes')) {
                obj['includes'] = ApiClient.convertToType(data['includes'], {'String': Object});
            }
        }
        return obj;
    }


}

/**
 * @member {String} name
 */
EntityGraphNode.prototype['name'] = undefined;

/**
 * @member {module:model/OptinStatus} optInStatus
 */
EntityGraphNode.prototype['optInStatus'] = undefined;

/**
 * isCompleted, etc
 * @member {Array.<String>} constraints
 */
EntityGraphNode.prototype['constraints'] = undefined;

/**
 * @member {String} entityType
 */
EntityGraphNode.prototype['entityType'] = undefined;

/**
 * @member {String} entityId
 */
EntityGraphNode.prototype['entityId'] = undefined;

/**
 * @member {Number} entityStatusCode
 */
EntityGraphNode.prototype['entityStatusCode'] = undefined;

/**
 * @member {String} entityStatus
 */
EntityGraphNode.prototype['entityStatus'] = undefined;

/**
 * @member {Object.<String, Object>} includes
 */
EntityGraphNode.prototype['includes'] = undefined;






export default EntityGraphNode;

