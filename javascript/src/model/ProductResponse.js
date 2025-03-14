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
import Error from './Error';
import Product from './Product';
import ResponseMeta from './ResponseMeta';

/**
 * The ProductResponse model module.
 * @module model/ProductResponse
 * @version 1.0.19
 */
class ProductResponse {
    /**
     * Constructs a new <code>ProductResponse</code>.
     * This is a Contest Response
     * @alias module:model/ProductResponse
     */
    constructor() { 
        
        ProductResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ProductResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ProductResponse} obj Optional instance to populate.
     * @return {module:model/ProductResponse} The populated <code>ProductResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ProductResponse();

            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ResponseMeta.constructFromObject(data['meta']);
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], [Product]);
            }
            if (data.hasOwnProperty('errors')) {
                obj['errors'] = ApiClient.convertToType(data['errors'], [Error]);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseMeta} meta
 */
ProductResponse.prototype['meta'] = undefined;

/**
 * @member {Array.<module:model/Product>} data
 */
ProductResponse.prototype['data'] = undefined;

/**
 * @member {Array.<module:model/Error>} errors
 */
ProductResponse.prototype['errors'] = undefined;






export default ProductResponse;

