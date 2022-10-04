
import apiClientStomp from "../ApiClientStomp";

export default class FilesApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getFiles(fileRequest,  callback) {

    
    if (fileRequest === undefined || fileRequest === null) {
      throw new Error("Missing the required parameter 'fileRequest' when calling getFiles");
    }
    
    const message = { body: fileRequest };

    apiClientStomp.instance.sendRpc('/gapi/getFiles', message, callback);

  }

}