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
import EntityType from './EntityType';
import RangeQuery from './RangeQuery';

/**
 * The OptinStatesFilter model module.
 * @module model/OptinStatesFilter
 * @version 1.0.19
 */
class OptinStatesFilter {
    /**
     * Constructs a new <code>OptinStatesFilter</code>.
     * @alias module:model/OptinStatesFilter
     */
    constructor() { 
        
        OptinStatesFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>OptinStatesFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/OptinStatesFilter} obj Optional instance to populate.
     * @return {module:model/OptinStatesFilter} The populated <code>OptinStatesFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new OptinStatesFilter();

            if (data.hasOwnProperty('entityTypes')) {
                obj['entityTypes'] = ApiClient.convertToType(data['entityTypes'], [EntityType]);
            }
            if (data.hasOwnProperty('ids')) {
                obj['ids'] = ApiClient.convertToType(data['ids'], ['String']);
            }
            if (data.hasOwnProperty('statusCodes')) {
                obj['statusCodes'] = RangeQuery.constructFromObject(data['statusCodes']);
            }
            if (data.hasOwnProperty('optInStatusCodes')) {
                obj['optInStatusCodes'] = RangeQuery.constructFromObject(data['optInStatusCodes']);
            }
            if (data.hasOwnProperty('skip')) {
                obj['skip'] = ApiClient.convertToType(data['skip'], 'Number');
            }
            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * Optionally provide entity types to filer by. Valid options are Achievement, Competition, or Contest
 * @member {Array.<module:model/EntityType>} entityTypes
 */
OptinStatesFilter.prototype['entityTypes'] = undefined;

/**
 * Optionally provide a list of identifiers for either Achievements, Competitions, or Contest
 * @member {Array.<String>} ids
 */
OptinStatesFilter.prototype['ids'] = undefined;

/**
 * @member {module:model/RangeQuery} statusCodes
 */
OptinStatesFilter.prototype['statusCodes'] = undefined;

/**
 * @member {module:model/RangeQuery} optInStatusCodes
 */
OptinStatesFilter.prototype['optInStatusCodes'] = undefined;

/**
 * The number of records to skip. Zero [0] is the defualt value
 * @member {Number} skip
 */
OptinStatesFilter.prototype['skip'] = undefined;

/**
 * Limit the results. The default is 20 if left empty
 * @member {Number} limit
 */
OptinStatesFilter.prototype['limit'] = undefined;






export default OptinStatesFilter;

