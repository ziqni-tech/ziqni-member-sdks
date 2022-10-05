
import apiClientStomp from "../ApiClientStomp";

export default class MembersApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getMember(memberRequest,  callback) {

    
    if (memberRequest === undefined || memberRequest === null) {
      throw new Error("Missing the required parameter 'memberRequest' when calling getMember");
    }
    
    const message = { body: memberRequest };

    apiClientStomp.instance.sendRpc('/gapi/getMember', message, callback);

  }

}