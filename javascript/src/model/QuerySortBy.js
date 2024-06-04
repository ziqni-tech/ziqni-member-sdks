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
import SortOrder from './SortOrder';

/**
 * The QuerySortBy model module.
 * @module model/QuerySortBy
 * @version 1.0.16
 */
class QuerySortBy {
    /**
     * Constructs a new <code>QuerySortBy</code>.
     * @alias module:model/QuerySortBy
     * @param queryField {String} The key of the parameter that is being searched
     * @param order {module:model/SortOrder} 
     */
    constructor(queryField, order) { 
        
        QuerySortBy.initialize(this, queryField, order);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, queryField, order) { 
        obj['queryField'] = queryField;
        obj['order'] = order;
    }

    /**
     * Constructs a <code>QuerySortBy</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/QuerySortBy} obj Optional instance to populate.
     * @return {module:model/QuerySortBy} The populated <code>QuerySortBy</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new QuerySortBy();

            if (data.hasOwnProperty('queryField')) {
                obj['queryField'] = ApiClient.convertToType(data['queryField'], 'String');
            }
            if (data.hasOwnProperty('order')) {
                obj['order'] = SortOrder.constructFromObject(data['order']);
            }
        }
        return obj;
    }


}

/**
 * The key of the parameter that is being searched
 * @member {String} queryField
 */
QuerySortBy.prototype['queryField'] = undefined;

/**
 * @member {module:model/SortOrder} order
 */
QuerySortBy.prototype['order'] = undefined;






export default QuerySortBy;

