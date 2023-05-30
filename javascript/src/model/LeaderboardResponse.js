/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.9
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import Error from './Error';
import Leaderboard from './Leaderboard';
import ResponseMeta from './ResponseMeta';

/**
 * The LeaderboardResponse model module.
 * @module model/LeaderboardResponse
 * @version 1.0.9
 */
class LeaderboardResponse {
    /**
     * Constructs a new <code>LeaderboardResponse</code>.
     * @alias module:model/LeaderboardResponse
     * @param meta {module:model/ResponseMeta} 
     * @param errors {Array.<module:model/Error>} 
     * @param data {module:model/Leaderboard} 
     */
    constructor(meta, errors, data) { 
        
        LeaderboardResponse.initialize(this, meta, errors, data);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, meta, errors, data) { 
        obj['meta'] = meta;
        obj['errors'] = errors;
        obj['data'] = data;
    }

    /**
     * Constructs a <code>LeaderboardResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/LeaderboardResponse} obj Optional instance to populate.
     * @return {module:model/LeaderboardResponse} The populated <code>LeaderboardResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new LeaderboardResponse();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('errors')) {
                obj['errors'] = ApiClient.convertToType(data['errors'], [Error]);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = Leaderboard.constructFromObject(data['data']);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseMeta} meta
 */
LeaderboardResponse.prototype['meta'] = undefined;

/**
 * @member {Array.<module:model/Error>} errors
 */
LeaderboardResponse.prototype['errors'] = undefined;

/**
 * @member {module:model/Leaderboard} data
 */
LeaderboardResponse.prototype['data'] = undefined;






export default LeaderboardResponse;

