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
/**
* Enum class MessageStatus.
* @enum {}
* @readonly
*/
export default class MessageStatus {
    
        /**
         * value: "New"
         * @const
         */
        "NEW" = "New";

    
        /**
         * value: "Read"
         * @const
         */
        "READ" = "Read";

    
        /**
         * value: "CollaborationRequest"
         * @const
         */
        "COLLABORATIONREQUEST" = "CollaborationRequest";

    
        /**
         * value: "Actioned"
         * @const
         */
        "ACTIONED" = "Actioned";

    
        /**
         * value: "Claimed"
         * @const
         */
        "CLAIMED" = "Claimed";

    
        /**
         * value: "Expired"
         * @const
         */
        "EXPIRED" = "Expired";

    
        /**
         * value: "Canceled"
         * @const
         */
        "CANCELED" = "Canceled";

    
        /**
         * value: "Deprecated"
         * @const
         */
        "DEPRECATED" = "Deprecated";

    

    /**
    * Returns a <code>MessageStatus</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/MessageStatus} The enum <code>MessageStatus</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}

