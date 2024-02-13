
import apiClientStomp from "../ApiClientStomp";

export default class CompetitionsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getCompetitions(competitionRequest,  callback) {

    
    if (competitionRequest === undefined || competitionRequest === null) {
      throw new Error("Missing the required parameter 'competitionRequest' when calling getCompetitions");
    }
    
    const message = { body: competitionRequest };

    apiClientStomp.instance.sendRpc('/gapi/getCompetitions', message, callback);

  }

  getCompetitionsCount(modelCountRequest,  callback) {

    
    if (modelCountRequest === undefined || modelCountRequest === null) {
      throw new Error("Missing the required parameter 'modelCountRequest' when calling getCompetitionsCount");
    }
    
    const message = { body: modelCountRequest };

    apiClientStomp.instance.sendRpc('/gapi/getCompetitionsCount', message, callback);

  }

}