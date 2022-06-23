package com.ziqni.gamification.client.data;

import com.ziqni.gamification.client.model.MemberRequest;
import com.ziqni.gamification.client.model.MessageRequest;
import tests.utils.CompleteableFutureTestWrapper;

public class LoadMessageData implements CompleteableFutureTestWrapper {

    public MessageRequest getRequest(String memberRefId) {
        return new MessageRequest();
//                .memberRefId(memberRefId);

    }

}