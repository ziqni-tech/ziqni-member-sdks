/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.10
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import AchievementFilter from './AchievementFilter';

/**
 * The AchievementRequest model module.
 * @module model/AchievementRequest
 * @version 1.0.10
 */
class AchievementRequest {
    /**
     * Constructs a new <code>AchievementRequest</code>.
     * @alias module:model/AchievementRequest
     */
    constructor() { 
        
        AchievementRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AchievementRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AchievementRequest} obj Optional instance to populate.
     * @return {module:model/AchievementRequest} The populated <code>AchievementRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AchievementRequest();

            if (data.hasOwnProperty('achievementFilter')) {
                obj['achievementFilter'] = AchievementFilter.constructFromObject(data['achievementFilter']);
            }
            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/AchievementFilter} achievementFilter
 */
AchievementRequest.prototype['achievementFilter'] = undefined;

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
AchievementRequest.prototype['languageKey'] = undefined;






export default AchievementRequest;

