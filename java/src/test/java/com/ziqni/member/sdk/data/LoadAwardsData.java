package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.AwardFilter;
import com.ziqni.member.sdk.model.AwardRequest;
import com.ziqni.member.sdk.model.ClaimAwardRequest;
import com.ziqni.member.sdk.model.NumberRange;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.List;

public class LoadAwardsData implements CompleteableFutureTestWrapper {

    public AwardRequest getRequest(String awardId) {
        final var numRange = new NumberRange();
        numRange.setLessThan(120L);
        numRange.setMoreThan(0L);

        return new AwardRequest()
                .awardFilter(new AwardFilter()
                                .statusCode(numRange)
                                .ids(List.of(awardId))
//                        .lifecycleStatus(AwardFilter.LifecycleStatusEnum.ARCHIVED)
                )
                .languageKey("en");
//                .memberRefId(memberRefId);

    }
    public ClaimAwardRequest getClaimAwardRequest(String memberRefId, List<String> awardIds) {
        return new ClaimAwardRequest()
//                .memberRefId(memberRefId)
                .awardIds(awardIds);


    }
}