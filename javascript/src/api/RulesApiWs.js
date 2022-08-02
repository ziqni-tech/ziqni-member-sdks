
import apiClientStomp from "../ApiClientStomp";

export default class RulesApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getRules(entityRequest,  callback) {

    
    if (entityRequest === undefined || entityRequest === null) {
      throw new Error("Missing the required parameter 'entityRequest' when calling getRules");
    }
    
    const message = { body: entityRequest };

    apiClientStomp.instance.sendRpc('/gapi/getRules', message, callback);

  }

}