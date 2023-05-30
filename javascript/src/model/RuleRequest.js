/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.9
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The RuleRequest model module.
 * @module model/RuleRequest
 * @version 1.0.9
 */
class RuleRequest {
    /**
     * Constructs a new <code>RuleRequest</code>.
     * @alias module:model/RuleRequest
     * @param entityIds {Array.<String>} 
     */
    constructor(entityIds) { 
        
        RuleRequest.initialize(this, entityIds);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, entityIds) { 
        obj['entityIds'] = entityIds;
    }

    /**
     * Constructs a <code>RuleRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RuleRequest} obj Optional instance to populate.
     * @return {module:model/RuleRequest} The populated <code>RuleRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RuleRequest();

            if (data.hasOwnProperty('entityIds')) {
                obj['entityIds'] = ApiClient.convertToType(data['entityIds'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<String>} entityIds
 */
RuleRequest.prototype['entityIds'] = undefined;






export default RuleRequest;

