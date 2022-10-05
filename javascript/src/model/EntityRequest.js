import ApiClient from '../ApiClient';
import QuerySortBy from './QuerySortBy';
import EntityFilter from './EntityFilter';

class EntityRequest {
    /**
     * Constructs a new <code>RewardRequest</code>.
     * @alias module:model/RewardRequest
     * @param entityId {String}
     */
    constructor(entityId) {

        EntityRequest.initialize(this, entityId);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, entityFilter) {
        obj['entityFilter'] = entityFilter;
    }

    /**
     * Constructs a <code>EntityRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityRequest} obj Optional instance to populate.
     * @return {module:model/EntityRequest} The populated <code>EntityRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityRequest();

            if (data.hasOwnProperty('entityFilter')) {
                obj['entityFilter'] = EntityFilter.constructFromObject(data['entityFilter']);
            }

            if (data.hasOwnProperty('sortBy')) {
                obj['sortBy'] = ApiClient.convertToType(data['sortBy'], [QuerySortBy]);
            }

            if (data.hasOwnProperty('skip')) {
                obj['skip'] = ApiClient.convertToType(data['skip'], 'Number');
            }

            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
        }

        return obj;
    }


}

/**
 * @member {String} entityId
 */
// EntityRequest.prototype['entityId'] = undefined;






export default EntityRequest;