package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.EntityFilter;
import com.ziqni.member.sdk.model.EntityRequest;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.List;

public class LoadRewardsData implements CompleteableFutureTestWrapper {

    public EntityRequest getRequest(String entityId, String entityType) {
        EntityFilter entityFilter=new EntityFilter();
        entityFilter.entityIds(List.of(entityId));
        entityFilter.setEntityType(entityType);
        return new EntityRequest().addEntityFilterItem(entityFilter);
    }

}