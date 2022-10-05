/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The OptInRequestStatus model module.
 * @module model/OptInRequestStatus
 * @version 1.0.0
 */
class OptInRequestStatus {
    /**
     * Constructs a new <code>OptInRequestStatus</code>.
     * @alias module:model/OptInRequestStatus
     * @param entityType {String} 
     * @param statusCode {Number} Processing = 0, NotEntered = 5, Entering = 10, Entrant = 15, Preparing = 20, Running = 25, Completing = 30, Completed = 35
     * @param status {String} Processing = 0, NotEntered = 5, Entering = 10, Entrant = 15, Preparing = 20, Running = 25, Completing = 30, Completed = 35
     */
    constructor(entityType, statusCode, status) { 
        
        OptInRequestStatus.initialize(this, entityType, statusCode, status);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, entityType, statusCode, status) { 
        obj['entityType'] = entityType;
        obj['statusCode'] = statusCode;
        obj['status'] = status;
    }

    /**
     * Constructs a <code>OptInRequestStatus</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/OptInRequestStatus} obj Optional instance to populate.
     * @return {module:model/OptInRequestStatus} The populated <code>OptInRequestStatus</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new OptInRequestStatus();

            if (data.hasOwnProperty('entityType')) {
                obj['entityType'] = ApiClient.convertToType(data['entityType'], 'String');
            }
            if (data.hasOwnProperty('entityId')) {
                obj['entityId'] = ApiClient.convertToType(data['entityId'], 'String');
            }
            if (data.hasOwnProperty('statusCode')) {
                obj['statusCode'] = ApiClient.convertToType(data['statusCode'], 'Number');
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = ApiClient.convertToType(data['status'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} entityType
 */
OptInRequestStatus.prototype['entityType'] = undefined;

/**
 * @member {String} entityId
 */
OptInRequestStatus.prototype['entityId'] = undefined;

/**
 * Processing = 0, NotEntered = 5, Entering = 10, Entrant = 15, Preparing = 20, Running = 25, Completing = 30, Completed = 35
 * @member {Number} statusCode
 */
OptInRequestStatus.prototype['statusCode'] = undefined;

/**
 * Processing = 0, NotEntered = 5, Entering = 10, Entrant = 15, Preparing = 20, Running = 25, Completing = 30, Completed = 35
 * @member {String} status
 */
OptInRequestStatus.prototype['status'] = undefined;






export default OptInRequestStatus;

