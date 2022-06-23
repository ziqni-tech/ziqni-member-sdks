package com.ziqni.gamification.client.data;

import com.ziqni.gamification.client.model.*;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.ArrayList;
import java.util.List;

public class LoadAchievementsData implements CompleteableFutureTestWrapper {

    public AchievementRequest getRequest() {
        int limit =  20;
        int skip = 0;
        String memberRefId = "Test_key-9a1f3fce-f8dc-456a-9eeb-3ee4d8116596";
        String achievementId = "SmYQXoEBl_GIktlk0BC9";
        List<String> productIds = new ArrayList<>();
        List<String> tags = List.of("Test_key-14ab32aa-e356-4668-9b2e-ddba26cef9c4");

        var rangeQuery = new RangeQuery();
        rangeQuery.setConstraints(List.of(""));
        rangeQuery.setGt("");
        rangeQuery.setLt("");

        var querySortBy = new QuerySortBy();
        querySortBy.setQueryField("id");
        querySortBy.setOrder(SortOrder.ASC);

        var contestFilter = new AchievementFilter();
        contestFilter.setIds(List.of(achievementId));
        contestFilter.setStartDate(null);
        contestFilter.setEndDate(null);
        contestFilter.setProductIds(productIds);
        contestFilter.setTags(tags);
        contestFilter.setSortBy(List.of(querySortBy));
        contestFilter.setLimit(limit);
        contestFilter.setSkip(skip);

        var achievementRequest = new AchievementRequest();
//        achievementRequest.setMemberRefId(memberRefId);
        achievementRequest.setAchievementFilter(contestFilter);

        return achievementRequest;
    }

}