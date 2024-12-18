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
* Enum class EntityType.
* @enum {}
* @readonly
*/
export default class EntityType {
    
        /**
         * value: "Member"
         * @const
         */
        "Member" = "Member";

    
        /**
         * value: "Product"
         * @const
         */
        "Product" = "Product";

    
        /**
         * value: "Achievement"
         * @const
         */
        "Achievement" = "Achievement";

    
        /**
         * value: "Repository"
         * @const
         */
        "Repository" = "Repository";

    
        /**
         * value: "FileObject"
         * @const
         */
        "FileObject" = "FileObject";

    
        /**
         * value: "Language"
         * @const
         */
        "Language" = "Language";

    
        /**
         * value: "MemberMessage"
         * @const
         */
        "MemberMessage" = "MemberMessage";

    
        /**
         * value: "Reward"
         * @const
         */
        "Reward" = "Reward";

    
        /**
         * value: "MemberAward"
         * @const
         */
        "MemberAward" = "MemberAward";

    
        /**
         * value: "Award"
         * @const
         */
        "Award" = "Award";

    
        /**
         * value: "Message"
         * @const
         */
        "Message" = "Message";

    
        /**
         * value: "RewardType"
         * @const
         */
        "RewardType" = "RewardType";

    
        /**
         * value: "ActionType"
         * @const
         */
        "ActionType" = "ActionType";

    
        /**
         * value: "UnitOfMeasure"
         * @const
         */
        "UnitOfMeasure" = "UnitOfMeasure";

    
        /**
         * value: "Competition"
         * @const
         */
        "Competition" = "Competition";

    
        /**
         * value: "Contest"
         * @const
         */
        "Contest" = "Contest";

    
        /**
         * value: "SqsConnection"
         * @const
         */
        "SqsConnection" = "SqsConnection";

    
        /**
         * value: "KafkaConnection"
         * @const
         */
        "KafkaConnection" = "KafkaConnection";

    
        /**
         * value: "RabbitMqConnection"
         * @const
         */
        "RabbitMqConnection" = "RabbitMqConnection";

    
        /**
         * value: "Events"
         * @const
         */
        "Events" = "Events";

    
        /**
         * value: "Webhook"
         * @const
         */
        "Webhook" = "Webhook";

    
        /**
         * value: "Attachment"
         * @const
         */
        "Attachment" = "Attachment";

    
        /**
         * value: "RuleSet"
         * @const
         */
        "RuleSet" = "RuleSet";

    
        /**
         * value: "InstantWin"
         * @const
         */
        "InstantWin" = "InstantWin";

    

    /**
    * Returns a <code>EntityType</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/EntityType} The enum <code>EntityType</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}

