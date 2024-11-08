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
import MissionStatesFilter from './MissionStatesFilter';

/**
 * The MissionStatesRequest model module.
 * @module model/MissionStatesRequest
 * @version 1.0.17
 */
class MissionStatesRequest {
    /**
     * Constructs a new <code>MissionStatesRequest</code>.
     * 
     * @alias module:model/MissionStatesRequest
     * @param missionStatesFilter {module:model/MissionStatesFilter} 
     */
    constructor(missionStatesFilter) { 
        
        MissionStatesRequest.initialize(this, missionStatesFilter);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, missionStatesFilter) { 
        obj['missionStatesFilter'] = missionStatesFilter;
    }

    /**
     * Constructs a <code>MissionStatesRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MissionStatesRequest} obj Optional instance to populate.
     * @return {module:model/MissionStatesRequest} The populated <code>MissionStatesRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MissionStatesRequest();

            if (data.hasOwnProperty('missionStatesFilter')) {
                obj['missionStatesFilter'] = MissionStatesFilter.constructFromObject(data['missionStatesFilter']);
            }
            if (data.hasOwnProperty('includes')) {
                obj['includes'] = ApiClient.convertToType(data['includes'], ['String']);
            }
            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>MissionStatesRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>MissionStatesRequest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of MissionStatesRequest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // validate the optional field `missionStatesFilter`
        if (data['missionStatesFilter']) { // data not null
          MissionStatesFilter.validateJSON(data['missionStatesFilter']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['includes'])) {
            throw new Error("Expected the field `includes` to be an array in the JSON data but got " + data['includes']);
        }
        // ensure the json data is a string
        if (data['languageKey'] && !(typeof data['languageKey'] === 'string' || data['languageKey'] instanceof String)) {
            throw new Error("Expected the field `languageKey` to be a primitive type in the JSON string but got " + data['languageKey']);
        }

        return true;
    }


}

MissionStatesRequest.RequiredProperties = ["missionStatesFilter"];

/**
 * @member {module:model/MissionStatesFilter} missionStatesFilter
 */
MissionStatesRequest.prototype['missionStatesFilter'] = undefined;

/**
 * What objects to include from the entity in this response. For achievement the following can be included; description, memberTagsFilter, scheduling, and termsAndConditions, optin-status
 * @member {Array.<String>} includes
 */
MissionStatesRequest.prototype['includes'] = undefined;

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
MissionStatesRequest.prototype['languageKey'] = undefined;






export default MissionStatesRequest;

