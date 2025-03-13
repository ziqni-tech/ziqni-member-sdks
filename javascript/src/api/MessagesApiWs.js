
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

  updateMessagesState(body,  callback) {

    
    if (body === undefined || body === null) {
      throw new Error("Missing the required parameter 'body' when calling updateMessagesState");
    }
    
    const message = { body: body };

    apiClientStomp.instance.sendRpc('/gapi/updateMessagesState', message, callback);

  }

}