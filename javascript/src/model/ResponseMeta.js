/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.14
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ResponseMeta model module.
 * @module model/ResponseMeta
 * @version 1.0.14
 */
class ResponseMeta {
    /**
     * Constructs a new <code>ResponseMeta</code>.
     * Response metadata   
     * @alias module:model/ResponseMeta
     * @param totalRecordsFound {Number} 
     * @param skip {Number} 
     * @param limit {Number} 
     */
    constructor(totalRecordsFound, skip, limit) { 
        
        ResponseMeta.initialize(this, totalRecordsFound, skip, limit);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, totalRecordsFound, skip, limit) { 
        obj['totalRecordsFound'] = totalRecordsFound;
        obj['skip'] = skip;
        obj['limit'] = limit;
    }

    /**
     * Constructs a <code>ResponseMeta</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseMeta} obj Optional instance to populate.
     * @return {module:model/ResponseMeta} The populated <code>ResponseMeta</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseMeta();

            if (data.hasOwnProperty('totalRecordsFound')) {
                obj['totalRecordsFound'] = ApiClient.convertToType(data['totalRecordsFound'], 'Number');
            }
            if (data.hasOwnProperty('skip')) {
                obj['skip'] = ApiClient.convertToType(data['skip'], 'Number');
            }
            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
            if (data.hasOwnProperty('objectType')) {
                obj['objectType'] = ApiClient.convertToType(data['objectType'], 'String');
            }
            if (data.hasOwnProperty('resultCount')) {
                obj['resultCount'] = ApiClient.convertToType(data['resultCount'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} totalRecordsFound
 */
ResponseMeta.prototype['totalRecordsFound'] = undefined;

/**
 * @member {Number} skip
 */
ResponseMeta.prototype['skip'] = undefined;

/**
 * @member {Number} limit
 */
ResponseMeta.prototype['limit'] = undefined;

/**
 * @member {String} objectType
 */
ResponseMeta.prototype['objectType'] = undefined;

/**
 * @member {Number} resultCount
 */
ResponseMeta.prototype['resultCount'] = undefined;






export default ResponseMeta;

