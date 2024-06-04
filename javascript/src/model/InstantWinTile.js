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
import GridLocation from './GridLocation';
import RewardReduced from './RewardReduced';

/**
 * The InstantWinTile model module.
 * @module model/InstantWinTile
 * @version 1.0.16
 */
class InstantWinTile {
    /**
     * Constructs a new <code>InstantWinTile</code>.
     * @alias module:model/InstantWinTile
     * @param icon {String} The id to the image file
     * @param probability {Number} 
     * @param location {module:model/GridLocation} 
     */
    constructor(icon, probability, location) { 
        
        InstantWinTile.initialize(this, icon, probability, location);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, icon, probability, location) { 
        obj['icon'] = icon;
        obj['probability'] = probability;
        obj['location'] = location;
    }

    /**
     * Constructs a <code>InstantWinTile</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinTile} obj Optional instance to populate.
     * @return {module:model/InstantWinTile} The populated <code>InstantWinTile</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinTile();

            if (data.hasOwnProperty('icon')) {
                obj['icon'] = ApiClient.convertToType(data['icon'], 'String');
            }
            if (data.hasOwnProperty('iconLink')) {
                obj['iconLink'] = ApiClient.convertToType(data['iconLink'], 'String');
            }
            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('contraints')) {
                obj['contraints'] = ApiClient.convertToType(data['contraints'], ['String']);
            }
            if (data.hasOwnProperty('reward')) {
                obj['reward'] = RewardReduced.constructFromObject(data['reward']);
            }
            if (data.hasOwnProperty('probability')) {
                obj['probability'] = ApiClient.convertToType(data['probability'], 'Number');
            }
            if (data.hasOwnProperty('location')) {
                obj['location'] = GridLocation.constructFromObject(data['location']);
            }
        }
        return obj;
    }


}

/**
 * The id to the image file
 * @member {String} icon
 */
InstantWinTile.prototype['icon'] = undefined;

/**
 * The uri to this image
 * @member {String} iconLink
 */
InstantWinTile.prototype['iconLink'] = undefined;

/**
 * @member {String} text
 */
InstantWinTile.prototype['text'] = undefined;

/**
 * hasPrizes, glow
 * @member {Array.<String>} contraints
 */
InstantWinTile.prototype['contraints'] = undefined;

/**
 * @member {module:model/RewardReduced} reward
 */
InstantWinTile.prototype['reward'] = undefined;

/**
 * @member {Number} probability
 */
InstantWinTile.prototype['probability'] = undefined;

/**
 * @member {module:model/GridLocation} location
 */
InstantWinTile.prototype['location'] = undefined;






export default InstantWinTile;

