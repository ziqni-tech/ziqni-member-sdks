package com.ziqni.member.sample;

import com.ziqni.member.sdk.model.*;
import com.ziqni.member.sdk.ApiClient;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.api.MemberTokenApi;
import com.ziqni.member.sdk.api.CompetitionsApi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;
import java.time.OffsetDateTime;
import java.util.function.Consumer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;

/**
 * Sample Rest App that demonstrates how to use the Ziqni Member API.
 * <a href="https://documentation.ziqni.com/member-api/">Member API Docs</a>
 * WE DO NOT RECOMMEND THE USE OF THE REST API FOR PRODUCTION USE. WEB SOCKETS ARE RECOMMENDED.
 */
public class SampleRestApp {

    private static final Logger logger = LoggerFactory.getLogger(SampleRestApp.class);

    private final Map<String, MemberSession> memberTokens = new ConcurrentHashMap<>();
    private final MemberTokenApi memberTokenApi;
    private final String adminApiKey;

    public static void main(String[] args) throws Exception {

        new SampleRestApp("your-api-key").getCompetitionsForMember("member-ref-id");

        logger.info("Shutting down!");
    }

    public SampleRestApp(String adminApiKey) {
        this.adminApiKey = adminApiKey;
        this.memberTokenApi = new MemberTokenApi(new ApiClient());
    }

    /**
     * Get competitions for a member.
     * @param memberRefId - the member reference id
     * @throws ApiException - if the API call fails
     * @throws ExecutionException - if the API call fails
     * @throws InterruptedException - if the API call fails
     */
    public void getCompetitionsForMember(String memberRefId) throws ApiException, ExecutionException, InterruptedException {
        final var result = getMemberSession(memberRefId).getCompetitionsApi().getCompetitions(new CompetitionRequest()
                    .languageKey("en")
                    .competitionFilter(
                            new CompetitionFilter()
                                    .statusCode(new NumberRange().moreThan(20L).lessThan(30L)) // Things that are live
                                    .addSortByItem(new QuerySortBy().queryField("created").order(SortOrder.DESC)) // Latest first
                                    .skip(0) // Skip the first 0
                                    .limit(10) // Limit to 10
                    )
        );

        result.join();

        logger.info("Result: {}", result.get().getData());
    }


    /// //////////////////
    /// Helper methods ///
    /// //////////////////

    public MemberSession getMemberSession(String memberRefId){
        return memberTokens.computeIfAbsent(memberRefId, key -> new MemberSession(memberRefId, this::tokenSupplier));
    }

    /**
     * Token supplier for the member session.
     * @param memberSession - the member session
     */
    public void tokenSupplier(MemberSession memberSession){
        try {
            if (memberSession != null && memberSession.validUntil != null && memberSession.validUntil.isAfter(OffsetDateTime.now())) {
                return;
            }



            final var result = memberTokenApi.createMemberToken(new MemberTokenRequest()
                    .apiKey(adminApiKey)
                    .member(memberSession.memberRefId)
                    .isReferenceId(true)
                    .expires(35)
            );
            result.join();
            memberSession.token = result.get().getData().getJwtToken();;
        } catch (ApiException | InterruptedException | ExecutionException e) {
            logger.error("Failed to create token", e);
            throw new RuntimeException("Failed to create token", e);
        }
    }

    /**
     * Member session class is a convenience class to hold the member session.
     */
    public static class MemberSession {

        public String token;
        public OffsetDateTime validUntil;

        public final String memberRefId;
        public final ApiClient apiClient;
        public final Consumer<MemberSession> tokenSupplier;

        private final CompetitionsApi competitionsApi;

        /**
         * Member session constructor.
         * @param memberRefId - the member reference id
         * @param tokenSupplier - the token supplier
         */
        public MemberSession(String memberRefId, Consumer<MemberSession> tokenSupplier) {
            this. apiClient = new ApiClient().setRequestInterceptor(request -> {
                request.setHeader("Authorization", "Bearer " + token);
            });
            this.memberRefId = memberRefId;
            this.tokenSupplier = tokenSupplier;
            this.competitionsApi = new CompetitionsApi(apiClient);
        }

        /**
         * Get the competitions API.
         * @return CompetitionsApi
         */
        public CompetitionsApi getCompetitionsApi() {
            tokenSupplier.accept(this);
            return competitionsApi;
        }
    }
}
