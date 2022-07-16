package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.*;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.ArrayList;
import java.util.List;

public class LoadContestsData implements CompleteableFutureTestWrapper {

    public ContestRequest getRequest() {
        int limit =  20;
        int skip = 0;
        String memberRefId = null;
        String competitionId = "qgZLVH8BVVSd21JkkDwK";
        List<String> productIds = new ArrayList<>();
        List<String> constraints = new ArrayList<>();
        List<String> tags = List.of("Test_key-4a8221d8-7a2a-446f-b414-846b2624efe4");

        var rangeQuery = new RangeQuery();
        rangeQuery.setConstraints(List.of(""));
        rangeQuery.setGt("");
        rangeQuery.setLt("");

        var querySortBy = new QuerySortBy();
        querySortBy.setQueryField("id");
        querySortBy.setOrder(SortOrder.ASC);

        var contestFilter = new ContestFilter();
        contestFilter.setCompetitionIds(List.of(competitionId));
        contestFilter.setConstraints(constraints);
        contestFilter.setStartDate(null);
        contestFilter.setEndDate(null);
        contestFilter.setProductIds(productIds);
        contestFilter.setTags(tags);
        contestFilter.addSortByItem(querySortBy);
        contestFilter.setLimit(limit);
        contestFilter.setSkip(skip);

        var contestRequest = new ContestRequest();
        //contestRequest.setMemberRefId(memberRefId);
        contestRequest.setContestFilter(contestFilter);

        return contestRequest;
    }

}