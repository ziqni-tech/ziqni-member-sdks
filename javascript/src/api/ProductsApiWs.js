
import apiClientStomp from "../ApiClientStomp";

export default class ProductsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getProductsSimilarTo(similarToProductRequest,  callback) {

    
    if (similarToProductRequest === undefined || similarToProductRequest === null) {
      throw new Error("Missing the required parameter 'similarToProductRequest' when calling getProductsSimilarTo");
    }
    
    const message = { body: similarToProductRequest };

    apiClientStomp.instance.sendRpc('/gapi/getProductsSimilarTo', message, callback);

  }

}