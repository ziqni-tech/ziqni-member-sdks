
import apiClientStomp from "../ApiClientStomp";

export default class HeartbeatApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  heartbeat( callback) {

    
    const message = { body: {} };

    apiClientStomp.instance.sendRpc('/gapi/heartbeat', message, callback);

  }

}