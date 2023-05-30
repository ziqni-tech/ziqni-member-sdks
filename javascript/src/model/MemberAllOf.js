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
import MemberType from './MemberType';

/**
 * The MemberAllOf model module.
 * @module model/MemberAllOf
 * @version 1.0.9
 */
class MemberAllOf {
    /**
     * Constructs a new <code>MemberAllOf</code>.
     * @alias module:model/MemberAllOf
     */
    constructor() { 
        
        MemberAllOf.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>MemberAllOf</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MemberAllOf} obj Optional instance to populate.
     * @return {module:model/MemberAllOf} The populated <code>MemberAllOf</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MemberAllOf();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('memberRefId')) {
                obj['memberRefId'] = ApiClient.convertToType(data['memberRefId'], 'String');
            }
            if (data.hasOwnProperty('memberType')) {
                obj['memberType'] = MemberType.constructFromObject(data['memberType']);
            }
            if (data.hasOwnProperty('teamMembers')) {
                obj['teamMembers'] = ApiClient.convertToType(data['teamMembers'], ['String']);
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('timeZoneOffset')) {
                obj['timeZoneOffset'] = ApiClient.convertToType(data['timeZoneOffset'], 'String');
            }
        }
        return obj;
    }


}

/**
 * The name of the member that is used on leader boards and public displays
 * @member {String} name
 */
MemberAllOf.prototype['name'] = undefined;

/**
 * The reference to this member in your system
 * @member {String} memberRefId
 */
MemberAllOf.prototype['memberRefId'] = undefined;

/**
 * @member {module:model/MemberType} memberType
 */
MemberAllOf.prototype['memberType'] = undefined;

/**
 * A social group like Guilds
 * @member {Array.<String>} teamMembers
 */
MemberAllOf.prototype['teamMembers'] = undefined;

/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
MemberAllOf.prototype['constraints'] = undefined;

/**
 * To what time zone teh emmber belongs to
 * @member {String} timeZoneOffset
 */
MemberAllOf.prototype['timeZoneOffset'] = undefined;






export default MemberAllOf;

