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
import InstantWinResult from './InstantWinResult';

/**
 * The InstantWinPlayResults model module.
 * @module model/InstantWinPlayResults
 * @version 1.0.19
 */
class InstantWinPlayResults {
    /**
     * Constructs a new <code>InstantWinPlayResults</code>.
     * @alias module:model/InstantWinPlayResults
     * @param results {module:model/InstantWinResult} 
     */
    constructor(results) { 
        
        InstantWinPlayResults.initialize(this, results);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, results) { 
        obj['results'] = results;
    }

    /**
     * Constructs a <code>InstantWinPlayResults</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinPlayResults} obj Optional instance to populate.
     * @return {module:model/InstantWinPlayResults} The populated <code>InstantWinPlayResults</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinPlayResults();

            if (data.hasOwnProperty('remainingPlays')) {
                obj['remainingPlays'] = ApiClient.convertToType(data['remainingPlays'], 'Number');
            }
            if (data.hasOwnProperty('results')) {
                obj['results'] = InstantWinResult.constructFromObject(data['results']);
            }
        }
        return obj;
    }


}

/**
 * spins left
 * @member {Number} remainingPlays
 */
InstantWinPlayResults.prototype['remainingPlays'] = undefined;

/**
 * @member {module:model/InstantWinResult} results
 */
InstantWinPlayResults.prototype['results'] = undefined;






export default InstantWinPlayResults;

