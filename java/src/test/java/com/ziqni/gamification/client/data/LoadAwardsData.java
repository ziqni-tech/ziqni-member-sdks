package com.ziqni.gamification.client.data;

import com.ziqni.gamification.client.model.AwardRequest;
import com.ziqni.gamification.client.model.ClaimAwardRequest;
import com.ziqni.gamification.client.model.MessageRequest;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.List;

public class LoadAwardsData implements CompleteableFutureTestWrapper {

    public AwardRequest getRequest(String memberRefId) {
        return new AwardRequest();
//                .memberRefId(memberRefId);

    }
    public ClaimAwardRequest getClaimAwardRequest(String memberRefId, List<String> awardIds) {
        return new ClaimAwardRequest()
//                .memberRefId(memberRefId)
                .awardIds(awardIds)
                ;

    }
}