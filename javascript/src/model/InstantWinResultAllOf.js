/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.10
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import Award from './Award';
import InstantWinTile from './InstantWinTile';

/**
 * The InstantWinResultAllOf model module.
 * @module model/InstantWinResultAllOf
 * @version 1.0.10
 */
class InstantWinResultAllOf {
    /**
     * Constructs a new <code>InstantWinResultAllOf</code>.
     * @alias module:model/InstantWinResultAllOf
     * @param tiles {Array.<module:model/InstantWinTile>} 
     */
    constructor(tiles) { 
        
        InstantWinResultAllOf.initialize(this, tiles);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, tiles) { 
        obj['tiles'] = tiles;
    }

    /**
     * Constructs a <code>InstantWinResultAllOf</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InstantWinResultAllOf} obj Optional instance to populate.
     * @return {module:model/InstantWinResultAllOf} The populated <code>InstantWinResultAllOf</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InstantWinResultAllOf();

            if (data.hasOwnProperty('awards')) {
                obj['awards'] = ApiClient.convertToType(data['awards'], [Award]);
            }
            if (data.hasOwnProperty('tiles')) {
                obj['tiles'] = ApiClient.convertToType(data['tiles'], [InstantWinTile]);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<module:model/Award>} awards
 */
InstantWinResultAllOf.prototype['awards'] = undefined;

/**
 * @member {Array.<module:model/InstantWinTile>} tiles
 */
InstantWinResultAllOf.prototype['tiles'] = undefined;






export default InstantWinResultAllOf;

