/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.14
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
/**
* Enum class ScheduleType.
* @enum {}
* @readonly
*/
export default class ScheduleType {
    
        /**
         * value: "Once"
         * @const
         */
        "Once" = "Once";

    
        /**
         * value: "Repeatedly"
         * @const
         */
        "Repeatedly" = "Repeatedly";

    
        /**
         * value: "Daily"
         * @const
         */
        "Daily" = "Daily";

    
        /**
         * value: "Weekly"
         * @const
         */
        "Weekly" = "Weekly";

    
        /**
         * value: "Monthly"
         * @const
         */
        "Monthly" = "Monthly";

    

    /**
    * Returns a <code>ScheduleType</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/ScheduleType} The enum <code>ScheduleType</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}

