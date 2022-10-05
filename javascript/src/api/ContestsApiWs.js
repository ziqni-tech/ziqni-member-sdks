
import apiClientStomp from "../ApiClientStomp";

export default class ContestsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getContests(contestRequest,  callback) {

    
    if (contestRequest === undefined || contestRequest === null) {
      throw new Error("Missing the required parameter 'contestRequest' when calling getContests");
    }
    
    const message = { body: contestRequest };

    apiClientStomp.instance.sendRpc('/gapi/getContests', message, callback);

  }

}