package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.EntityFilter;
import com.ziqni.member.sdk.model.EntityRequest;
import com.ziqni.member.sdk.model.EntityType;
import com.ziqni.member.sdk.model.RuleRequest;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.List;

public class LoadRulesData implements CompleteableFutureTestWrapper {

    public EntityRequest getRequest(String entityId) {
        EntityFilter entityFilter=new EntityFilter();
        entityFilter.entityIds(List.of(entityId));
        entityFilter.setEntityType(EntityType.COMPETITION.getValue());
        return new EntityRequest().addEntityFilterItem(entityFilter);
    }

}