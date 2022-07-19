package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.EntityFilter;
import com.ziqni.member.sdk.model.EntityRequest;
import tests.utils.CompleteableFutureTestWrapper;

public class LoadRulesData implements CompleteableFutureTestWrapper {

    public EntityRequest getRequest(String entityId, String entityType) {
        EntityFilter entityFilter=new EntityFilter();
        //entityFilter.entityIds();
        entityFilter.setEntityType(entityType);
        return new EntityRequest().addEntityFilterItem(entityFilter);
    }

}