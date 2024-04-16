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
 * The DependantOn model module.
 * @module model/DependantOn
 * @version 1.0.14
 */
class DependantOn {
    /**
     * Constructs a new <code>DependantOn</code>.
     * @alias module:model/DependantOn
     */
    constructor() { 
        
        DependantOn.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DependantOn</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DependantOn} obj Optional instance to populate.
     * @return {module:model/DependantOn} The populated <code>DependantOn</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DependantOn();

            if (data.hasOwnProperty('must')) {
                obj['must'] = ApiClient.convertToType(data['must'], ['String']);
            }
            if (data.hasOwnProperty('mustNot')) {
                obj['mustNot'] = ApiClient.convertToType(data['mustNot'], ['String']);
            }
            if (data.hasOwnProperty('should')) {
                obj['should'] = ApiClient.convertToType(data['should'], ['String']);
            }
            if (data.hasOwnProperty('shouldMatchAtLeast')) {
                obj['shouldMatchAtLeast'] = ApiClient.convertToType(data['shouldMatchAtLeast'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * A rule indicating that it has to be included. Players that are in the EU group with a MUST rule - that means only players that have that group can participate
 * @member {Array.<String>} must
 */
DependantOn.prototype['must'] = undefined;

/**
 * A rule indicating that it will not be included. Players that are in the EU group with a MUST-NOT rule - that means that players that have that group can NOT participate
 * @member {Array.<String>} mustNot
 */
DependantOn.prototype['mustNot'] = undefined;

/**
 * A rule indicating that some of them have to be included. Dependancy on shouldMatchAtLeast parameter. Players that are in the EU and DE groups with a SHOULD rule and a shouldMatchAtLeast with a value of 1 - that means that players that have 1 of the groups can participate
 * @member {Array.<String>} should
 */
DependantOn.prototype['should'] = undefined;

/**
 * Dependant on should. Triggered when 2 or more should parameters selected
 * @member {Number} shouldMatchAtLeast
 */
DependantOn.prototype['shouldMatchAtLeast'] = undefined;






export default DependantOn;

