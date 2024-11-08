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
import AchievementStrategies from './AchievementStrategies';
import DependantOn from './DependantOn';
import ModelDefault from './ModelDefault';
import OptinStatus from './OptinStatus';
import OptionalModelFields from './OptionalModelFields';
import ProductReduced from './ProductReduced';
import Scheduling from './Scheduling';

/**
 * The Achievement model module.
 * @module model/Achievement
 * @version 1.0.17
 */
class Achievement {
    /**
     * Constructs a new <code>Achievement</code>.
     * 
     * @alias module:model/Achievement
     * @implements module:model/ModelDefault
     * @implements module:model/OptionalModelFields
     * @param id {String} Ziqni id of the model
     */
    constructor(id) { 
        ModelDefault.initialize(this, id);OptionalModelFields.initialize(this);
        Achievement.initialize(this, id);
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
     * Constructs a <code>Achievement</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Achievement} obj Optional instance to populate.
     * @return {module:model/Achievement} The populated <code>Achievement</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Achievement();
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
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('maxNumberOfIssues')) {
                obj['maxNumberOfIssues'] = ApiClient.convertToType(data['maxNumberOfIssues'], 'Number');
            }
            if (data.hasOwnProperty('scheduling')) {
                obj['scheduling'] = Scheduling.constructFromObject(data['scheduling']);
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = ApiClient.convertToType(data['status'], 'String');
            }
            if (data.hasOwnProperty('statusCode')) {
                obj['statusCode'] = ApiClient.convertToType(data['statusCode'], 'Number');
            }
            if (data.hasOwnProperty('memberTagsFilter')) {
                obj['memberTagsFilter'] = DependantOn.constructFromObject(data['memberTagsFilter']);
            }
            if (data.hasOwnProperty('achievementDependencies')) {
                obj['achievementDependencies'] = DependantOn.constructFromObject(data['achievementDependencies']);
            }
            if (data.hasOwnProperty('productTagsFilter')) {
                obj['productTagsFilter'] = DependantOn.constructFromObject(data['productTagsFilter']);
            }
            if (data.hasOwnProperty('products')) {
                obj['products'] = ApiClient.convertToType(data['products'], [ProductReduced]);
            }
            if (data.hasOwnProperty('iconLink')) {
                obj['iconLink'] = ApiClient.convertToType(data['iconLink'], 'String');
            }
            if (data.hasOwnProperty('bannerLink')) {
                obj['bannerLink'] = ApiClient.convertToType(data['bannerLink'], 'String');
            }
            if (data.hasOwnProperty('bannerLowResolutionLink')) {
                obj['bannerLowResolutionLink'] = ApiClient.convertToType(data['bannerLowResolutionLink'], 'String');
            }
            if (data.hasOwnProperty('bannerHighResolutionLink')) {
                obj['bannerHighResolutionLink'] = ApiClient.convertToType(data['bannerHighResolutionLink'], 'String');
            }
            if (data.hasOwnProperty('strategies')) {
                obj['strategies'] = AchievementStrategies.constructFromObject(data['strategies']);
            }
            if (data.hasOwnProperty('optInStatus')) {
                obj['optInStatus'] = OptinStatus.constructFromObject(data['optInStatus']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>Achievement</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>Achievement</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of Achievement.RequiredProperties) {
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
        // ensure the json data is an array
        if (!Array.isArray(data['constraints'])) {
            throw new Error("Expected the field `constraints` to be an array in the JSON data but got " + data['constraints']);
        }
        // validate the optional field `scheduling`
        if (data['scheduling']) { // data not null
          Scheduling.validateJSON(data['scheduling']);
        }
        // ensure the json data is a string
        if (data['status'] && !(typeof data['status'] === 'string' || data['status'] instanceof String)) {
            throw new Error("Expected the field `status` to be a primitive type in the JSON string but got " + data['status']);
        }
        // validate the optional field `memberTagsFilter`
        if (data['memberTagsFilter']) { // data not null
          DependantOn.validateJSON(data['memberTagsFilter']);
        }
        // validate the optional field `achievementDependencies`
        if (data['achievementDependencies']) { // data not null
          DependantOn.validateJSON(data['achievementDependencies']);
        }
        // validate the optional field `productTagsFilter`
        if (data['productTagsFilter']) { // data not null
          DependantOn.validateJSON(data['productTagsFilter']);
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
        // ensure the json data is a string
        if (data['iconLink'] && !(typeof data['iconLink'] === 'string' || data['iconLink'] instanceof String)) {
            throw new Error("Expected the field `iconLink` to be a primitive type in the JSON string but got " + data['iconLink']);
        }
        // ensure the json data is a string
        if (data['bannerLink'] && !(typeof data['bannerLink'] === 'string' || data['bannerLink'] instanceof String)) {
            throw new Error("Expected the field `bannerLink` to be a primitive type in the JSON string but got " + data['bannerLink']);
        }
        // ensure the json data is a string
        if (data['bannerLowResolutionLink'] && !(typeof data['bannerLowResolutionLink'] === 'string' || data['bannerLowResolutionLink'] instanceof String)) {
            throw new Error("Expected the field `bannerLowResolutionLink` to be a primitive type in the JSON string but got " + data['bannerLowResolutionLink']);
        }
        // ensure the json data is a string
        if (data['bannerHighResolutionLink'] && !(typeof data['bannerHighResolutionLink'] === 'string' || data['bannerHighResolutionLink'] instanceof String)) {
            throw new Error("Expected the field `bannerHighResolutionLink` to be a primitive type in the JSON string but got " + data['bannerHighResolutionLink']);
        }
        // validate the optional field `strategies`
        if (data['strategies']) { // data not null
          AchievementStrategies.validateJSON(data['strategies']);
        }
        // validate the optional field `optInStatus`
        if (data['optInStatus']) { // data not null
          OptinStatus.validateJSON(data['optInStatus']);
        }

        return true;
    }


}

Achievement.RequiredProperties = ["id"];

/**
 * Ziqni id of the model
 * @member {String} id
 */
Achievement.prototype['id'] = undefined;

/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
Achievement.prototype['spaceName'] = undefined;

/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
Achievement.prototype['created'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
Achievement.prototype['customFields'] = undefined;

/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
Achievement.prototype['tags'] = undefined;

/**
 * @member {Object.<String, String>} metadata
 */
Achievement.prototype['metadata'] = undefined;

/**
 * 
 * @member {String} name
 */
Achievement.prototype['name'] = undefined;

/**
 * 
 * @member {String} description
 */
Achievement.prototype['description'] = undefined;

/**
 * 
 * @member {String} termsAndConditions
 */
Achievement.prototype['termsAndConditions'] = undefined;

/**
 * Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards]
 * @member {Array.<String>} constraints
 */
Achievement.prototype['constraints'] = undefined;

/**
 * Maximum number of issued achievements
 * @member {Number} maxNumberOfIssues
 */
Achievement.prototype['maxNumberOfIssues'] = undefined;

/**
 * @member {module:model/Scheduling} scheduling
 */
Achievement.prototype['scheduling'] = undefined;

/**
 * Achievement status
 * @member {String} status
 */
Achievement.prototype['status'] = undefined;

/**
 * 
 * @member {Number} statusCode
 */
Achievement.prototype['statusCode'] = undefined;

/**
 * @member {module:model/DependantOn} memberTagsFilter
 */
Achievement.prototype['memberTagsFilter'] = undefined;

/**
 * @member {module:model/DependantOn} achievementDependencies
 */
Achievement.prototype['achievementDependencies'] = undefined;

/**
 * @member {module:model/DependantOn} productTagsFilter
 */
Achievement.prototype['productTagsFilter'] = undefined;

/**
 * 
 * @member {Array.<module:model/ProductReduced>} products
 */
Achievement.prototype['products'] = undefined;

/**
 * Link to the icon
 * @member {String} iconLink
 */
Achievement.prototype['iconLink'] = undefined;

/**
 * Link to the banner
 * @member {String} bannerLink
 */
Achievement.prototype['bannerLink'] = undefined;

/**
 * Link to the bannerLowResolution
 * @member {String} bannerLowResolutionLink
 */
Achievement.prototype['bannerLowResolutionLink'] = undefined;

/**
 * Link to the bannerHighResolution
 * @member {String} bannerHighResolutionLink
 */
Achievement.prototype['bannerHighResolutionLink'] = undefined;

/**
 * @member {module:model/AchievementStrategies} strategies
 */
Achievement.prototype['strategies'] = undefined;

/**
 * @member {module:model/OptinStatus} optInStatus
 */
Achievement.prototype['optInStatus'] = undefined;


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




export default Achievement;

