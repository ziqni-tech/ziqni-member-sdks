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
import ContestStatus from './ContestStatus';
import DependantOn from './DependantOn';
import OptinStatus from './OptinStatus';
import RoundType from './RoundType';
import Strategy from './Strategy';

/**
 * The ContestAllOf model module.
 * @module model/ContestAllOf
 * @version 1.0.19
 */
class ContestAllOf {
    /**
     * Constructs a new <code>ContestAllOf</code>.
     * @alias module:model/ContestAllOf
     */
    constructor() { 
        
        ContestAllOf.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ContestAllOf</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ContestAllOf} obj Optional instance to populate.
     * @return {module:model/ContestAllOf} The populated <code>ContestAllOf</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ContestAllOf();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('termsAndConditions')) {
                obj['termsAndConditions'] = ApiClient.convertToType(data['termsAndConditions'], 'String');
            }
            if (data.hasOwnProperty('competitionId')) {
                obj['competitionId'] = ApiClient.convertToType(data['competitionId'], 'String');
            }
            if (data.hasOwnProperty('round')) {
                obj['round'] = ApiClient.convertToType(data['round'], 'Number');
            }
            if (data.hasOwnProperty('roundType')) {
                obj['roundType'] = RoundType.constructFromObject(data['roundType']);
            }
            if (data.hasOwnProperty('groupStage')) {
                obj['groupStage'] = ApiClient.convertToType(data['groupStage'], 'Number');
            }
            if (data.hasOwnProperty('entrantsFromContest')) {
                obj['entrantsFromContest'] = ApiClient.convertToType(data['entrantsFromContest'], ['String']);
            }
            if (data.hasOwnProperty('groupStageLabel')) {
                obj['groupStageLabel'] = ApiClient.convertToType(data['groupStageLabel'], 'String');
            }
            if (data.hasOwnProperty('optInStatus')) {
                obj['optInStatus'] = OptinStatus.constructFromObject(data['optInStatus']);
            }
            if (data.hasOwnProperty('maxNumberOfEntrants')) {
                obj['maxNumberOfEntrants'] = ApiClient.convertToType(data['maxNumberOfEntrants'], 'Number');
            }
            if (data.hasOwnProperty('minNumberOfEntrants')) {
                obj['minNumberOfEntrants'] = ApiClient.convertToType(data['minNumberOfEntrants'], 'Number');
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
            if (data.hasOwnProperty('strategies')) {
                obj['strategies'] = Strategy.constructFromObject(data['strategies']);
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = ContestStatus.constructFromObject(data['status']);
            }
            if (data.hasOwnProperty('statusCode')) {
                obj['statusCode'] = ApiClient.convertToType(data['statusCode'], 'Number');
            }
            if (data.hasOwnProperty('memberTagsFilter')) {
                obj['memberTagsFilter'] = DependantOn.constructFromObject(data['memberTagsFilter']);
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('bannerLink')) {
                obj['bannerLink'] = ApiClient.convertToType(data['bannerLink'], 'String');
            }
            if (data.hasOwnProperty('bannerHighResolutionLink')) {
                obj['bannerHighResolutionLink'] = ApiClient.convertToType(data['bannerHighResolutionLink'], 'String');
            }
            if (data.hasOwnProperty('bannerLowResolutionLink')) {
                obj['bannerLowResolutionLink'] = ApiClient.convertToType(data['bannerLowResolutionLink'], 'String');
            }
            if (data.hasOwnProperty('iconLink')) {
                obj['iconLink'] = ApiClient.convertToType(data['iconLink'], 'String');
            }
            if (data.hasOwnProperty('entrantsCount')) {
                obj['entrantsCount'] = ApiClient.convertToType(data['entrantsCount'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {String} name
 */
ContestAllOf.prototype['name'] = undefined;

/**
 * @member {String} description
 */
ContestAllOf.prototype['description'] = undefined;

/**
 * @member {String} termsAndConditions
 */
ContestAllOf.prototype['termsAndConditions'] = undefined;

/**
 * A unique identifier of a Competition
 * @member {String} competitionId
 */
ContestAllOf.prototype['competitionId'] = undefined;

/**
 * To what round does the contest belong
 * @member {Number} round
 */
ContestAllOf.prototype['round'] = undefined;

/**
 * @member {module:model/RoundType} roundType
 */
ContestAllOf.prototype['roundType'] = undefined;

/**
 * Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2
 * @member {Number} groupStage
 */
ContestAllOf.prototype['groupStage'] = undefined;

/**
 * A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional.
 * @member {Array.<String>} entrantsFromContest
 */
ContestAllOf.prototype['entrantsFromContest'] = undefined;

/**
 * The name of the group stages
 * @member {String} groupStageLabel
 */
ContestAllOf.prototype['groupStageLabel'] = undefined;

/**
 * @member {module:model/OptinStatus} optInStatus
 */
ContestAllOf.prototype['optInStatus'] = undefined;

/**
 * Maximum number of entrants for the contest
 * @member {Number} maxNumberOfEntrants
 */
ContestAllOf.prototype['maxNumberOfEntrants'] = undefined;

/**
 * Minimum number of entrants for the contest
 * @member {Number} minNumberOfEntrants
 */
ContestAllOf.prototype['minNumberOfEntrants'] = undefined;

/**
 * ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone
 * @member {Date} scheduledStartDate
 */
ContestAllOf.prototype['scheduledStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone
 * @member {Date} scheduledEndDate
 */
ContestAllOf.prototype['scheduledEndDate'] = undefined;

/**
 * ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone
 * @member {Date} actualStartDate
 */
ContestAllOf.prototype['actualStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone
 * @member {Date} actualEndDate
 */
ContestAllOf.prototype['actualEndDate'] = undefined;

/**
 * @member {module:model/Strategy} strategies
 */
ContestAllOf.prototype['strategies'] = undefined;

/**
 * @member {module:model/ContestStatus} status
 */
ContestAllOf.prototype['status'] = undefined;

/**
 * The code of the contest
 * @member {Number} statusCode
 */
ContestAllOf.prototype['statusCode'] = undefined;

/**
 * @member {module:model/DependantOn} memberTagsFilter
 */
ContestAllOf.prototype['memberTagsFilter'] = undefined;

/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
ContestAllOf.prototype['constraints'] = undefined;

/**
 * Link to the banner
 * @member {String} bannerLink
 */
ContestAllOf.prototype['bannerLink'] = undefined;

/**
 * Link to the bannerHighResolution
 * @member {String} bannerHighResolutionLink
 */
ContestAllOf.prototype['bannerHighResolutionLink'] = undefined;

/**
 * Link to the bannerLowResolution
 * @member {String} bannerLowResolutionLink
 */
ContestAllOf.prototype['bannerLowResolutionLink'] = undefined;

/**
 * Link to the icon
 * @member {String} iconLink
 */
ContestAllOf.prototype['iconLink'] = undefined;

/**
 * The number of entrants participating in a contest
 * @member {Number} entrantsCount
 */
ContestAllOf.prototype['entrantsCount'] = undefined;






export default ContestAllOf;

