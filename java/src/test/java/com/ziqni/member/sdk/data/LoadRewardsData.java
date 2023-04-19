package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.EntityFilter;
import com.ziqni.member.sdk.model.EntityRequest;
import com.ziqni.member.sdk.model.EntityType;
import com.ziqni.member.sdk.model.RewardRequest;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.List;

public class LoadRewardsData implements CompleteableFutureTestWrapper {

    public RewardRequest getRequest() {
//        EntityFilter entityFilter=new EntityFilter();
//        entityFilter.entityIds(List.of(entityId));
//        entityFilter.setEntityType(entityType);
        return new RewardRequest();
    }

}