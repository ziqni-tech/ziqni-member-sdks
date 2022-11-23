package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.MessageRequest;
import tests.utils.CompleteableFutureTestWrapper;

public class LoadMessageData implements CompleteableFutureTestWrapper {

    public MessageRequest getRequest() {
        return new MessageRequest();
//                .id(id);

    }

}