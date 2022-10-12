
import apiClientStomp from "../ApiClientStomp";

export default class CallbacksApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  listCallbacks( callback) {

    
    const message = { body: {} };

    apiClientStomp.instance.sendRpc('/gapi/listCallbacks', message, callback);

  }

}