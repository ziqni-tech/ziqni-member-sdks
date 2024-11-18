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
import DependantOn from './DependantOn';
import EntityType from './EntityType';
import OptionalModelFields from './OptionalModelFields';
import RewardAllOf from './RewardAllOf';
import RewardTypeReduced from './RewardTypeReduced';

/**
 * The Reward model module.
 * @module model/Reward
 * @version 1.0.19
 */
class Reward {
    /**
     * Constructs a new <code>Reward</code>.
     * @alias module:model/Reward
     * @implements module:model/RewardAllOf
     * @implements module:model/OptionalModelFields
     */
    constructor() { 
        RewardAllOf.initialize(this);OptionalModelFields.initialize(this);
        Reward.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Reward</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Reward} obj Optional instance to populate.
     * @return {module:model/Reward} The populated <code>Reward</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Reward();
            RewardAllOf.constructFromObject(data, obj);
            OptionalModelFields.constructFromObject(data, obj);

            if (data.hasOwnProperty('probability')) {
                obj['probability'] = ApiClient.convertToType(data['probability'], 'Number');
            }
            if (data.hasOwnProperty('entityType')) {
                obj['entityType'] = EntityType.constructFromObject(data['entityType']);
            }
            if (data.hasOwnProperty('entityId')) {
                obj['entityId'] = ApiClient.convertToType(data['entityId'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('rewardRank')) {
                obj['rewardRank'] = ApiClient.convertToType(data['rewardRank'], 'String');
            }
            if (data.hasOwnProperty('rewardValue')) {
                obj['rewardValue'] = ApiClient.convertToType(data['rewardValue'], 'Number');
            }
            if (data.hasOwnProperty('rewardType')) {
                obj['rewardType'] = RewardTypeReduced.constructFromObject(data['rewardType']);
            }
            if (data.hasOwnProperty('iconLink')) {
                obj['iconLink'] = ApiClient.convertToType(data['iconLink'], 'String');
            }
            if (data.hasOwnProperty('icon')) {
                obj['icon'] = ApiClient.convertToType(data['icon'], 'String');
            }
            if (data.hasOwnProperty('spaceName')) {
                obj['spaceName'] = ApiClient.convertToType(data['spaceName'], 'String');
            }
            if (data.hasOwnProperty('issueLimit')) {
                obj['issueLimit'] = ApiClient.convertToType(data['issueLimit'], 'Number');
            }
            if (data.hasOwnProperty('memberTagsFilter')) {
                obj['memberTagsFilter'] = DependantOn.constructFromObject(data['memberTagsFilter']);
            }
            if (data.hasOwnProperty('delay')) {
                obj['delay'] = ApiClient.convertToType(data['delay'], 'Number');
            }
            if (data.hasOwnProperty('pointInTime')) {
                obj['pointInTime'] = ApiClient.convertToType(data['pointInTime'], 'Date');
            }
            if (data.hasOwnProperty('period')) {
                obj['period'] = ApiClient.convertToType(data['period'], 'Number');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('customFields')) {
                obj['customFields'] = ApiClient.convertToType(data['customFields'], {'String': Object});
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('metadata')) {
                obj['metadata'] = ApiClient.convertToType(data['metadata'], {'String': 'String'});
            }
        }
        return obj;
    }


}

/**
 * What is the probability of winning this reward
 * @member {Number} probability
 */
Reward.prototype['probability'] = undefined;

/**
 * @member {module:model/EntityType} entityType
 */
Reward.prototype['entityType'] = undefined;

/**
 * A unique identifier of an achievement or contest. Dependant on entityType
 * @member {String} entityId
 */
Reward.prototype['entityId'] = undefined;

/**
 * The name of a reward
 * @member {String} name
 */
Reward.prototype['name'] = undefined;

/**
 * The description of a Reward
 * @member {String} description
 */
Reward.prototype['description'] = undefined;

/**
 * If used in the context of contest this will associate with the rank of the leaderboard
 * @member {String} rewardRank
 */
Reward.prototype['rewardRank'] = undefined;

/**
 * Numerical value of the reward that will be issued based on the reward type
 * @member {Number} rewardValue
 */
Reward.prototype['rewardValue'] = undefined;

/**
 * @member {module:model/RewardTypeReduced} rewardType
 */
Reward.prototype['rewardType'] = undefined;

/**
 * Link to the icon
 * @member {String} iconLink
 */
Reward.prototype['iconLink'] = undefined;

/**
 * id the icon
 * @member {String} icon
 */
Reward.prototype['icon'] = undefined;

/**
 * spaceName
 * @member {String} spaceName
 */
Reward.prototype['spaceName'] = undefined;

/**
 * how many of thsese rewards are
 * @member {Number} issueLimit
 */
Reward.prototype['issueLimit'] = undefined;

/**
 * @member {module:model/DependantOn} memberTagsFilter
 */
Reward.prototype['memberTagsFilter'] = undefined;

/**
 * Delay of issuing a reward in minutes
 * @member {Number} delay
 */
Reward.prototype['delay'] = undefined;

/**
 * ISO8601 timestamp for when a Reward is available until a specific point in time. All records are stored in UTC time zone
 * @member {Date} pointInTime
 */
Reward.prototype['pointInTime'] = undefined;

/**
 * Reward available for a period of time from issuing in minutes
 * @member {Number} period
 */
Reward.prototype['period'] = undefined;

/**
 * Unique system identifier of a Main Rule
 * @member {String} id
 */
Reward.prototype['id'] = undefined;

/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
Reward.prototype['constraints'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
Reward.prototype['customFields'] = undefined;

/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
Reward.prototype['tags'] = undefined;

/**
 * @member {Object.<String, String>} metadata
 */
Reward.prototype['metadata'] = undefined;


// Implement RewardAllOf interface:
/**
 * What is the probability of winning this reward
 * @member {Number} probability
 */
RewardAllOf.prototype['probability'] = undefined;
/**
 * @member {module:model/EntityType} entityType
 */
RewardAllOf.prototype['entityType'] = undefined;
/**
 * A unique identifier of an achievement or contest. Dependant on entityType
 * @member {String} entityId
 */
RewardAllOf.prototype['entityId'] = undefined;
/**
 * The name of a reward
 * @member {String} name
 */
RewardAllOf.prototype['name'] = undefined;
/**
 * The description of a Reward
 * @member {String} description
 */
RewardAllOf.prototype['description'] = undefined;
/**
 * If used in the context of contest this will associate with the rank of the leaderboard
 * @member {String} rewardRank
 */
RewardAllOf.prototype['rewardRank'] = undefined;
/**
 * Numerical value of the reward that will be issued based on the reward type
 * @member {Number} rewardValue
 */
RewardAllOf.prototype['rewardValue'] = undefined;
/**
 * @member {module:model/RewardTypeReduced} rewardType
 */
RewardAllOf.prototype['rewardType'] = undefined;
/**
 * Link to the icon
 * @member {String} iconLink
 */
RewardAllOf.prototype['iconLink'] = undefined;
/**
 * id the icon
 * @member {String} icon
 */
RewardAllOf.prototype['icon'] = undefined;
/**
 * spaceName
 * @member {String} spaceName
 */
RewardAllOf.prototype['spaceName'] = undefined;
/**
 * how many of thsese rewards are
 * @member {Number} issueLimit
 */
RewardAllOf.prototype['issueLimit'] = undefined;
/**
 * @member {module:model/DependantOn} memberTagsFilter
 */
RewardAllOf.prototype['memberTagsFilter'] = undefined;
/**
 * Delay of issuing a reward in minutes
 * @member {Number} delay
 */
RewardAllOf.prototype['delay'] = undefined;
/**
 * ISO8601 timestamp for when a Reward is available until a specific point in time. All records are stored in UTC time zone
 * @member {Date} pointInTime
 */
RewardAllOf.prototype['pointInTime'] = undefined;
/**
 * Reward available for a period of time from issuing in minutes
 * @member {Number} period
 */
RewardAllOf.prototype['period'] = undefined;
/**
 * Unique system identifier of a Main Rule
 * @member {String} id
 */
RewardAllOf.prototype['id'] = undefined;
/**
 * Additional constraints
 * @member {Array.<String>} constraints
 */
RewardAllOf.prototype['constraints'] = undefined;
// Implement OptionalModelFields interface:
/**
 * @member {Object.<String, Object>} customFields
 */
OptionalModelFields.prototype['customFields'] = undefined;
/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
OptionalModelFields.prototype['tags'] = undefined;
/**
 * @member {Object.<String, String>} metadata
 */
OptionalModelFields.prototype['metadata'] = undefined;




export default Reward;

