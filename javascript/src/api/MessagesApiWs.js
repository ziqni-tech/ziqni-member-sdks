
import apiClientStomp from "../ApiClientStomp";

export default class MessagesApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getMessages(messageRequest,  callback) {

    
    if (messageRequest === undefined || messageRequest === null) {
      throw new Error("Missing the required parameter 'messageRequest' when calling getMessages");
    }
    
    const message = { body: messageRequest };

    apiClientStomp.instance.sendRpc('/gapi/getMessages', message, callback);

  }

}