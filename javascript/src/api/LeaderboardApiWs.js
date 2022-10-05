
import apiClientStomp from "../ApiClientStomp";

export default class LeaderboardApiWs {

  constructor(apiClientStomp) {
    this.apiClientStomp = apiClientStomp || ApiClientStomp.instance;
  }


  subscribeToLeaderboard(leaderboardSubscriptionRequest,  callback) {

    
    if (leaderboardSubscriptionRequest === undefined || leaderboardSubscriptionRequest === null) {
      throw new Error("Missing the required parameter 'leaderboardSubscriptionRequest' when calling subscribeToLeaderboard");
    }
    
    const message = { body: leaderboardSubscriptionRequest };

    apiClientStomp.instance.sendRpc('/gapi/subscribeToLeaderboard', message, callback);

  }

}