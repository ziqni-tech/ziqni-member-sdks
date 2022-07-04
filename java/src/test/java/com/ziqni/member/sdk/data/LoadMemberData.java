package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.MemberRequest;
import tests.utils.CompleteableFutureTestWrapper;

public class LoadMemberData implements CompleteableFutureTestWrapper {

    public MemberRequest getRequest(String memberRefId) {
        return new MemberRequest();
//                .memberRefId(memberRefId);

    }

}