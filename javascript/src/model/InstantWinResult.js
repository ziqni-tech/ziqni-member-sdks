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
import AwardReduced from './AwardReduced';
import InstantWinResultAllOf from './InstantWinResultAllOf';
import InstantWinTile from './InstantWinTile';
import ModelDefault from './ModelDefault';
import OptionalModelFields from './OptionalModelFields';

/**
 * The InstantWinResult model module.
 * @module model/InstantWinResult
 * @version 1.0.19
 */
class InstantWinResult {
    /**
     * Constructs a new <code>InstantWinResult</code>.
     * @alias module:model/InstantWinResult
     * @implements module:model/InstantWinResultAllOf
     * @implements module:model/ModelDefault
     * @implements module:model/OptionalModelFields
     * @param tiles {Array.<module:model/InstantWinTile>} 
     * @param id {String} Ziqni id of the model
     */
    constructor(tiles, id) { 
        InstantWinResultAllOf.initialize(this, tiles);ModelDefault.initialize(this, id);OptionalModelFields.initialize(this);
        InstantWinResult.initialize(this, tiles, id);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, tiles, id) { 
        obj['tiles'] = tiles;
        obj['id'] = id;
    }

    /**
     * Constructs a <code>InstantWinResult</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinResult} obj Optional instance to populate.
     * @return {module:model/InstantWinResult} The populated <code>InstantWinResult</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinResult();
            InstantWinResultAllOf.constructFromObject(data, obj);
            ModelDefault.constructFromObject(data, obj);
            OptionalModelFields.constructFromObject(data, obj);

            if (data.hasOwnProperty('awards')) {
                obj['awards'] = ApiClient.convertToType(data['awards'], [AwardReduced]);
            }
            if (data.hasOwnProperty('tiles')) {
                obj['tiles'] = ApiClient.convertToType(data['tiles'], [InstantWinTile]);
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('spaceName')) {
                obj['spaceName'] = ApiClient.convertToType(data['spaceName'], 'String');
            }
            if (data.hasOwnProperty('created')) {
                obj['created'] = ApiClient.convertToType(data['created'], 'Date');
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
 * @member {Array.<module:model/AwardReduced>} awards
 */
InstantWinResult.prototype['awards'] = undefined;

/**
 * @member {Array.<module:model/InstantWinTile>} tiles
 */
InstantWinResult.prototype['tiles'] = undefined;

/**
 * Ziqni id of the model
 * @member {String} id
 */
InstantWinResult.prototype['id'] = undefined;

/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
InstantWinResult.prototype['spaceName'] = undefined;

/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
InstantWinResult.prototype['created'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
InstantWinResult.prototype['customFields'] = undefined;

/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
InstantWinResult.prototype['tags'] = undefined;

/**
 * @member {Object.<String, String>} metadata
 */
InstantWinResult.prototype['metadata'] = undefined;


// Implement InstantWinResultAllOf interface:
/**
 * @member {Array.<module:model/AwardReduced>} awards
 */
InstantWinResultAllOf.prototype['awards'] = undefined;
/**
 * @member {Array.<module:model/InstantWinTile>} tiles
 */
InstantWinResultAllOf.prototype['tiles'] = undefined;
// Implement ModelDefault interface:
/**
 * Ziqni id of the model
 * @member {String} id
 */
ModelDefault.prototype['id'] = undefined;
/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
ModelDefault.prototype['spaceName'] = undefined;
/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
ModelDefault.prototype['created'] = undefined;
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




export default InstantWinResult;

