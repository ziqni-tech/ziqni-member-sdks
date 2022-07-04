package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.*;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.ArrayList;
import java.util.List;

public class LoadAchievementsData implements CompleteableFutureTestWrapper {

    public AchievementRequest getRequest() {
        int limit =  20;
        int skip = 0;
        String achievementId = "88V1kIEBZ5CX7dWnd6HT";
        List<String> productIds = new ArrayList<>();
        List<String> tags = List.of("Test_key-1f97cdc4-fdb4-4f1e-b93c-e3bc3a7fd69f");

        var rangeQuery = new RangeQuery();
        rangeQuery.setConstraints(List.of(""));
        rangeQuery.setGt("");
        rangeQuery.setLt("");

        var querySortBy = new QuerySortBy();
        querySortBy.setQueryField("id");
        querySortBy.setOrder(SortOrder.ASC);

        var achievementFilter = new AchievementFilter();
        achievementFilter.setIds(List.of(achievementId));
        achievementFilter.setStartDate(null);
        achievementFilter.setEndDate(null);
        achievementFilter.setProductIds(productIds);
        achievementFilter.setTags(tags);
        achievementFilter.setSortBy(List.of(querySortBy));
        achievementFilter.setLimit(limit);
        achievementFilter.setSkip(skip);

        var achievementRequest = new AchievementRequest();
        achievementRequest.setAchievementFilter(achievementFilter);

        return achievementRequest;
    }

}