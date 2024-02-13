
import apiClientStomp from "../ApiClientStomp";

export default class StatsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getActiveEntitiesCount(modelCountRequest,  callback) {

    
    if (modelCountRequest === undefined || modelCountRequest === null) {
      throw new Error("Missing the required parameter 'modelCountRequest' when calling getActiveEntitiesCount");
    }
    
    const message = { body: modelCountRequest };

    apiClientStomp.instance.sendRpc('/gapi/getActiveEntitiesCount', message, callback);

  }

}