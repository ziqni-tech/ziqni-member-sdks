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
import Competition from './Competition';
import Error from './Error';
import ResponseMeta from './ResponseMeta';

/**
 * The CompetitionResponse model module.
 * @module model/CompetitionResponse
 * @version 1.0.19
 */
class CompetitionResponse {
    /**
     * Constructs a new <code>CompetitionResponse</code>.
     * @alias module:model/CompetitionResponse
     */
    constructor() { 
        
        CompetitionResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CompetitionResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CompetitionResponse} obj Optional instance to populate.
     * @return {module:model/CompetitionResponse} The populated <code>CompetitionResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CompetitionResponse();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], [Competition]);
            }
            if (data.hasOwnProperty('errors')) {
                obj['errors'] = ApiClient.convertToType(data['errors'], [Error]);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseMeta} meta
 */
CompetitionResponse.prototype['meta'] = undefined;

/**
 * @member {Array.<module:model/Competition>} data
 */
CompetitionResponse.prototype['data'] = undefined;

/**
 * @member {Array.<module:model/Error>} errors
 */
CompetitionResponse.prototype['errors'] = undefined;






export default CompetitionResponse;

