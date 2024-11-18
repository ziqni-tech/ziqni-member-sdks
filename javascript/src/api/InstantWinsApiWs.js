
import apiClientStomp from "../ApiClientStomp";

export default class InstantWinsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  donateInstantWinPlays(instantWinDonateRequest,  callback) {

    
    if (instantWinDonateRequest === undefined || instantWinDonateRequest === null) {
      throw new Error("Missing the required parameter 'instantWinDonateRequest' when calling donateInstantWinPlays");
    }
    
    const message = { body: instantWinDonateRequest };

    apiClientStomp.instance.sendRpc('/gapi/donateInstantWinPlays', message, callback);

  }

  getInstantWinAvailablePlays(instantWinAvailablePlaysRequest,  callback) {

    
    if (instantWinAvailablePlaysRequest === undefined || instantWinAvailablePlaysRequest === null) {
      throw new Error("Missing the required parameter 'instantWinAvailablePlaysRequest' when calling getInstantWinAvailablePlays");
    }
    
    const message = { body: instantWinAvailablePlaysRequest };

    apiClientStomp.instance.sendRpc('/gapi/getInstantWinAvailablePlays', message, callback);

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