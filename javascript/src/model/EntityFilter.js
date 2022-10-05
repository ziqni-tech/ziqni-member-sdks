import ApiClient from '../ApiClient';
import EntityType from './EntityType';

/**
 * The EntityFilter model module.
 * @module model/EntityFilter
 * @version 0.0.1
 */
class EntityFilter {
    /**
     * Constructs a new <code>EntityFilter</code>.
     * @alias module:model/EntityFilter
     */
    constructor() {

        EntityFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) {
    }

    /**
     * Constructs a <code>EntityFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Array} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityFilter} obj Optional instance to populate.
     * @return {module:model/EntityFilter} The populated <code>EntityFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityFilter();

            obj = data.map((item) => {
                if (item.hasOwnProperty('entityType')) {
                    item['entityType'] = ApiClient.convertToType(item['entityType'], 'String');
                }

                if (item.hasOwnProperty('entityIds')) {
                    item['entityIds'] = ApiClient.convertToType(item['entityIds'], ['String']);
                }

                return item
            })
        }

        return obj;
    }
}


EntityType.prototype['entityType'] = undefined;


EntityType.prototype['entityIds'] = undefined;

export default EntityFilter;