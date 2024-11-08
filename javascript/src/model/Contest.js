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
import ContestStatus from './ContestStatus';
import DependantOn from './DependantOn';
import ModelDefault from './ModelDefault';
import OptinStatus from './OptinStatus';
import OptionalModelFields from './OptionalModelFields';
import RoundType from './RoundType';
import Strategy from './Strategy';

/**
 * The Contest model module.
 * @module model/Contest
 * @version 1.0.17
 */
class Contest {
    /**
     * Constructs a new <code>Contest</code>.
     * This is a contest model
     * @alias module:model/Contest
     * @implements module:model/ModelDefault
     * @implements module:model/OptionalModelFields
     * @param id {String} Ziqni id of the model
     */
    constructor(id) { 
        ModelDefault.initialize(this, id);OptionalModelFields.initialize(this);
        Contest.initialize(this, id);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id) { 
        obj['id'] = id;
    }

    /**
     * Constructs a <code>Contest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Contest} obj Optional instance to populate.
     * @return {module:model/Contest} The populated <code>Contest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Contest();
            ModelDefault.constructFromObject(data, obj);
            OptionalModelFields.constructFromObject(data, obj);

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('spaceName')) {
                obj['spaceName'] = ApiClient.convertToType(data['spaceName'], 'String');
            }
            if (data.hasOwnProperty('created')) {
                obj['created'] = ApiClient.convertToType(data['created'], 'Date');
            }
            if (data.hasOwnProperty('customFields')) {
                obj['customFields'] = ApiClient.convertToType(data['customFields'], {'String': Object});
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('metadata')) {
                obj['metadata'] = ApiClient.convertToType(data['metadata'], {'String': 'String'});
            }
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

    /**
     * Validates the JSON data with respect to <code>Contest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>Contest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of Contest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['spaceName'] && !(typeof data['spaceName'] === 'string' || data['spaceName'] instanceof String)) {
            throw new Error("Expected the field `spaceName` to be a primitive type in the JSON string but got " + data['spaceName']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['tags'])) {
            throw new Error("Expected the field `tags` to be an array in the JSON data but got " + data['tags']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['description'] && !(typeof data['description'] === 'string' || data['description'] instanceof String)) {
            throw new Error("Expected the field `description` to be a primitive type in the JSON string but got " + data['description']);
        }
        // ensure the json data is a string
        if (data['termsAndConditions'] && !(typeof data['termsAndConditions'] === 'string' || data['termsAndConditions'] instanceof String)) {
            throw new Error("Expected the field `termsAndConditions` to be a primitive type in the JSON string but got " + data['termsAndConditions']);
        }
        // ensure the json data is a string
        if (data['competitionId'] && !(typeof data['competitionId'] === 'string' || data['competitionId'] instanceof String)) {
            throw new Error("Expected the field `competitionId` to be a primitive type in the JSON string but got " + data['competitionId']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['entrantsFromContest'])) {
            throw new Error("Expected the field `entrantsFromContest` to be an array in the JSON data but got " + data['entrantsFromContest']);
        }
        // ensure the json data is a string
        if (data['groupStageLabel'] && !(typeof data['groupStageLabel'] === 'string' || data['groupStageLabel'] instanceof String)) {
            throw new Error("Expected the field `groupStageLabel` to be a primitive type in the JSON string but got " + data['groupStageLabel']);
        }
        // validate the optional field `optInStatus`
        if (data['optInStatus']) { // data not null
          OptinStatus.validateJSON(data['optInStatus']);
        }
        // validate the optional field `strategies`
        if (data['strategies']) { // data not null
          Strategy.validateJSON(data['strategies']);
        }
        // validate the optional field `memberTagsFilter`
        if (data['memberTagsFilter']) { // data not null
          DependantOn.validateJSON(data['memberTagsFilter']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['constraints'])) {
            throw new Error("Expected the field `constraints` to be an array in the JSON data but got " + data['constraints']);
        }
        // ensure the json data is a string
        if (data['bannerLink'] && !(typeof data['bannerLink'] === 'string' || data['bannerLink'] instanceof String)) {
            throw new Error("Expected the field `bannerLink` to be a primitive type in the JSON string but got " + data['bannerLink']);
        }
        // ensure the json data is a string
        if (data['bannerHighResolutionLink'] && !(typeof data['bannerHighResolutionLink'] === 'string' || data['bannerHighResolutionLink'] instanceof String)) {
            throw new Error("Expected the field `bannerHighResolutionLink` to be a primitive type in the JSON string but got " + data['bannerHighResolutionLink']);
        }
        // ensure the json data is a string
        if (data['bannerLowResolutionLink'] && !(typeof data['bannerLowResolutionLink'] === 'string' || data['bannerLowResolutionLink'] instanceof String)) {
            throw new Error("Expected the field `bannerLowResolutionLink` to be a primitive type in the JSON string but got " + data['bannerLowResolutionLink']);
        }
        // ensure the json data is a string
        if (data['iconLink'] && !(typeof data['iconLink'] === 'string' || data['iconLink'] instanceof String)) {
            throw new Error("Expected the field `iconLink` to be a primitive type in the JSON string but got " + data['iconLink']);
        }

        return true;
    }


}

Contest.RequiredProperties = ["id"];

/**
 * Ziqni id of the model
 * @member {String} id
 */
Contest.prototype['id'] = undefined;

/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
Contest.prototype['spaceName'] = undefined;

/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
Contest.prototype['created'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
Contest.prototype['customFields'] = undefined;

/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
Contest.prototype['tags'] = undefined;

/**
 * @member {Object.<String, String>} metadata
 */
Contest.prototype['metadata'] = undefined;

/**
 * 
 * @member {String} name
 */
Contest.prototype['name'] = undefined;

/**
 * 
 * @member {String} description
 */
Contest.prototype['description'] = undefined;

/**
 * 
 * @member {String} termsAndConditions
 */
Contest.prototype['termsAndConditions'] = undefined;

/**
 * A unique identifier of a Competition
 * @member {String} competitionId
 */
Contest.prototype['competitionId'] = undefined;

/**
 * To what round does the contest belong
 * @member {Number} round
 */
Contest.prototype['round'] = undefined;

/**
 * @member {module:model/RoundType} roundType
 */
Contest.prototype['roundType'] = undefined;

/**
 * Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2
 * @member {Number} groupStage
 */
Contest.prototype['groupStage'] = undefined;

/**
 * A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional.
 * @member {Array.<String>} entrantsFromContest
 */
Contest.prototype['entrantsFromContest'] = undefined;

/**
 * The name of the group stages
 * @member {String} groupStageLabel
 */
Contest.prototype['groupStageLabel'] = undefined;

/**
 * @member {module:model/OptinStatus} optInStatus
 */
Contest.prototype['optInStatus'] = undefined;

/**
 * Maximum number of entrants for the contest
 * @member {Number} maxNumberOfEntrants
 */
Contest.prototype['maxNumberOfEntrants'] = undefined;

/**
 * Minimum number of entrants for the contest
 * @member {Number} minNumberOfEntrants
 */
Contest.prototype['minNumberOfEntrants'] = undefined;

/**
 * ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone
 * @member {Date} scheduledStartDate
 */
Contest.prototype['scheduledStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone
 * @member {Date} scheduledEndDate
 */
Contest.prototype['scheduledEndDate'] = undefined;

/**
 * ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone
 * @member {Date} actualStartDate
 */
Contest.prototype['actualStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone
 * @member {Date} actualEndDate
 */
Contest.prototype['actualEndDate'] = undefined;

/**
 * @member {module:model/Strategy} strategies
 */
Contest.prototype['strategies'] = undefined;

/**
 * @member {module:model/ContestStatus} status
 */
Contest.prototype['status'] = undefined;

/**
 * The code of the contest
 * @member {Number} statusCode
 */
Contest.prototype['statusCode'] = undefined;

/**
 * @member {module:model/DependantOn} memberTagsFilter
 */
Contest.prototype['memberTagsFilter'] = undefined;

/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
Contest.prototype['constraints'] = undefined;

/**
 * Link to the banner
 * @member {String} bannerLink
 */
Contest.prototype['bannerLink'] = undefined;

/**
 * Link to the bannerHighResolution
 * @member {String} bannerHighResolutionLink
 */
Contest.prototype['bannerHighResolutionLink'] = undefined;

/**
 * Link to the bannerLowResolution
 * @member {String} bannerLowResolutionLink
 */
Contest.prototype['bannerLowResolutionLink'] = undefined;

/**
 * Link to the icon
 * @member {String} iconLink
 */
Contest.prototype['iconLink'] = undefined;

/**
 * The number of entrants participating in a contest
 * @member {Number} entrantsCount
 */
Contest.prototype['entrantsCount'] = undefined;


// Implement ModelDefault interface:
/**
 * Ziqni id of the model
 * @member {String} id
 */
ModelDefault.prototype['id'] = undefined;
/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
ModelDefault.prototype['spaceName'] = undefined;
/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
ModelDefault.prototype['created'] = undefined;
// Implement OptionalModelFields interface:
/**
 * @member {Object.<String, Object>} customFields
 */
OptionalModelFields.prototype['customFields'] = undefined;
/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
OptionalModelFields.prototype['tags'] = undefined;
/**
 * @member {Object.<String, String>} metadata
 */
OptionalModelFields.prototype['metadata'] = undefined;




export default Contest;

