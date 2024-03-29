/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.1
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
 * The MissionEntry model module.
 * @module model/MissionEntry
 * @version 1.0.1
 */
class MissionEntry {
    /**
     * Constructs a new <code>MissionEntry</code>.
     * @alias module:model/MissionEntry
     * @param hasNext {Boolean} 
     * @param hasRewards {Boolean} 
     * @param isCompleted {Boolean} 
     * @param optInStatus {module:model/OptinStatus} 
     * @param ordering {Number} 
     */
    constructor(hasNext, hasRewards, isCompleted, optInStatus, ordering) { 
        
        MissionEntry.initialize(this, hasNext, hasRewards, isCompleted, optInStatus, ordering);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, hasNext, hasRewards, isCompleted, optInStatus, ordering) { 
        obj['hasNext'] = hasNext;
        obj['hasRewards'] = hasRewards;
        obj['isCompleted'] = isCompleted;
        obj['optInStatus'] = optInStatus;
        obj['ordering'] = ordering;
    }

    /**
     * Constructs a <code>MissionEntry</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MissionEntry} obj Optional instance to populate.
     * @return {module:model/MissionEntry} The populated <code>MissionEntry</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MissionEntry();

            if (data.hasOwnProperty('achieventId')) {
                obj['achieventId'] = ApiClient.convertToType(data['achieventId'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('hasNext')) {
                obj['hasNext'] = ApiClient.convertToType(data['hasNext'], 'Boolean');
            }
            if (data.hasOwnProperty('antecendantId')) {
                obj['antecendantId'] = ApiClient.convertToType(data['antecendantId'], 'String');
            }
            if (data.hasOwnProperty('decendantId')) {
                obj['decendantId'] = ApiClient.convertToType(data['decendantId'], 'String');
            }
            if (data.hasOwnProperty('hasRewards')) {
                obj['hasRewards'] = ApiClient.convertToType(data['hasRewards'], 'Boolean');
            }
            if (data.hasOwnProperty('isCompleted')) {
                obj['isCompleted'] = ApiClient.convertToType(data['isCompleted'], 'Boolean');
            }
            if (data.hasOwnProperty('optInStatus')) {
                obj['optInStatus'] = OptinStatus.constructFromObject(data['optInStatus']);
            }
            if (data.hasOwnProperty('ordering')) {
                obj['ordering'] = ApiClient.convertToType(data['ordering'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {String} achieventId
 */
MissionEntry.prototype['achieventId'] = undefined;

/**
 * @member {String} name
 */
MissionEntry.prototype['name'] = undefined;

/**
 * @member {Boolean} hasNext
 */
MissionEntry.prototype['hasNext'] = undefined;

/**
 * @member {String} antecendantId
 */
MissionEntry.prototype['antecendantId'] = undefined;

/**
 * @member {String} decendantId
 */
MissionEntry.prototype['decendantId'] = undefined;

/**
 * @member {Boolean} hasRewards
 */
MissionEntry.prototype['hasRewards'] = undefined;

/**
 * @member {Boolean} isCompleted
 */
MissionEntry.prototype['isCompleted'] = undefined;

/**
 * @member {module:model/OptinStatus} optInStatus
 */
MissionEntry.prototype['optInStatus'] = undefined;

/**
 * @member {Number} ordering
 */
MissionEntry.prototype['ordering'] = undefined;






export default MissionEntry;

