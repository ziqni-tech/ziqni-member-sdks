package com.ziqni.member.sdk.data;

import com.ziqni.gamification.client.model.*;
import com.ziqni.member.sdk.model.RuleRequest;
import tests.utils.CompleteableFutureTestWrapper;

public class LoadRulesData implements CompleteableFutureTestWrapper {

    public RuleRequest getRequest(String entityId) {
        return new RuleRequest()
                .entityId(entityId);

    }

}