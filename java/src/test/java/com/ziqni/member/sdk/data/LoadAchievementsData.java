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
        productIds.add("Test_key-deef82e9-b34f-4636-a614-92fa3807ecsgdhfdhgfdhhbddnsdwgfu21");
        List<String> tags = List.of();

        var rangeQuery = new NumberRange();
        rangeQuery.setMoreThan(20L);
        rangeQuery.setLessThan(30L);

        var optInRangeQuery = new RangeQuery();
        rangeQuery.setMoreThan(30L);
        rangeQuery.setLessThan(40L);

        var querySortBy = new QuerySortBy();
        querySortBy.setQueryField("created");
        querySortBy.setOrder(SortOrder.ASC);

        var achievementFilter = new AchievementFilter();
//        achievementFilter.setIds(List.of("64fQmIYBka1zONlo1-8Q"));
        achievementFilter.setStartDate(null);
        achievementFilter.setEndDate(null);
//        achievementFilter.setProductIds(productIds);
        achievementFilter.setTags(tags);
        achievementFilter.setSortBy(List.of(querySortBy));
        achievementFilter.setLimit(limit);
        achievementFilter.setSkip(skip);
//        achievementFilter.addConstraintsItem("hasNoDependancies");
        achievementFilter.setStatusCode(rangeQuery);
        achievementFilter.setOptInStatusCodes(optInRangeQuery);
        achievementFilter.addConstraintsItem("allFinished");

        var achievementRequest = new AchievementRequest();
        achievementRequest.setAchievementFilter(achievementFilter);

        return achievementRequest;
    }

    public ModelCountRequest getAchievementCountRequest(){
        var req = new ModelCountRequest();
        return req;
    }

}