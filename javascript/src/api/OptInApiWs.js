
import apiClientStomp from "../ApiClientStomp";

export default class OptInApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  manageOptin(manageOptinRequest,  callback) {

    
    if (manageOptinRequest === undefined || manageOptinRequest === null) {
      throw new Error("Missing the required parameter 'manageOptinRequest' when calling manageOptin");
    }
    
    const message = { body: manageOptinRequest };

    apiClientStomp.instance.sendRpc('/gapi/manageOptin', message, callback);

  }

  optInStates(optInStatesRequest,  callback) {

    
    if (optInStatesRequest === undefined || optInStatesRequest === null) {
      throw new Error("Missing the required parameter 'optInStatesRequest' when calling optInStates");
    }
    
    const message = { body: optInStatesRequest };

    apiClientStomp.instance.sendRpc('/gapi/optInStates', message, callback);

  }

}