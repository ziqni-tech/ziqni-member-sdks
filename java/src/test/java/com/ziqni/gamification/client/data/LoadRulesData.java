package com.ziqni.gamification.client.data;

import com.ziqni.gamification.client.model.*;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.ArrayList;
import java.util.List;

public class LoadRulesData implements CompleteableFutureTestWrapper {

    public RuleRequest getRequest(String entityId) {
        return new RuleRequest()
                .entityId(entityId);

    }

}