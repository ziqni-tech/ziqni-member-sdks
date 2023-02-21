package com.ziqni.member.sdk;

import com.google.common.eventbus.Subscribe;
import com.ziqni.member.sdk.configuration.MemberApiClientConfigBuilder;
import com.ziqni.member.sdk.context.WSClientConnected;
import com.ziqni.member.sdk.context.WSClientConnecting;
import com.ziqni.member.sdk.context.WSClientDisconnected;
import com.ziqni.member.sdk.context.WSClientSevereFailure;
import com.ziqni.member.sdk.model.*;

import com.ziqni.member.sdk.streaming.handlers.CallbackConsumer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public class SampleApp {
    private static final Logger logger = LoggerFactory.getLogger(SampleApp.class);

    private static final ScheduledExecutorService timer = Executors.newSingleThreadScheduledExecutor();
    
    private static ZiqniMemberApiFactory factory;

    public static void main(String[] args) throws Exception {

        factory = new ZiqniMemberApiFactory(MemberApiClientConfigBuilder.build());

//        factory.getCallbacksApi().leaderboardUpdateHandler(
//                (stompHeaders, leaderboard) -> {
//                    logger.info("Leaderboard {} - ", leaderboard.getId());
//                    if(leaderboard.getLeaderboardEntries().size() > 0){
//                        leaderboard.getLeaderboardEntries().stream()
//                                .sorted((o1, o2) -> o1.getRank().compareTo(o2.getRank()))
//                                .forEach(leaderboardEntry -> logger.info("-{}- {}",leaderboardEntry.getRank(),leaderboardEntry.getMembers()));
//                    }
//                },
//                (stompHeaders, e) -> {}
//        );
//        factory.getStreamingClient().getCallbackEventHandler().registerCallbackHandler(new CallbackConsumer<Leaderboard>(
//                (stompHeaders, leaderboard) -> {
//                    logger.info("Leaderboard {} - ", leaderboard.getId());
//                    if(leaderboard.getLeaderboardEntries().size() > 0){
//                        leaderboard.getLeaderboardEntries().stream()
//                                .sorted((o1, o2) -> o1.getRank().compareTo(o2.getRank()))
//                                .forEach(leaderboardEntry -> logger.info("-{}- {}",leaderboardEntry.getRank(),leaderboardEntry.getMembers()));
//                    }
//                },
//                (stompHeaders, e) -> {}
//        ));
        factory.initialise(() -> {
                    factory.getZiqniAdminEventBus().register(new SampleApp());
                    try {
                        return factory.getStreamingClient().start();
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                })
                .exceptionally(throwable -> {
                    logger.error("Failed to connect", throwable);
                    return null;
                })
                .thenAccept(started -> {
                    logger.error("Connection is {}", started == null || !started ? "NOT_STARTED" : "RUNNING");
                });
    }

    //////// ADMIN API CLIENT EVENTBUS ////////
    @Subscribe
    public void onWSClientConnected(WSClientConnected change) {
        if(change.getConnectedHeaders() == null)
            return;
        logger.info("WSClientConnected {}", change);
        this.onStart();
    }

    @Subscribe
    public void onWSClientConnecting(WSClientConnecting change) {
        logger.info("WSClientConnecting {}", change);
    }

    @Subscribe
    public void onWSClientDisconnected(WSClientDisconnected change){
        logger.info("WSClientDisconnected {}", change);
    }

    @Subscribe
    public void onWSClientSevereFailure(WSClientSevereFailure change){
        logger.info("WSClientSevereFailure {}", change);
    }

    private void handleResponse(AchievementResponse achievementResponse){

        if(achievementResponse.getData() != null){
            achievementResponse.getData().forEach(achievement -> {
                if(Objects.nonNull(achievement.getConstraints()) && achievement.getConstraints().contains("optinRequiredForEntrants")){
                    optIntoAchievement(achievement);
                }
            });
        }

        System.out.println(achievementResponse);
    }

    private void handleResponse(CompetitionResponse competitionResponse){

        if(competitionResponse.getData() != null){
            competitionResponse.getData().forEach(competition -> {
                if(Objects.nonNull(competition.getConstraints()) && competition.getConstraints().contains("optinRequiredForEntrants")){

                }
                else {

                }
            });
        }

        System.out.println(competitionResponse);

        competitionResponse.getData().stream().findFirst().ifPresent(this::getContests);
    }

    private void getContests(Competition competition){
        factory.getContestsApi().getContests(new ContestRequest() )//.contestFilter(new ContestFilter().competitionIds(List.of("9_gpx4UBVvqeSvI0ovX7"))))
                .thenAccept(contestResponse -> {
                    logger.info(contestResponse.getData().toString());
                    contestResponse.getData().stream().findFirst().ifPresent(this::subscribeToLeaderboard);
                }).exceptionally(throwable -> {
                    logger.error("Failed to get contests for competition {}", competition, throwable);
                    return null;
                });
    }

    private void subscribeToLeaderboard(Contest contest){
        factory.getLeaderboardApi().subscribeToLeaderboard(new LeaderboardSubscriptionRequest()
                .leaderboardFilter(new LeaderboardFilter()
                        .ranksBelowToInclude(5)
                        .ranksAboveToInclude(5)
                        .topRanksToInclude(10)
                )
                .action(LeaderboardSubscriptionRequest.ActionEnum.SUBSCRIBE)
                .entityId(contest.getId())
        ).thenAccept(leaderboardsResponse -> {
            logger.info(leaderboardsResponse.toString());
        }).exceptionally(throwable -> {
            logger.error("Failed to subscribe to entity changes for  {}", LeaderboardSubscriptionRequest.class.getSimpleName(), throwable);
            return null;
        });;
    }

    private void optIntoAchievement(Achievement achievement){
        factory.getOptInApi().manageOptin(new ManageOptinRequest()
                .action(OptinAction.JOIN)
                .entityId(achievement.getId())
                .entityType(Achievement.class.getSimpleName())
        ).thenAccept(optInResponse -> {
            logger.info(optInResponse.getData().toString());
        }).exceptionally(throwable -> {
            logger.error("{} Failed to opt-in to {} [{}]", Achievement.class.getSimpleName(), achievement.getId(), achievement.getName(), throwable);
            return null;
        });
    }

    private void onStart() {

        subscribeToCallbacks();

        if(!factory.getStreamingClient().isConnected()) {
            factory.getStreamingClient().stop();
            timer.shutdown();
            throw new RuntimeException("Not connected");
        }

        factory.getCallbacksApi()
                .listCallbacks()
                .thenApply(response -> {
                    logger.info(response.toString());
                    return response;
                })
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        factory.getMembersApi()
                .getMember(new MemberRequest().addIncludeFieldsItem(Member.JSON_PROPERTY_MEMBER_REF_ID))
                .thenApply(memberResponse -> {
                    logger.info(memberResponse.toString());
                    return memberResponse;
                })
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        factory.getAwardsApi()
                .getAwards(new AwardRequest().awardFilter(new AwardFilter().limit(2)))
                .thenAccept(awardResponse -> logger.info(awardResponse.toString()))
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        factory.getAchievementsApi()
                .getAchievements(new AchievementRequest().achievementFilter(new AchievementFilter().statusCode(new NumberRange().moreThan(20L).lessThan(30L))))
                .thenAccept(this::handleResponse)
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        factory.getCompetitionsApi()
                .getCompetitions(new CompetitionRequest().competitionFilter(new CompetitionFilter().statusCode(new NumberRange().moreThan(20L).lessThan(30L))))
                .thenAccept(this::handleResponse)
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        factory.getOptInApi()
                .optInStates(new OptInStatesRequest().optinStatesFilter(
                        new OptinStatesFilter().addEntityTypesItem(EntityType.ACHIEVEMENT))
                )
                .thenAccept(response -> {
                    logger.info(response.toString());
                })
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });

        factory.getGraphsApi()
                .getGraph(
                        new EntityGraphRequest()
                                .addIdsItem("oLOWY4YBF0c3Crf1gj7J")
                                .addIdsItem("wr47SoYB4W1yU_TfNeYL")
                                .entityType(EntityType.ACHIEVEMENT)
                                .addIncludesItem("description")
                                .addIncludesItem("scheduling")
                )
                .thenAccept(response -> {
                    logger.info(response.toString());
                })
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });
    }

    private void subscribeToCallbacks(){

        factory.getCallbacksApi().entityChangedHandler(
                        ((stompHeaders, entityChanged) -> {
                            logger.info(entityChanged.toString());
                        }),
                        (stompHeaders, error) ->
                            logger.info(error.toString())
        );

        factory.getCallbacksApi().entityStateChangedHandler(
                        ((stompHeaders, entityStateChanged) ->{
                            logger.info(entityStateChanged.toString());
                        }),
                        (stompHeaders, error) ->
                            logger.info(error.toString())
        );

        factory.getCallbacksApi().notificationHandler(
                ((stompHeaders, message) -> {
                    logger.info(message.toString());
                }),
                (stompHeaders, error) ->
                        logger.info(error.toString())
        );

        factory.getCallbacksApi().leaderboardUpdateHandler(
                ((stompHeaders, message) -> {
                    logger.info(message.toString());
                }),
                (stompHeaders, error) ->
                        logger.info(error.toString())
        );
    }
}
