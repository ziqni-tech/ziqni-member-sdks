
import apiClientStomp from "../ApiClientStomp";

export default class MemberTokenApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  createMemberToken(memberTokenRequest,  callback) {

    
    if (memberTokenRequest === undefined || memberTokenRequest === null) {
      throw new Error("Missing the required parameter 'memberTokenRequest' when calling createMemberToken");
    }
    
    const message = { body: memberTokenRequest };

    apiClientStomp.instance.sendRpc('/gapi/createMemberToken', message, callback);

  }

}