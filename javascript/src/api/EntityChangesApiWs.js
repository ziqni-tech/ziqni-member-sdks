
import apiClientStomp from "../ApiClientStomp";

export default class EntityChangesApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  subscribeToEntityChanges(entityChangeSubscriptionRequest,  callback) {
    
    if (entityChangeSubscriptionRequest === undefined || entityChangeSubscriptionRequest === null) {
      throw new Error("Missing the required parameter 'entityChangeSubscriptionRequest' when calling subscribeToEntityChanges");
    }
    
    const message = { body: entityChangeSubscriptionRequest };

    apiClientStomp.instance.sendSys('/gapi/manageEntityChangeSubscription', message, callback);

  }

}