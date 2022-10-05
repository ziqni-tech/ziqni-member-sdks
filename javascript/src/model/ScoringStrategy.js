/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
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
 * The ScoringStrategy model module.
 * @module model/ScoringStrategy
 * @version 1.0.0
 */
class ScoringStrategy {
    /**
     * Constructs a new <code>ScoringStrategy</code>.
     * @alias module:model/ScoringStrategy
     */
    constructor() { 
        
        ScoringStrategy.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoringStrategy</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoringStrategy} obj Optional instance to populate.
     * @return {module:model/ScoringStrategy} The populated <code>ScoringStrategy</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoringStrategy();

            if (data.hasOwnProperty('limitUpdatesTo')) {
                obj['limitUpdatesTo'] = ApiClient.convertToType(data['limitUpdatesTo'], 'Number');
            }
            if (data.hasOwnProperty('sumBestXOf')) {
                obj['sumBestXOf'] = ApiClient.convertToType(data['sumBestXOf'], 'Number');
            }
            if (data.hasOwnProperty('lastUpdateTimeStamp')) {
                obj['lastUpdateTimeStamp'] = ApiClient.convertToType(data['lastUpdateTimeStamp'], 'Number');
            }
            if (data.hasOwnProperty('recordTimeWhenSumReaches')) {
                obj['recordTimeWhenSumReaches'] = ApiClient.convertToType(data['recordTimeWhenSumReaches'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * The scoring strategies types \"SumBest\" value
 * @member {Number} limitUpdatesTo
 */
ScoringStrategy.prototype['limitUpdatesTo'] = undefined;

/**
 * The scoring strategies types \"LimitedTo\" value
 * @member {Number} sumBestXOf
 */
ScoringStrategy.prototype['sumBestXOf'] = undefined;

/**
 * The scoring strategies types \"FirstTo\" value
 * @member {Number} lastUpdateTimeStamp
 */
ScoringStrategy.prototype['lastUpdateTimeStamp'] = undefined;

/**
 * Not supported at the moment
 * @member {Number} recordTimeWhenSumReaches
 */
ScoringStrategy.prototype['recordTimeWhenSumReaches'] = undefined;






export default ScoringStrategy;

