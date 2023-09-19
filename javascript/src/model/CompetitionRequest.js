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
import CompetitionFilter from './CompetitionFilter';

/**
 * The CompetitionRequest model module.
 * @module model/CompetitionRequest
 * @version 1.0.11
 */
class CompetitionRequest {
    /**
     * Constructs a new <code>CompetitionRequest</code>.
     * @alias module:model/CompetitionRequest
     */
    constructor() { 
        
        CompetitionRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CompetitionRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CompetitionRequest} obj Optional instance to populate.
     * @return {module:model/CompetitionRequest} The populated <code>CompetitionRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CompetitionRequest();

            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('competitionFilter')) {
                obj['competitionFilter'] = CompetitionFilter.constructFromObject(data['competitionFilter']);
            }
        }
        return obj;
    }


}

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
CompetitionRequest.prototype['languageKey'] = undefined;

/**
 * @member {module:model/CompetitionFilter} competitionFilter
 */
CompetitionRequest.prototype['competitionFilter'] = undefined;






export default CompetitionRequest;

