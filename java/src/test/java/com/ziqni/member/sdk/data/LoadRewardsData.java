package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.RewardRequest;
import tests.utils.CompleteableFutureTestWrapper;

public class LoadRewardsData implements CompleteableFutureTestWrapper {

    public RewardRequest getRequest(String rewardId) {
        return new RewardRequest().addEntityIdsItem(rewardId);
    }

}