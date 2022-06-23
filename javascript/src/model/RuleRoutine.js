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
import RuleArgument from './RuleArgument';

/**
 * The RuleRoutine model module.
 * @module model/RuleRoutine
 * @version 0.0.1
 */
class RuleRoutine {
    /**
     * Constructs a new <code>RuleRoutine</code>.
     * @alias module:model/RuleRoutine
     */
    constructor() { 
        
        RuleRoutine.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RuleRoutine</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RuleRoutine} obj Optional instance to populate.
     * @return {module:model/RuleRoutine} The populated <code>RuleRoutine</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RuleRoutine();

            if (data.hasOwnProperty('routine')) {
                obj['routine'] = ApiClient.convertToType(data['routine'], 'String');
            }
            if (data.hasOwnProperty('arguments')) {
                obj['arguments'] = ApiClient.convertToType(data['arguments'], [RuleArgument]);
            }
            if (data.hasOwnProperty('lineNumber')) {
                obj['lineNumber'] = ApiClient.convertToType(data['lineNumber'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * A routine to execute if the conditional expressions in the matching group evaluted to true
 * @member {String} routine
 */
RuleRoutine.prototype['routine'] = undefined;

/**
 * The arguments of the routine.
 * @member {Array.<module:model/RuleArgument>} arguments
 */
RuleRoutine.prototype['arguments'] = undefined;

/**
 * @member {Number} lineNumber
 */
RuleRoutine.prototype['lineNumber'] = undefined;






export default RuleRoutine;

