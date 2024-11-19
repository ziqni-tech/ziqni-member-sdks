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
 * The InstantWinsAvailablePlayResults model module.
 * @module model/InstantWinsAvailablePlayResults
 * @version 1.0.19
 */
class InstantWinsAvailablePlayResults {
    /**
     * Constructs a new <code>InstantWinsAvailablePlayResults</code>.
     * @alias module:model/InstantWinsAvailablePlayResults
     * @param instantWinId {String} 
     */
    constructor(instantWinId) { 
        
        InstantWinsAvailablePlayResults.initialize(this, instantWinId);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, instantWinId) { 
        obj['instantWinId'] = instantWinId;
    }

    /**
     * Constructs a <code>InstantWinsAvailablePlayResults</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinsAvailablePlayResults} obj Optional instance to populate.
     * @return {module:model/InstantWinsAvailablePlayResults} The populated <code>InstantWinsAvailablePlayResults</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinsAvailablePlayResults();

            if (data.hasOwnProperty('remainingPlays')) {
                obj['remainingPlays'] = ApiClient.convertToType(data['remainingPlays'], 'Number');
            }
            if (data.hasOwnProperty('instantWinId')) {
                obj['instantWinId'] = ApiClient.convertToType(data['instantWinId'], 'String');
            }
        }
        return obj;
    }


}

/**
 * spins left
 * @member {Number} remainingPlays
 */
InstantWinsAvailablePlayResults.prototype['remainingPlays'] = undefined;

/**
 * @member {String} instantWinId
 */
InstantWinsAvailablePlayResults.prototype['instantWinId'] = undefined;






export default InstantWinsAvailablePlayResults;
