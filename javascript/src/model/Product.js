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
import ActionTypeAdjustmentFactor from './ActionTypeAdjustmentFactor';
import OptionalModelFields from './OptionalModelFields';
import ProductAllOf from './ProductAllOf';

/**
 * The Product model module.
 * @module model/Product
 * @version 1.0.14
 */
class Product {
    /**
     * Constructs a new <code>Product</code>.
     * @alias module:model/Product
     * @implements module:model/ProductAllOf
     * @implements module:model/OptionalModelFields
     * @param id {String} A unique system generated identifier
     * @param spaceName {String} This is the space name which is linked to the account
     * @param created {Date} ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
     */
    constructor(id, spaceName, created) { 
        ProductAllOf.initialize(this, id, spaceName, created);OptionalModelFields.initialize(this);
        Product.initialize(this, id, spaceName, created);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, spaceName, created) { 
        obj['id'] = id;
        obj['spaceName'] = spaceName;
        obj['created'] = created;
    }

    /**
     * Constructs a <code>Product</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Product} obj Optional instance to populate.
     * @return {module:model/Product} The populated <code>Product</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Product();
            ProductAllOf.constructFromObject(data, obj);
            OptionalModelFields.constructFromObject(data, obj);

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('spaceName')) {
                obj['spaceName'] = ApiClient.convertToType(data['spaceName'], 'String');
            }
            if (data.hasOwnProperty('created')) {
                obj['created'] = ApiClient.convertToType(data['created'], 'Date');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('adjustmentFactor')) {
                obj['adjustmentFactor'] = ApiClient.convertToType(data['adjustmentFactor'], 'Number');
            }
            if (data.hasOwnProperty('productRefId')) {
                obj['productRefId'] = ApiClient.convertToType(data['productRefId'], 'String');
            }
            if (data.hasOwnProperty('productType')) {
                obj['productType'] = ApiClient.convertToType(data['productType'], 'String');
            }
            if (data.hasOwnProperty('iconLink')) {
                obj['iconLink'] = ApiClient.convertToType(data['iconLink'], 'String');
            }
            if (data.hasOwnProperty('bannerLink')) {
                obj['bannerLink'] = ApiClient.convertToType(data['bannerLink'], 'String');
            }
            if (data.hasOwnProperty('bannerLowResolutionLink')) {
                obj['bannerLowResolutionLink'] = ApiClient.convertToType(data['bannerLowResolutionLink'], 'String');
            }
            if (data.hasOwnProperty('bannerHighResolutionLink')) {
                obj['bannerHighResolutionLink'] = ApiClient.convertToType(data['bannerHighResolutionLink'], 'String');
            }
            if (data.hasOwnProperty('actionTypeAdjustmentFactors')) {
                obj['actionTypeAdjustmentFactors'] = ApiClient.convertToType(data['actionTypeAdjustmentFactors'], [ActionTypeAdjustmentFactor]);
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
 * A unique system generated identifier
 * @member {String} id
 */
Product.prototype['id'] = undefined;

/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
Product.prototype['spaceName'] = undefined;

/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
Product.prototype['created'] = undefined;

/**
 * The name of the product
 * @member {String} name
 */
Product.prototype['name'] = undefined;

/**
 * The description of the product for your reference
 * @member {String} description
 */
Product.prototype['description'] = undefined;

/**
 * The multiplier to apply to source values received for this product events
 * @member {Number} adjustmentFactor
 */
Product.prototype['adjustmentFactor'] = undefined;

/**
 * The reference to this product in your system. The reference identifier can not be changed after the product has been created
 * @member {String} productRefId
 */
Product.prototype['productRefId'] = undefined;

/**
 * The type to this product in your system.
 * @member {String} productType
 */
Product.prototype['productType'] = undefined;

/**
 * Link to the icon
 * @member {String} iconLink
 */
Product.prototype['iconLink'] = undefined;

/**
 * Link to the banner
 * @member {String} bannerLink
 */
Product.prototype['bannerLink'] = undefined;

/**
 * Link to the bannerLowResolution
 * @member {String} bannerLowResolutionLink
 */
Product.prototype['bannerLowResolutionLink'] = undefined;

/**
 * Link to the bannerHighResolution
 * @member {String} bannerHighResolutionLink
 */
Product.prototype['bannerHighResolutionLink'] = undefined;

/**
 * @member {Array.<module:model/ActionTypeAdjustmentFactor>} actionTypeAdjustmentFactors
 */
Product.prototype['actionTypeAdjustmentFactors'] = undefined;

/**
 * @member {Object.<String, Object>} customFields
 */
Product.prototype['customFields'] = undefined;

/**
 * A list of id's used to tag models
 * @member {Array.<String>} tags
 */
Product.prototype['tags'] = undefined;

/**
 * @member {Object.<String, String>} metadata
 */
Product.prototype['metadata'] = undefined;


// Implement ProductAllOf interface:
/**
 * A unique system generated identifier
 * @member {String} id
 */
ProductAllOf.prototype['id'] = undefined;
/**
 * This is the space name which is linked to the account
 * @member {String} spaceName
 */
ProductAllOf.prototype['spaceName'] = undefined;
/**
 * ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
 * @member {Date} created
 */
ProductAllOf.prototype['created'] = undefined;
/**
 * The name of the product
 * @member {String} name
 */
ProductAllOf.prototype['name'] = undefined;
/**
 * The description of the product for your reference
 * @member {String} description
 */
ProductAllOf.prototype['description'] = undefined;
/**
 * The multiplier to apply to source values received for this product events
 * @member {Number} adjustmentFactor
 */
ProductAllOf.prototype['adjustmentFactor'] = undefined;
/**
 * The reference to this product in your system. The reference identifier can not be changed after the product has been created
 * @member {String} productRefId
 */
ProductAllOf.prototype['productRefId'] = undefined;
/**
 * The type to this product in your system.
 * @member {String} productType
 */
ProductAllOf.prototype['productType'] = undefined;
/**
 * Link to the icon
 * @member {String} iconLink
 */
ProductAllOf.prototype['iconLink'] = undefined;
/**
 * Link to the banner
 * @member {String} bannerLink
 */
ProductAllOf.prototype['bannerLink'] = undefined;
/**
 * Link to the bannerLowResolution
 * @member {String} bannerLowResolutionLink
 */
ProductAllOf.prototype['bannerLowResolutionLink'] = undefined;
/**
 * Link to the bannerHighResolution
 * @member {String} bannerHighResolutionLink
 */
ProductAllOf.prototype['bannerHighResolutionLink'] = undefined;
/**
 * @member {Array.<module:model/ActionTypeAdjustmentFactor>} actionTypeAdjustmentFactors
 */
ProductAllOf.prototype['actionTypeAdjustmentFactors'] = undefined;
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




export default Product;

