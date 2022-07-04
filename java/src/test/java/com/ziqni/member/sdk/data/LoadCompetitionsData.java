package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.*;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.ArrayList;
import java.util.List;

public class LoadCompetitionsData implements CompleteableFutureTestWrapper {

    public CompetitionRequest getRequest() {
        int limit =  20;
        int skip = 0;
        String memberRefId = "Test_key-9a1f3fce-f8dc-456a-9eeb-3ee4d8116596";
        String compId = "M2aFXYEBl_GIktlkShBQ";
        List<String> productIds = new ArrayList<>();
        List<String> tags = List.of("Test_key-14ab32aa-e356-4668-9b2e-ddba26cef9c4");

        var rangeQuery = new RangeQuery();
        rangeQuery.setConstraints(List.of(""));
        rangeQuery.setGt("");
        rangeQuery.setLt("");

        var querySortBy = new QuerySortBy();
        querySortBy.setQueryField("id");
        querySortBy.setOrder(SortOrder.ASC);

        var competitionFilter = new CompetitionFilter();
        competitionFilter.setIds(List.of(compId));
        competitionFilter.setStartDate(null);
        competitionFilter.setEndDate(null);
        competitionFilter.setProductIds(productIds);
        competitionFilter.setTags(null);
        competitionFilter.setSortBy(List.of(querySortBy));
        competitionFilter.setLimit(limit);
        competitionFilter.setSkip(skip);

        var competitionRequest = new CompetitionRequest();
//        competitionRequest.setMemberRefId(memberRefId);
        competitionRequest.setCompetitionFilter(competitionFilter);

        return competitionRequest;
    }

}