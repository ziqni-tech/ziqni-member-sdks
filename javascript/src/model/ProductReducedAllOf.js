/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.11
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ProductReducedAllOf model module.
 * @module model/ProductReducedAllOf
 * @version 1.0.11
 */
class ProductReducedAllOf {
    /**
     * Constructs a new <code>ProductReducedAllOf</code>.
     * @alias module:model/ProductReducedAllOf
     */
    constructor() { 
        
        ProductReducedAllOf.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ProductReducedAllOf</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ProductReducedAllOf} obj Optional instance to populate.
     * @return {module:model/ProductReducedAllOf} The populated <code>ProductReducedAllOf</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ProductReducedAllOf();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('productRefId')) {
                obj['productRefId'] = ApiClient.convertToType(data['productRefId'], 'String');
            }
            if (data.hasOwnProperty('customFields')) {
                obj['customFields'] = ApiClient.convertToType(data['customFields'], {'String': Object});
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
        }
        return obj;
    }


}

/**
 * The name of the product
 * @member {String} name
 */
ProductReducedAllOf.prototype['name'] = undefined;

/**
 * The reference to this product in your system. The reference identifier can not be changed after the product has been created
 * @member {String} productRefId
 */
ProductReducedAllOf.prototype['productRefId'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
ProductReducedAllOf.prototype['customFields'] = undefined;

/**
 * Unique system identifier of a Main Rule
 * @member {String} id
 */
ProductReducedAllOf.prototype['id'] = undefined;






export default ProductReducedAllOf;

