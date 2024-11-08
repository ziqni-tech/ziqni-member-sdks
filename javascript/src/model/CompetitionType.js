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
/**
* Enum class CompetitionType.
* @enum {}
* @readonly
*/
export default class CompetitionType {
    
        /**
         * value: "Leaderboard"
         * @const
         */
        "Leaderboard" = "Leaderboard";

    

    /**
    * Returns a <code>CompetitionType</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/CompetitionType} The enum <code>CompetitionType</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}

