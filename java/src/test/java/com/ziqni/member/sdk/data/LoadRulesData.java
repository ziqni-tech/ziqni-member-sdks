package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.RuleRequest;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.List;

public class LoadRulesData implements CompleteableFutureTestWrapper {

    public RuleRequest getRequest(List<String> entityId) {
        return new RuleRequest().entityIds(entityId);

    }

}