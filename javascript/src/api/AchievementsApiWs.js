
import apiClientStomp from "../ApiClientStomp";

export default class AchievementsApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  getAchievements(achievementRequest,  callback) {

    
    if (achievementRequest === undefined || achievementRequest === null) {
      throw new Error("Missing the required parameter 'achievementRequest' when calling getAchievements");
    }
    
    const message = { body: achievementRequest };

    apiClientStomp.instance.sendRpc('/gapi/getAchievements', message, callback);

  }

}