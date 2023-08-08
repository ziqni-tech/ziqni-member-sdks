
import apiClientStomp from "../ApiClientStomp";

export default class RewardsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getRewards(rewardRequest,  callback) {

    
    if (rewardRequest === undefined || rewardRequest === null) {
      throw new Error("Missing the required parameter 'rewardRequest' when calling getRewards");
    }
    
    const message = { body: rewardRequest };

    apiClientStomp.instance.sendRpc('/gapi/getRewards', message, callback);

  }

}