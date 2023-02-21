
import apiClientStomp from "../ApiClientStomp";

export default class GraphsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getGraph(entityGraphRequest,  callback) {

    
    if (entityGraphRequest === undefined || entityGraphRequest === null) {
      throw new Error("Missing the required parameter 'entityGraphRequest' when calling getGraph");
    }
    
    const message = { body: entityGraphRequest };

    apiClientStomp.instance.sendRpc('/gapi/getGraph', message, callback);

  }

}