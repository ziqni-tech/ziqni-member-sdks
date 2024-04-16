
import apiClientStomp from "../ApiClientStomp";

export default class MissionsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getMissionStates(missionStatesRequest,  callback) {

    
    if (missionStatesRequest === undefined || missionStatesRequest === null) {
      throw new Error("Missing the required parameter 'missionStatesRequest' when calling getMissionStates");
    }
    
    const message = { body: missionStatesRequest };

    apiClientStomp.instance.sendRpc('/gapi/getMissionStates', message, callback);

  }

}