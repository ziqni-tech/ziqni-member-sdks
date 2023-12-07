
import apiClientStomp from "../ApiClientStomp";

export default class ProductsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getProducts(productRequest,  callback) {

    
    if (productRequest === undefined || productRequest === null) {
      throw new Error("Missing the required parameter 'productRequest' when calling getProducts");
    }
    
    const message = { body: productRequest };

    apiClientStomp.instance.sendRpc('/gapi/getProducts', message, callback);

  }

}