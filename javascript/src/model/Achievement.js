/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.11
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import AchievementAllOf from './AchievementAllOf';
import DependantOn from './DependantOn';
import ModelDefault from './ModelDefault';
import OptionalModelFields from './OptionalModelFields';
import ProductReduced from './ProductReduced';
import Scheduling from './Scheduling';

/**
 * The Achievement model module.
 * @module model/Achievement
 * @version 1.0.11
 */
class Achievement {
    /**
     * Constructs a new <code>Achievement</code>.
     * @alias module:model/Achievement
     * @implements module:model/AchievementAllOf
     * @implements module:model/ModelDefault
     * @implements module:model/OptionalModelFields
     * @param id {String} Ziqni id of the model
     */
    constructor(id) { 
        AchievementAllOf.initialize(this);ModelDefault.initialize(this, id);OptionalModelFields.initialize(this);
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
            AchievementAllOf.constructFromObject(data, obj);
            ModelDefault.constructFromObject(data, obj);
            OptionalModelFields.constructFromObject(data, obj);

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
        }
        return obj;
    }


}

/**
 * @member {String} name
 */
Achievement.prototype['name'] = undefined;

/**
 * @member {String} description
 */
Achievement.prototype['description'] = undefined;

/**
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
 * @member {Array.<module:model/ProductReduced>} products
 */
Achievement.prototype['products'] = undefined;

/**
 * Link to the icon
 * @member {String} iconLink
 */
Achievement.prototype['iconLink'] = undefined;

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


// Implement AchievementAllOf interface:
/**
 * @member {String} name
 */
AchievementAllOf.prototype['name'] = undefined;
/**
 * @member {String} description
 */
AchievementAllOf.prototype['description'] = undefined;
/**
 * @member {String} termsAndConditions
 */
AchievementAllOf.prototype['termsAndConditions'] = undefined;
/**
 * Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards]
 * @member {Array.<String>} constraints
 */
AchievementAllOf.prototype['constraints'] = undefined;
/**
 * Maximum number of issued achievements
 * @member {Number} maxNumberOfIssues
 */
AchievementAllOf.prototype['maxNumberOfIssues'] = undefined;
/**
 * @member {module:model/Scheduling} scheduling
 */
AchievementAllOf.prototype['scheduling'] = undefined;
/**
 * Achievement status
 * @member {String} status
 */
AchievementAllOf.prototype['status'] = undefined;
/**
 * @member {Number} statusCode
 */
AchievementAllOf.prototype['statusCode'] = undefined;
/**
 * @member {module:model/DependantOn} memberTagsFilter
 */
AchievementAllOf.prototype['memberTagsFilter'] = undefined;
/**
 * @member {module:model/DependantOn} achievementDependencies
 */
AchievementAllOf.prototype['achievementDependencies'] = undefined;
/**
 * @member {module:model/DependantOn} productTagsFilter
 */
AchievementAllOf.prototype['productTagsFilter'] = undefined;
/**
 * @member {Array.<module:model/ProductReduced>} products
 */
AchievementAllOf.prototype['products'] = undefined;
/**
 * Link to the icon
 * @member {String} iconLink
 */
AchievementAllOf.prototype['iconLink'] = undefined;
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

