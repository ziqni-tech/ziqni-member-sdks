/**
 * Ziqni Gamification Cloud API
 * This is the gamification cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
/**
* Enum class OptinAction.
* @enum {}
* @readonly
*/
export default class OptinAction {
    
        /**
         * value: "opt-in"
         * @const
         */
        "in" = "opt-in";

    
        /**
         * value: "opt-out"
         * @const
         */
        "out" = "opt-out";

    

    /**
    * Returns a <code>OptinAction</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/OptinAction} The enum <code>OptinAction</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}

