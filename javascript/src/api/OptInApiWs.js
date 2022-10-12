
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

  optInRequestStatus(optInRequestStatus,  callback) {

    
    if (optInRequestStatus === undefined || optInRequestStatus === null) {
      throw new Error("Missing the required parameter 'optInRequestStatus' when calling optInRequestStatus");
    }
    
    const message = { body: optInRequestStatus };

    apiClientStomp.instance.sendRpc('/gapi/optInRequestStatus', message, callback);

  }

}