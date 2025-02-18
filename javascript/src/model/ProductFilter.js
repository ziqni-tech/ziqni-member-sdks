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
import QuerySortBy from './QuerySortBy';

/**
 * The ProductFilter model module.
 * @module model/ProductFilter
 * @version 1.0.19
 */
class ProductFilter {
    /**
     * Constructs a new <code>ProductFilter</code>.
     * @alias module:model/ProductFilter
     */
    constructor() { 
        
        ProductFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ProductFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ProductFilter} obj Optional instance to populate.
     * @return {module:model/ProductFilter} The populated <code>ProductFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ProductFilter();

            if (data.hasOwnProperty('sortBy')) {
                obj['sortBy'] = ApiClient.convertToType(data['sortBy'], [QuerySortBy]);
            }
            if (data.hasOwnProperty('skip')) {
                obj['skip'] = ApiClient.convertToType(data['skip'], 'Number');
            }
            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
            if (data.hasOwnProperty('constraints')) {
                obj['constraints'] = ApiClient.convertToType(data['constraints'], ['String']);
            }
            if (data.hasOwnProperty('entityType')) {
                obj['entityType'] = ApiClient.convertToType(data['entityType'], 'String');
            }
            if (data.hasOwnProperty('entityIds')) {
                obj['entityIds'] = ApiClient.convertToType(data['entityIds'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * Allow data to be sorted by name, description, created, etc. The default is name. Sorting is not available on translations
 * @member {Array.<module:model/QuerySortBy>} sortBy
 */
ProductFilter.prototype['sortBy'] = undefined;

/**
 * Allows paging through the data. The default is zero. If the limit is set 20, and the skip is set to 20 then it will return the next 20 records i.e. page 2
 * @member {Number} skip
 */
ProductFilter.prototype['skip'] = undefined;

/**
 * Limit the result set. Default value is 20, maximum value is 50.
 * @member {Number} limit
 */
ProductFilter.prototype['limit'] = undefined;

/**
 * Specify the constraints that need to be applied to the filter. - empty (default) == search based on the provided criteria - productRefId == This means the entityId(s) provided are product reference identifiers - similarTo == Find product similar to the prouct ID(s) provided
 * @member {Array.<String>} constraints
 */
ProductFilter.prototype['constraints'] = undefined;

/**
 * This field determines the meaning of the IDs field - product (default) - competition - achievement.
 * @member {String} entityType
 */
ProductFilter.prototype['entityType'] = undefined;

/**
 * The entity id to search. The default is product id
 * @member {Array.<String>} entityIds
 */
ProductFilter.prototype['entityIds'] = undefined;






export default ProductFilter;

