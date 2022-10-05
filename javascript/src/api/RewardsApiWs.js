
import apiClientStomp from "../ApiClientStomp";

export default class RewardsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getRewards(entityRequest,  callback) {

    
    if (entityRequest === undefined || entityRequest === null) {
      throw new Error("Missing the required parameter 'entityRequest' when calling getRewards");
    }
    
    const message = { body: entityRequest };

    apiClientStomp.instance.sendRpc('/gapi/getRewards', message, callback);

  }

}