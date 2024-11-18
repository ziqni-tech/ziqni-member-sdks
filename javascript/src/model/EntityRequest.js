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
import EntityFilter from './EntityFilter';
import QuerySortBy from './QuerySortBy';

/**
 * The EntityRequest model module.
 * @module model/EntityRequest
 * @version 1.0.19
 */
class EntityRequest {
    /**
     * Constructs a new <code>EntityRequest</code>.
     * @alias module:model/EntityRequest
     */
    constructor() { 
        
        EntityRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>EntityRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityRequest} obj Optional instance to populate.
     * @return {module:model/EntityRequest} The populated <code>EntityRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityRequest();

            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('entityFilter')) {
                obj['entityFilter'] = ApiClient.convertToType(data['entityFilter'], [EntityFilter]);
            }
            if (data.hasOwnProperty('sortBy')) {
                obj['sortBy'] = ApiClient.convertToType(data['sortBy'], [QuerySortBy]);
            }
            if (data.hasOwnProperty('skip')) {
                obj['skip'] = ApiClient.convertToType(data['skip'], 'Number');
            }
            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
EntityRequest.prototype['languageKey'] = undefined;

/**
 * @member {Array.<module:model/EntityFilter>} entityFilter
 */
EntityRequest.prototype['entityFilter'] = undefined;

/**
 * @member {Array.<module:model/QuerySortBy>} sortBy
 */
EntityRequest.prototype['sortBy'] = undefined;

/**
 * @member {Number} skip
 */
EntityRequest.prototype['skip'] = undefined;

/**
 * @member {Number} limit
 */
EntityRequest.prototype['limit'] = undefined;






export default EntityRequest;

