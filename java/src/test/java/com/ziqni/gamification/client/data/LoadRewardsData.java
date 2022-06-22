package com.ziqni.gamification.client.data;

import com.ziqni.gamification.client.model.Reward;
import com.ziqni.gamification.client.model.RewardRequest;
import com.ziqni.gamification.client.model.RuleRequest;
import tests.utils.CompleteableFutureTestWrapper;

public class LoadRewardsData implements CompleteableFutureTestWrapper {

    public RewardRequest getRequest(String entityId) {
        return new RewardRequest()
                .entityId(entityId);

    }

}