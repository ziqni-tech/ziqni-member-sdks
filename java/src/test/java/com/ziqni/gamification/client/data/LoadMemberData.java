package com.ziqni.gamification.client.data;

import com.ziqni.gamification.client.model.*;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.ArrayList;
import java.util.List;

public class LoadMemberData implements CompleteableFutureTestWrapper {

    public MemberRequest getRequest(String memberRefId) {
        return new MemberRequest();
//                .memberRefId(memberRefId);

    }

}