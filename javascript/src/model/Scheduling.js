/**
 * Ziqni Gamification Cloud API
 * This is the gamification cloud for Ziqni
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
import ScheduleType from './ScheduleType';

/**
 * The Scheduling model module.
 * @module model/Scheduling
 * @version 0.0.1
 */
class Scheduling {
    /**
     * Constructs a new <code>Scheduling</code>.
     * @alias module:model/Scheduling
     * @param scheduleType {module:model/ScheduleType} 
     * @param scheduleOccurrencesLimit {Number} A value indicating how many times it will be issued
     * @param every {Array.<Number>} 
     * @param startDate {Date} The start date and time of a schedule. ISO8601 timestamp
     * @param constraints {Array.<String>} Additional constraints
     */
    constructor(scheduleType, scheduleOccurrencesLimit, every, startDate, constraints) { 
        
        Scheduling.initialize(this, scheduleType, scheduleOccurrencesLimit, every, startDate, constraints);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, scheduleType, scheduleOccurrencesLimit, every, startDate, constraints) { 
        obj['scheduleType'] = scheduleType;
        obj['scheduleOccurrencesLimit'] = scheduleOccurrencesLimit;
        obj['every'] = every;
        obj['startDate'] = startDate;
        obj['constraints'] = constraints;
    }

    /**
     * Constructs a <code>Scheduling</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Scheduling} obj Optional instance to populate.
     * @return {module:model/Scheduling} The populated <code>Scheduling</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Scheduling();

            if (data.hasOwnProperty('scheduleType')) {
                obj['scheduleType'] = ScheduleType.constructFromObject(data['scheduleType']);
            }
            if (data.hasOwnProperty('scheduleOccurrencesLimit')) {
                obj['scheduleOccurrencesLimit'] = ApiClient.convertToType(data['scheduleOccurrencesLimit'], 'Number');
            }
            if (data.hasOwnProperty('every')) {
                obj['every'] = ApiClient.convertToType(data['every'], ['Number']);
            }
            if (data.hasOwnProperty('startDate')) {
                obj['startDate'] = ApiClient.convertToType(data['startDate'], 'Date');
            }
            if (data.hasOwnProperty('endDate')) {
                obj['endDate'] = ApiClient.convertToType(data['endDate'], 'Date');
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ScheduleType} scheduleType
 */
Scheduling.prototype['scheduleType'] = undefined;

/**
 * A value indicating how many times it will be issued
 * @member {Number} scheduleOccurrencesLimit
 */
Scheduling.prototype['scheduleOccurrencesLimit'] = undefined;

/**
 * @member {Array.<Number>} every
 */
Scheduling.prototype['every'] = undefined;

/**
 * The start date and time of a schedule. ISO8601 timestamp
 * @member {Date} startDate
 */
Scheduling.prototype['startDate'] = undefined;

/**
 * The end date and time of a schedule. ISO8601 timestamp
 * @member {Date} endDate
 */
Scheduling.prototype['endDate'] = undefined;

/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
Scheduling.prototype['constraints'] = undefined;






export default Scheduling;

