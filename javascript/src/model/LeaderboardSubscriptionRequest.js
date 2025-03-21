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
import LeaderboardFilter from './LeaderboardFilter';

/**
 * The LeaderboardSubscriptionRequest model module.
 * @module model/LeaderboardSubscriptionRequest
 * @version 1.0.19
 */
class LeaderboardSubscriptionRequest {
    /**
     * Constructs a new <code>LeaderboardSubscriptionRequest</code>.
     * @alias module:model/LeaderboardSubscriptionRequest
     * @param entityId {String} Either the competition, contest, tournament or match identifier
     * @param action {module:model/LeaderboardSubscriptionRequest.ActionEnum} Either subscribe or unsubscribe from the data feed
     */
    constructor(entityId, action) { 
        
        LeaderboardSubscriptionRequest.initialize(this, entityId, action);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, entityId, action) { 
        obj['entityId'] = entityId;
        obj['action'] = action;
    }

    /**
     * Constructs a <code>LeaderboardSubscriptionRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/LeaderboardSubscriptionRequest} obj Optional instance to populate.
     * @return {module:model/LeaderboardSubscriptionRequest} The populated <code>LeaderboardSubscriptionRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new LeaderboardSubscriptionRequest();

            if (data.hasOwnProperty('leaderboardFilter')) {
                obj['leaderboardFilter'] = LeaderboardFilter.constructFromObject(data['leaderboardFilter']);
            }
            if (data.hasOwnProperty('entityId')) {
                obj['entityId'] = ApiClient.convertToType(data['entityId'], 'String');
            }
            if (data.hasOwnProperty('action')) {
                obj['action'] = ApiClient.convertToType(data['action'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/LeaderboardFilter} leaderboardFilter
 */
LeaderboardSubscriptionRequest.prototype['leaderboardFilter'] = undefined;

/**
 * Either the competition, contest, tournament or match identifier
 * @member {String} entityId
 */
LeaderboardSubscriptionRequest.prototype['entityId'] = undefined;

/**
 * Either subscribe or unsubscribe from the data feed
 * @member {module:model/LeaderboardSubscriptionRequest.ActionEnum} action
 */
LeaderboardSubscriptionRequest.prototype['action'] = undefined;





/**
 * Allowed values for the <code>action</code> property.
 * @enum {String}
 * @readonly
 */
LeaderboardSubscriptionRequest['ActionEnum'] = {

    /**
     * value: "Subscribe"
     * @const
     */
    "Subscribe": "Subscribe",

    /**
     * value: "Unsubscribe"
     * @const
     */
    "Unsubscribe": "Unsubscribe"
};



export default LeaderboardSubscriptionRequest;

