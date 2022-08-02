
import apiClientStomp from "../ApiClientStomp";

export default class AwardsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  claimAwards(claimAwardRequest,  callback) {

    
    if (claimAwardRequest === undefined || claimAwardRequest === null) {
      throw new Error("Missing the required parameter 'claimAwardRequest' when calling claimAwards");
    }
    
    const message = { body: claimAwardRequest };

    apiClientStomp.instance.sendRpc('/gapi/claimAwards', message, callback);

  }

  getAwards(awardRequest,  callback) {

    
    if (awardRequest === undefined || awardRequest === null) {
      throw new Error("Missing the required parameter 'awardRequest' when calling getAwards");
    }
    
    const message = { body: awardRequest };

    apiClientStomp.instance.sendRpc('/gapi/getAwards', message, callback);

  }

}