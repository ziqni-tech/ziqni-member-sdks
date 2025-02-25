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
import ProductFilter from './ProductFilter';

/**
 * The ProductRequest model module.
 * @module model/ProductRequest
 * @version 1.0.19
 */
class ProductRequest {
    /**
     * Constructs a new <code>ProductRequest</code>.
     * @alias module:model/ProductRequest
     */
    constructor() { 
        
        ProductRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ProductRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ProductRequest} obj Optional instance to populate.
     * @return {module:model/ProductRequest} The populated <code>ProductRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ProductRequest();

            if (data.hasOwnProperty('languageKey')) {
                obj['languageKey'] = ApiClient.convertToType(data['languageKey'], 'String');
            }
            if (data.hasOwnProperty('productFilter')) {
                obj['productFilter'] = ProductFilter.constructFromObject(data['productFilter']);
            }
        }
        return obj;
    }


}

/**
 * The language codes can be found in the settings/transalations section of the back office
 * @member {String} languageKey
 */
ProductRequest.prototype['languageKey'] = undefined;

/**
 * @member {module:model/ProductFilter} productFilter
 */
ProductRequest.prototype['productFilter'] = undefined;






export default ProductRequest;

