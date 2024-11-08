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
import ModelCountRequest from './ModelCountRequest';

/**
 * The MemberTokenRequest model module.
 * @module model/MemberTokenRequest
 * @version 1.0.17
 */
class MemberTokenRequest {
    /**
     * Constructs a new <code>MemberTokenRequest</code>.
     * 
     * @alias module:model/MemberTokenRequest
     * @param apiKey {String} The API key to use to generate this token.
     * @param member {String} The identifier used to find the member information. if this value is set to \"__PUBLIC__\" and isReferenceId is set to \"FALSE\" then a genral use, non-member specific token will be issued
     */
    constructor(apiKey, member) { 
        
        MemberTokenRequest.initialize(this, apiKey, member);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, apiKey, member) { 
        obj['apiKey'] = apiKey;
        obj['member'] = member;
    }

    /**
     * Constructs a <code>MemberTokenRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MemberTokenRequest} obj Optional instance to populate.
     * @return {module:model/MemberTokenRequest} The populated <code>MemberTokenRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MemberTokenRequest();

            if (data.hasOwnProperty('apiKey')) {
                obj['apiKey'] = ApiClient.convertToType(data['apiKey'], 'String');
            }
            if (data.hasOwnProperty('isReferenceId')) {
                obj['isReferenceId'] = ApiClient.convertToType(data['isReferenceId'], 'Boolean');
            }
            if (data.hasOwnProperty('origins')) {
                obj['origins'] = ApiClient.convertToType(data['origins'], ['String']);
            }
            if (data.hasOwnProperty('member')) {
                obj['member'] = ApiClient.convertToType(data['member'], 'String');
            }
            if (data.hasOwnProperty('expires')) {
                obj['expires'] = ApiClient.convertToType(data['expires'], 'Number');
            }
            if (data.hasOwnProperty('disabledServices')) {
                obj['disabledServices'] = ApiClient.convertToType(data['disabledServices'], ['String']);
            }
            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('currencyKey')) {
                obj['currencyKey'] = ApiClient.convertToType(data['currencyKey'], 'String');
            }
            if (data.hasOwnProperty('timeZoneOffset')) {
                obj['timeZoneOffset'] = ApiClient.convertToType(data['timeZoneOffset'], 'Number');
            }
            if (data.hasOwnProperty('includeActivesByEntity')) {
                obj['includeActivesByEntity'] = ModelCountRequest.constructFromObject(data['includeActivesByEntity']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>MemberTokenRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>MemberTokenRequest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of MemberTokenRequest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['apiKey'] && !(typeof data['apiKey'] === 'string' || data['apiKey'] instanceof String)) {
            throw new Error("Expected the field `apiKey` to be a primitive type in the JSON string but got " + data['apiKey']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['origins'])) {
            throw new Error("Expected the field `origins` to be an array in the JSON data but got " + data['origins']);
        }
        // ensure the json data is a string
        if (data['member'] && !(typeof data['member'] === 'string' || data['member'] instanceof String)) {
            throw new Error("Expected the field `member` to be a primitive type in the JSON string but got " + data['member']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['disabledServices'])) {
            throw new Error("Expected the field `disabledServices` to be an array in the JSON data but got " + data['disabledServices']);
        }
        // ensure the json data is a string
        if (data['languageKey'] && !(typeof data['languageKey'] === 'string' || data['languageKey'] instanceof String)) {
            throw new Error("Expected the field `languageKey` to be a primitive type in the JSON string but got " + data['languageKey']);
        }
        // ensure the json data is a string
        if (data['currencyKey'] && !(typeof data['currencyKey'] === 'string' || data['currencyKey'] instanceof String)) {
            throw new Error("Expected the field `currencyKey` to be a primitive type in the JSON string but got " + data['currencyKey']);
        }
        // validate the optional field `includeActivesByEntity`
        if (data['includeActivesByEntity']) { // data not null
          ModelCountRequest.validateJSON(data['includeActivesByEntity']);
        }

        return true;
    }


}

MemberTokenRequest.RequiredProperties = ["apiKey", "member"];

/**
 * The API key to use to generate this token.
 * @member {String} apiKey
 */
MemberTokenRequest.prototype['apiKey'] = undefined;

/**
 * Default is FALSE, if set to TRUE then the meberId will be assumed to be client provided reference id, if set to false then the memberId will be assumed to be a ZIQNI generated identifier.
 * @member {Boolean} isReferenceId
 */
MemberTokenRequest.prototype['isReferenceId'] = undefined;

/**
 * Allowed origins for the generated token. Leave empty to permit all origins, Alternative provide up to 3 allowed origin URIs like https://my-space.api.ziqni.app 
 * @member {Array.<String>} origins
 */
MemberTokenRequest.prototype['origins'] = undefined;

/**
 * The identifier used to find the member information. if this value is set to \"__PUBLIC__\" and isReferenceId is set to \"FALSE\" then a genral use, non-member specific token will be issued
 * @member {String} member
 */
MemberTokenRequest.prototype['member'] = undefined;

/**
 * The number of minutes this token will be valid for. If left blank the token will only be valid for 30 minutes
 * @member {Number} expires
 */
MemberTokenRequest.prototype['expires'] = undefined;

/**
 * A list of services to be disabled for this web token  - Public, - Member - ViewAchievements - ViewAwards - ClaimAwards - ViewCompetitions - ViewContests - ViewFiles - ViewMembers - MembersOptin - ViewMessages - ConnectProxy - ViewRewards - ViewRules
 * @member {Array.<String>} disabledServices
 */
MemberTokenRequest.prototype['disabledServices'] = undefined;

/**
 * The language code to use if none is provided in the member api requests 
 * @member {String} languageKey
 */
MemberTokenRequest.prototype['languageKey'] = undefined;

/**
 * The language key to use if none is provided in the member api requests
 * @member {String} currencyKey
 */
MemberTokenRequest.prototype['currencyKey'] = undefined;

/**
 * The time zone to use when returning date and time values
 * @member {Number} timeZoneOffset
 */
MemberTokenRequest.prototype['timeZoneOffset'] = undefined;

/**
 * @member {module:model/ModelCountRequest} includeActivesByEntity
 */
MemberTokenRequest.prototype['includeActivesByEntity'] = undefined;






export default MemberTokenRequest;

