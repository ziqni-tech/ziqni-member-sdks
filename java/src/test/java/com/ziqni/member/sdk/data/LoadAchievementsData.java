package com.ziqni.member.sdk.data;

import com.ziqni.member.sdk.model.*;
import tests.utils.CompleteableFutureTestWrapper;

import java.util.ArrayList;
import java.util.List;

public class LoadAchievementsData implements CompleteableFutureTestWrapper {

    public AchievementRequest getRequest() {
        int limit =  20;
        int skip = 0;
        String achievementId =null;
        List<String> productIds = new ArrayList<>();
        List<String> tags = List.of();

        var rangeQuery = new NumberRange();
        rangeQuery.setMoreThan(10L);
        rangeQuery.setLessThan(30L);

        var querySortBy = new QuerySortBy();
        querySortBy.setQueryField("created");
        querySortBy.setOrder(SortOrder.ASC);

        var achievementFilter = new AchievementFilter();
       // achievementFilter.setIds(List.of(achievementId));
        achievementFilter.setStartDate(null);
        achievementFilter.setEndDate(null);
        achievementFilter.setProductIds(productIds);
        achievementFilter.setTags(tags);
        achievementFilter.setSortBy(List.of(querySortBy));
        achievementFilter.setLimit(limit);
        achievementFilter.setSkip(skip);
//        achievementFilter.setStatusCode(rangeQuery);

        var achievementRequest = new AchievementRequest();
        achievementRequest.setAchievementFilter(achievementFilter);

        return achievementRequest;
    }

}