/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.16
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
import OptinStatus from './OptinStatus';
import ProductReduced from './ProductReduced';
import Scheduling from './Scheduling';

/**
 * The AchievementAllOf model module.
 * @module model/AchievementAllOf
 * @version 1.0.16
 */
class AchievementAllOf {
    /**
     * Constructs a new <code>AchievementAllOf</code>.
     * @alias module:model/AchievementAllOf
     */
    constructor() { 
        
        AchievementAllOf.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AchievementAllOf</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AchievementAllOf} obj Optional instance to populate.
     * @return {module:model/AchievementAllOf} The populated <code>AchievementAllOf</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AchievementAllOf();

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


}

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

/**
 * Link to the banner
 * @member {String} bannerLink
 */
AchievementAllOf.prototype['bannerLink'] = undefined;

/**
 * Link to the bannerLowResolution
 * @member {String} bannerLowResolutionLink
 */
AchievementAllOf.prototype['bannerLowResolutionLink'] = undefined;

/**
 * Link to the bannerHighResolution
 * @member {String} bannerHighResolutionLink
 */
AchievementAllOf.prototype['bannerHighResolutionLink'] = undefined;

/**
 * @member {module:model/AchievementStrategies} strategies
 */
AchievementAllOf.prototype['strategies'] = undefined;

/**
 * @member {module:model/OptinStatus} optInStatus
 */
AchievementAllOf.prototype['optInStatus'] = undefined;






export default AchievementAllOf;

