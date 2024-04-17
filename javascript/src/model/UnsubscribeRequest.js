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

/**
 * The UnsubscribeRequest model module.
 * @module model/UnsubscribeRequest
 * @version 1.0.14
 */
class UnsubscribeRequest {
    /**
     * Constructs a new <code>UnsubscribeRequest</code>.
     * @alias module:model/UnsubscribeRequest
     * @param sunscriptionId {String} 
     */
    constructor(sunscriptionId) { 
        
        UnsubscribeRequest.initialize(this, sunscriptionId);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, sunscriptionId) { 
        obj['sunscriptionId'] = sunscriptionId;
    }

    /**
     * Constructs a <code>UnsubscribeRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UnsubscribeRequest} obj Optional instance to populate.
     * @return {module:model/UnsubscribeRequest} The populated <code>UnsubscribeRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UnsubscribeRequest();

            if (data.hasOwnProperty('sunscriptionId')) {
                obj['sunscriptionId'] = ApiClient.convertToType(data['sunscriptionId'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} sunscriptionId
 */
UnsubscribeRequest.prototype['sunscriptionId'] = undefined;






export default UnsubscribeRequest;

