
import apiClientStomp from "../ApiClientStomp";

export default class EntityChangesApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  manageEntityChangeSubscription(entityChangeSubscriptionRequest,  callback) {

    
    if (entityChangeSubscriptionRequest === undefined || entityChangeSubscriptionRequest === null) {
      throw new Error("Missing the required parameter 'entityChangeSubscriptionRequest' when calling manageEntityChangeSubscription");
    }
    
    const message = { body: entityChangeSubscriptionRequest };

    apiClientStomp.instance.sendRpc('/gapi/manageEntityChangeSubscription', message, callback);

  }

}