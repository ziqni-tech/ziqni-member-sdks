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
import ContestStatus from './ContestStatus';
import RewardReduced from './RewardReduced';

/**
 * The ContestReduced model module.
 * @module model/ContestReduced
 * @version 1.0.1
 */
class ContestReduced {
    /**
     * Constructs a new <code>ContestReduced</code>.
     * @alias module:model/ContestReduced
     */
    constructor() { 
        
        ContestReduced.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ContestReduced</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ContestReduced} obj Optional instance to populate.
     * @return {module:model/ContestReduced} The populated <code>ContestReduced</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ContestReduced();

            if (data.hasOwnProperty('competitionId')) {
                obj['competitionId'] = ApiClient.convertToType(data['competitionId'], 'String');
            }
            if (data.hasOwnProperty('row')) {
                obj['row'] = ApiClient.convertToType(data['row'], 'Number');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('round')) {
                obj['round'] = ApiClient.convertToType(data['round'], 'Number');
            }
            if (data.hasOwnProperty('groupStage')) {
                obj['groupStage'] = ApiClient.convertToType(data['groupStage'], 'Number');
            }
            if (data.hasOwnProperty('entrantsFromContest')) {
                obj['entrantsFromContest'] = ApiClient.convertToType(data['entrantsFromContest'], ['String']);
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = ContestStatus.constructFromObject(data['status']);
            }
            if (data.hasOwnProperty('statusCode')) {
                obj['statusCode'] = ApiClient.convertToType(data['statusCode'], 'Number');
            }
            if (data.hasOwnProperty('scheduledStartDate')) {
                obj['scheduledStartDate'] = ApiClient.convertToType(data['scheduledStartDate'], 'Date');
            }
            if (data.hasOwnProperty('scheduledEndDate')) {
                obj['scheduledEndDate'] = ApiClient.convertToType(data['scheduledEndDate'], 'Date');
            }
            if (data.hasOwnProperty('actualStartDate')) {
                obj['actualStartDate'] = ApiClient.convertToType(data['actualStartDate'], 'Date');
            }
            if (data.hasOwnProperty('actualEndDate')) {
                obj['actualEndDate'] = ApiClient.convertToType(data['actualEndDate'], 'Date');
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('rewards')) {
                obj['rewards'] = ApiClient.convertToType(data['rewards'], [RewardReduced]);
            }
        }
        return obj;
    }


}

/**
 * A unique identifier of a Competition
 * @member {String} competitionId
 */
ContestReduced.prototype['competitionId'] = undefined;

/**
 * The row number for displaying the Contest in a table
 * @member {Number} row
 */
ContestReduced.prototype['row'] = undefined;

/**
 * A name for the Contest. Can be translated
 * @member {String} name
 */
ContestReduced.prototype['name'] = undefined;

/**
 * To what round does the contest belong
 * @member {Number} round
 */
ContestReduced.prototype['round'] = undefined;

/**
 * Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2
 * @member {Number} groupStage
 */
ContestReduced.prototype['groupStage'] = undefined;

/**
 * A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional.
 * @member {Array.<String>} entrantsFromContest
 */
ContestReduced.prototype['entrantsFromContest'] = undefined;

/**
 * @member {module:model/ContestStatus} status
 */
ContestReduced.prototype['status'] = undefined;

/**
 * The code of the contest
 * @member {Number} statusCode
 */
ContestReduced.prototype['statusCode'] = undefined;

/**
 * ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone
 * @member {Date} scheduledStartDate
 */
ContestReduced.prototype['scheduledStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone
 * @member {Date} scheduledEndDate
 */
ContestReduced.prototype['scheduledEndDate'] = undefined;

/**
 * ISO8601 timestamp for when a Contest started. All records are stored in UTC time zone
 * @member {Date} actualStartDate
 */
ContestReduced.prototype['actualStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Contest ended. All records are stored in UTC time zone
 * @member {Date} actualEndDate
 */
ContestReduced.prototype['actualEndDate'] = undefined;

/**
 * A list of id's used to tag
 * @member {Array.<String>} tags
 */
ContestReduced.prototype['tags'] = undefined;

/**
 * @member {Array.<module:model/RewardReduced>} rewards
 */
ContestReduced.prototype['rewards'] = undefined;






export default ContestReduced;

