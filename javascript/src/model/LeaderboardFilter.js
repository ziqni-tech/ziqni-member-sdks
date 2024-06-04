/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.16
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The LeaderboardFilter model module.
 * @module model/LeaderboardFilter
 * @version 1.0.16
 */
class LeaderboardFilter {
    /**
     * Constructs a new <code>LeaderboardFilter</code>.
     * @alias module:model/LeaderboardFilter
     * @param topRanksToInclude {Number} Include rank from zero [0] none, then one [1] to the rank specified here. The maximum allowed is 50
     */
    constructor(topRanksToInclude) { 
        
        LeaderboardFilter.initialize(this, topRanksToInclude);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, topRanksToInclude) { 
        obj['topRanksToInclude'] = topRanksToInclude;
    }

    /**
     * Constructs a <code>LeaderboardFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/LeaderboardFilter} obj Optional instance to populate.
     * @return {module:model/LeaderboardFilter} The populated <code>LeaderboardFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new LeaderboardFilter();

            if (data.hasOwnProperty('topRanksToInclude')) {
                obj['topRanksToInclude'] = ApiClient.convertToType(data['topRanksToInclude'], 'Number');
            }
            if (data.hasOwnProperty('ranksAboveToInclude')) {
                obj['ranksAboveToInclude'] = ApiClient.convertToType(data['ranksAboveToInclude'], 'Number');
            }
            if (data.hasOwnProperty('ranksBelowToInclude')) {
                obj['ranksBelowToInclude'] = ApiClient.convertToType(data['ranksBelowToInclude'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * Include rank from zero [0] none, then one [1] to the rank specified here. The maximum allowed is 50
 * @member {Number} topRanksToInclude
 */
LeaderboardFilter.prototype['topRanksToInclude'] = undefined;

/**
 * Include ranks above member position. The maximum allowed is 20
 * @member {Number} ranksAboveToInclude
 */
LeaderboardFilter.prototype['ranksAboveToInclude'] = undefined;

/**
 * Include ranks below member position. The maximum allowed is 20
 * @member {Number} ranksBelowToInclude
 */
LeaderboardFilter.prototype['ranksBelowToInclude'] = undefined;






export default LeaderboardFilter;

