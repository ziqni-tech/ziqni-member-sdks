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
import RankingStrategy from './RankingStrategy';
import ScoringStrategy from './ScoringStrategy';
import StrategyType from './StrategyType';

/**
 * The Strategy model module.
 * @module model/Strategy
 * @version 0.0.1
 */
class Strategy {
    /**
     * Constructs a new <code>Strategy</code>.
     * @alias module:model/Strategy
     */
    constructor() { 
        
        Strategy.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Strategy</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Strategy} obj Optional instance to populate.
     * @return {module:model/Strategy} The populated <code>Strategy</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Strategy();

            if (data.hasOwnProperty('strategyType')) {
                obj['strategyType'] = StrategyType.constructFromObject(data['strategyType']);
            }
            if (data.hasOwnProperty('rankingStrategy')) {
                obj['rankingStrategy'] = RankingStrategy.constructFromObject(data['rankingStrategy']);
            }
            if (data.hasOwnProperty('scoringStrategy')) {
                obj['scoringStrategy'] = ScoringStrategy.constructFromObject(data['scoringStrategy']);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/StrategyType} strategyType
 */
Strategy.prototype['strategyType'] = undefined;

/**
 * @member {module:model/RankingStrategy} rankingStrategy
 */
Strategy.prototype['rankingStrategy'] = undefined;

/**
 * @member {module:model/ScoringStrategy} scoringStrategy
 */
Strategy.prototype['scoringStrategy'] = undefined;






export default Strategy;

