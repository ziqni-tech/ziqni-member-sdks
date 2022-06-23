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
/**
* Enum class StrategyType.
* @enum {}
* @readonly
*/

export default class StrategyType {
  /**
   * value: "TotalCumulative"
   * @const
   */
  "TotalCumulative" = "TotalCumulative";
  /**
   * value: "SumBest"
   * @const
   */

  "SumBest" = "SumBest";
  /**
   * value: "LimitedTo"
   * @const
   */

  "LimitedTo" = "LimitedTo";
  /**
   * value: "FirstTo"
   * @const
   */

  "FirstTo" = "FirstTo";
  /**
  * Returns a <code>StrategyType</code> enum value from a Javascript object name.
  * @param {Object} data The plain JavaScript object containing the name of the enum value.
  * @return {module:model/StrategyType} The enum <code>StrategyType</code> value.
  */

  static constructFromObject(object) {
    return object;
  }

}