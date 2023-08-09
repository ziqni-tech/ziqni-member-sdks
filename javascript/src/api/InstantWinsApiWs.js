
import apiClientStomp from "../ApiClientStomp";

export default class InstantWinsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  listInstantWins(instantWinRequest,  callback) {

    
    if (instantWinRequest === undefined || instantWinRequest === null) {
      throw new Error("Missing the required parameter 'instantWinRequest' when calling listInstantWins");
    }
    
    const message = { body: instantWinRequest };

    apiClientStomp.instance.sendRpc('/gapi/listInstantWins', message, callback);

  }

  playInstantWin(instantWinPlayRequest,  callback) {

    
    if (instantWinPlayRequest === undefined || instantWinPlayRequest === null) {
      throw new Error("Missing the required parameter 'instantWinPlayRequest' when calling playInstantWin");
    }
    
    const message = { body: instantWinPlayRequest };

    apiClientStomp.instance.sendRpc('/gapi/playInstantWin', message, callback);

  }

}