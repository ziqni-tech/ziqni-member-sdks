package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.AwardRequest;
import com.ziqni.member.sdk.model.ClaimAwardRequest;
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