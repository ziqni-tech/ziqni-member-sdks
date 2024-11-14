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
import CompetitionStatus from './CompetitionStatus';
import CompetitionType from './CompetitionType';
import DependantOn from './DependantOn';
import ModelDefault from './ModelDefault';
import OptionalModelFields from './OptionalModelFields';
import ProductReduced from './ProductReduced';

/**
 * The Competition model module.
 * @module model/Competition
 * @version 1.0.17
 */
class Competition {
    /**
     * Constructs a new <code>Competition</code>.
     * 
     * @alias module:model/Competition
     * @implements module:model/ModelDefault
     * @implements module:model/OptionalModelFields
     * @param id {String} Ziqni id of the model
     */
    constructor(id) { 
        ModelDefault.initialize(this, id);OptionalModelFields.initialize(this);
        Competition.initialize(this, id);
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
     * Constructs a <code>Competition</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Competition} obj Optional instance to populate.
     * @return {module:model/Competition} The populated <code>Competition</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Competition();
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
            if (data.hasOwnProperty('competitionType')) {
                obj['competitionType'] = CompetitionType.constructFromObject(data['competitionType']);
            }
            if (data.hasOwnProperty('numberOfRounds')) {
                obj['numberOfRounds'] = ApiClient.convertToType(data['numberOfRounds'], 'Number');
            }
            if (data.hasOwnProperty('numberOfGroupStages')) {
                obj['numberOfGroupStages'] = ApiClient.convertToType(data['numberOfGroupStages'], 'Number');
            }
            if (data.hasOwnProperty('maxNumberOfEntrants')) {
                obj['maxNumberOfEntrants'] = ApiClient.convertToType(data['maxNumberOfEntrants'], 'Number');
            }
            if (data.hasOwnProperty('minNumberOfEntrants')) {
                obj['minNumberOfEntrants'] = ApiClient.convertToType(data['minNumberOfEntrants'], 'Number');
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
            if (data.hasOwnProperty('entrantMemberType')) {
                obj['entrantMemberType'] = ApiClient.convertToType(data['entrantMemberType'], 'String');
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
            if (data.hasOwnProperty('status')) {
                obj['status'] = CompetitionStatus.constructFromObject(data['status']);
            }
            if (data.hasOwnProperty('statusCode')) {
                obj['statusCode'] = ApiClient.convertToType(data['statusCode'], 'Number');
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('products')) {
                obj['products'] = ApiClient.convertToType(data['products'], [ProductReduced]);
            }
            if (data.hasOwnProperty('memberTagsFilter')) {
                obj['memberTagsFilter'] = DependantOn.constructFromObject(data['memberTagsFilter']);
            }
            if (data.hasOwnProperty('productTagsFilter')) {
                obj['productTagsFilter'] = DependantOn.constructFromObject(data['productTagsFilter']);
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
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>Competition</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>Competition</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of Competition.RequiredProperties) {
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
        if (data['entrantMemberType'] && !(typeof data['entrantMemberType'] === 'string' || data['entrantMemberType'] instanceof String)) {
            throw new Error("Expected the field `entrantMemberType` to be a primitive type in the JSON string but got " + data['entrantMemberType']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['constraints'])) {
            throw new Error("Expected the field `constraints` to be an array in the JSON data but got " + data['constraints']);
        }
        if (data['products']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['products'])) {
                throw new Error("Expected the field `products` to be an array in the JSON data but got " + data['products']);
            }
            // validate the optional field `products` (array)
            for (const item of data['products']) {
                ProductReduced.validateJSON(item);
            };
        }
        // validate the optional field `memberTagsFilter`
        if (data['memberTagsFilter']) { // data not null
          DependantOn.validateJSON(data['memberTagsFilter']);
        }
        // validate the optional field `productTagsFilter`
        if (data['productTagsFilter']) { // data not null
          DependantOn.validateJSON(data['productTagsFilter']);
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

Competition.RequiredProperties = ["id"];

/**
 * Ziqni id of the model
 * @member {String} id
 */
Competition.prototype['id'] = undefined;

/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
Competition.prototype['spaceName'] = undefined;

/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
Competition.prototype['created'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
Competition.prototype['customFields'] = undefined;

/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
Competition.prototype['tags'] = undefined;

/**
 * @member {Object.<String, String>} metadata
 */
Competition.prototype['metadata'] = undefined;

/**
 * @member {module:model/CompetitionType} competitionType
 */
Competition.prototype['competitionType'] = undefined;

/**
 * Number of rounds to be played in a competition
 * @member {Number} numberOfRounds
 */
Competition.prototype['numberOfRounds'] = undefined;

/**
 * Number of group stages
 * @member {Number} numberOfGroupStages
 */
Competition.prototype['numberOfGroupStages'] = undefined;

/**
 * Maximum number of partiipants allowed in a competition
 * @member {Number} maxNumberOfEntrants
 */
Competition.prototype['maxNumberOfEntrants'] = undefined;

/**
 * Maximum number of partiipants allowed in a competition
 * @member {Number} minNumberOfEntrants
 */
Competition.prototype['minNumberOfEntrants'] = undefined;

/**
 * 
 * @member {String} name
 */
Competition.prototype['name'] = undefined;

/**
 * 
 * @member {String} description
 */
Competition.prototype['description'] = undefined;

/**
 * 
 * @member {String} termsAndConditions
 */
Competition.prototype['termsAndConditions'] = undefined;

/**
 * @member {String} entrantMemberType
 */
Competition.prototype['entrantMemberType'] = undefined;

/**
 * ISO8601 timestamp for when a Competition should start. All records are stored in UTC time zone
 * @member {Date} scheduledStartDate
 */
Competition.prototype['scheduledStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Competition should end. All records are stored in UTC time zone
 * @member {Date} scheduledEndDate
 */
Competition.prototype['scheduledEndDate'] = undefined;

/**
 * ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone
 * @member {Date} actualStartDate
 */
Competition.prototype['actualStartDate'] = undefined;

/**
 * ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone
 * @member {Date} actualEndDate
 */
Competition.prototype['actualEndDate'] = undefined;

/**
 * @member {module:model/CompetitionStatus} status
 */
Competition.prototype['status'] = undefined;

/**
 * The code of the competition
 * @member {Number} statusCode
 */
Competition.prototype['statusCode'] = undefined;

/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
Competition.prototype['constraints'] = undefined;

/**
 * If individual product were selected then they will be listed here. If the proproduct tags filter was used then this field will be empty and the productTagsFilter will be populated.
 * @member {Array.<module:model/ProductReduced>} products
 */
Competition.prototype['products'] = undefined;

/**
 * @member {module:model/DependantOn} memberTagsFilter
 */
Competition.prototype['memberTagsFilter'] = undefined;

/**
 * @member {module:model/DependantOn} productTagsFilter
 */
Competition.prototype['productTagsFilter'] = undefined;

/**
 * Link to the banner
 * @member {String} bannerLink
 */
Competition.prototype['bannerLink'] = undefined;

/**
 * Link to the bannerHighResolution
 * @member {String} bannerHighResolutionLink
 */
Competition.prototype['bannerHighResolutionLink'] = undefined;

/**
 * Link to the bannerLowResolution
 * @member {String} bannerLowResolutionLink
 */
Competition.prototype['bannerLowResolutionLink'] = undefined;

/**
 * Link to the icon
 * @member {String} iconLink
 */
Competition.prototype['iconLink'] = undefined;


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




export default Competition;

