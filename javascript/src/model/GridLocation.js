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
 * The GridLocation model module.
 * @module model/GridLocation
 * @version 1.0.16
 */
class GridLocation {
    /**
     * Constructs a new <code>GridLocation</code>.
     * This struct contains two integer-valued fields, row and col . A GridLocation can be used to represent a location in a two-dimensional grid.
     * @alias module:model/GridLocation
     * @param row {Number} 
     * @param col {Number} 
     */
    constructor(row, col) { 
        
        GridLocation.initialize(this, row, col);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, row, col) { 
        obj['row'] = row;
        obj['col'] = col;
    }

    /**
     * Constructs a <code>GridLocation</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GridLocation} obj Optional instance to populate.
     * @return {module:model/GridLocation} The populated <code>GridLocation</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GridLocation();

            if (data.hasOwnProperty('row')) {
                obj['row'] = ApiClient.convertToType(data['row'], 'Number');
            }
            if (data.hasOwnProperty('col')) {
                obj['col'] = ApiClient.convertToType(data['col'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} row
 */
GridLocation.prototype['row'] = undefined;

/**
 * @member {Number} col
 */
GridLocation.prototype['col'] = undefined;






export default GridLocation;

