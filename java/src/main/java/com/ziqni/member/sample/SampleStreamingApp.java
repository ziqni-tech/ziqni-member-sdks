package com.ziqni.member.sample;

import com.ziqni.member.sdk.ZiqniMemberApiFactory;
import com.ziqni.member.sdk.model.*;
import com.ziqni.member.sdk.eventbus.ZiqniSimpleEventBus;
import com.ziqni.member.sdk.configuration.MemberApiClientConfigBuilder;
import com.ziqni.member.sdk.streaming.stomp.StompOverWebSocketLifeCycle;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;
import java.util.HashMap;
import java.util.Objects;
import java.util.Comparator;
import java.util.stream.Collectors;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/**
 * SampleStreamingApp is a sample application that demonstrates how to use the streaming Ziqni Member API.
 */
public class SampleStreamingApp {

    private static final ScheduledExecutorService timer = Executors.newSingleThreadScheduledExecutor();
    private static final Logger logger = LoggerFactory.getLogger(SampleStreamingApp.class);
    private static final Map<String, Map<Integer, Double>> prevScores = new HashMap<>();
    private static ZiqniMemberApiFactory factory;

    /**
     * Main method for SampleStreamingApp
     * @param args - the arguments
     * @throws Exception - if an exception occurs
     */
    public static void main(String[] args) throws Exception {

        // Create a new ZiqniMemberApiFactory
        factory = new ZiqniMemberApiFactory(MemberApiClientConfigBuilder.build());

        // Set up the callbacks for the LeaderboardUpdateHandler
        factory.getCallbacksApi().leaderboardUpdateHandler(
                (stompHeaders, leaderboard) -> {
                    logger.info("Leaderboard {} - ", leaderboard.getId());
                    prevScores.putIfAbsent(leaderboard.getId(), new HashMap<>());
                    final Map<Integer, Double> map = prevScores.get(leaderboard.getId());

                    if(!Objects.requireNonNull(leaderboard.getLeaderboardEntries()).isEmpty()){
                        leaderboard.getLeaderboardEntries().stream()
                                .sorted(Comparator.comparing(LeaderboardEntry::getRank))
                                .forEach(leaderboardEntry -> {
                                    final var changed = !Objects.equals(map.getOrDefault(leaderboardEntry.getRank(), 0.0), leaderboardEntry.getScore())
                                            ? " *" : "";
                                    logger.info("-{} {}- {} {}", leaderboardEntry.getRank(), leaderboardEntry.getScore(), leaderboardEntry.getMembers().stream().map(LeaderboardMember::getName).collect(Collectors.toList()), changed);
                                })
                        ;

                        map.clear();
                        leaderboard.getLeaderboardEntries().forEach(leaderboardEntry -> {
                            map.put(leaderboardEntry.getRank(), leaderboardEntry.getScore());
                        });
                    }
                },
                (stompHeaders, e) -> {}
        );

        factory.initialise(() -> {

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


        new SampleStreamingApp(factory.getZiqniAdminEventBus());

        logger.info("Press any key to exit");
        final var in = System.in.read();
        logger.info("Shutting down {} ", in);
    }

    /**
     * Constructor for SampleStreamingApp
     * @param ziqniAdminEventBus - the ZiqniSimpleEventBus
     */
    public SampleStreamingApp(ZiqniSimpleEventBus ziqniAdminEventBus) {
        ziqniAdminEventBus.onWSClientConnected(this::onWSClientConnected);
        ziqniAdminEventBus.onWSClientConnecting(this::onWSClientConnecting);
        ziqniAdminEventBus.onWSClientDisconnected(this::onWSClientDisconnected);
        ziqniAdminEventBus.onWSClientSevereFailure(this::onWSClientSevereFailure);
    }

    /**
     * Callback for Websocket Client Connected
     * @param change - the WSClientConnected change
     */
    public void onWSClientConnected(StompOverWebSocketLifeCycle.WSClientConnected change) {
        logger.info("WSClientConnected {}", change);
        this.onStart(); // Do some stuff to show how to use the API
    }

    /**
     * Callback for Websocket Client Connecting
     * @param change - the WSClientConnecting change
     */
    public void onWSClientConnecting(StompOverWebSocketLifeCycle.WSClientConnecting change) {
        logger.info("WSClientConnecting {}", change);
    }

    /**
     * Callback for Websocket Client Disconnected
     * @param change - the WSClientDisconnected change
     */
    public void onWSClientDisconnected(StompOverWebSocketLifeCycle.WSClientDisconnected change){
        logger.info("WSClientDisconnected {}", change);
    }

    /**
     * Callback for Websocket Client Severe Failure
     * @param change - the WSClientSevereFailure change
     */
    public void onWSClientSevereFailure(StompOverWebSocketLifeCycle.WSClientSevereFailure change) {
        logger.info("WSClientSevereFailure {}", change);
    }

    /**
     * Handle the response from the Achievement API
     * @param achievementResponse - the AchievementResponse
     */
    private void handleResponse(AchievementResponse achievementResponse) {

        if(achievementResponse.getData() != null){
            achievementResponse.getData().forEach(achievement -> {
                if(Objects.nonNull(achievement.getConstraints()) && achievement.getConstraints().contains("optinRequiredForEntrants")) {
                    optIntoAchievement(achievement);
                }
            });
        }

        System.out.println(achievementResponse);
    }

    /**
     * Handle the response from the Competition API
     * @param competitionResponse - the CompetitionResponse
     */
    private void handleResponse(CompetitionResponse competitionResponse){

        if(competitionResponse.getData() != null){
            competitionResponse.getData().forEach(competition -> {
                if(Objects.nonNull(competition.getConstraints()) && competition.getConstraints().contains("optinRequiredForEntrants")) {

                }
                else {

                }
            });
        }

        System.out.println(competitionResponse);

        competitionResponse.getData().stream().findFirst().ifPresent(this::getContests);
    }

    /**
     * Get the contests for a competition
     * @param competition - the Competition
     */
    private void getContests(Competition competition){
        factory.getContestsApi()
                .getContests(new ContestRequest().contestFilter(new ContestFilter()/*.competitionIds(List.of("V-UJyIcB2XLhi587MUz1"))*/))
                .thenAccept(contestResponse -> {
                    logger.info(contestResponse.getData().toString());
                    contestResponse.getData().stream().findFirst().ifPresent(contest -> {
                        this.getRewards(contest);
                        this.subscribeToLeaderboard(contest);
                    });
                }).exceptionally(throwable -> {
                    logger.error("Failed to get contests for competition {}", competition, throwable);
                    return null;
                });
    }

    /**
     * Get the rewards for a contest
     * @param contest - the Contest
     */
    private void getRewards(Contest contest) {
        factory.getRewardsApi()
                .getRewards(new RewardRequest()
                        //.addSortByItem(new QuerySortBy().queryField("created").order(SortOrder.ASC))
                        .skip(0)
                        .limit(10)
                        .currencyKey("GBP")
                        .addEntityFilterItem(
                                new EntityFilter()
                                        .addEntityIdsItem(contest.getId())
                                        .entityType(contest.getClass().getSimpleName())
                        )
                )
                .thenAccept(rewardResponse ->
                        logger.info(rewardResponse.getData().toString())
                )
                .exceptionally(throwable -> {
                    logger.error("Failed to get rerwards for contest {}", contest, throwable);
                    return null;
                });
    }

    /**
     * Get the awards
     */
    private void getAwards() {
        factory.getAwardsApi().getAwards(new AwardRequest()
                        //.addSortByItem(new QuerySortBy().queryField("created").order(SortOrder.ASC))
                        .currencyKey("GBP")
                        .awardFilter(new AwardFilter().skip(0).limit(10))
                )
                .thenAccept(awardResponse ->
                        logger.info(awardResponse.getData().toString())
                )
                .exceptionally(throwable -> {
                    logger.error("Failed to get awards for contest ", throwable);
                    return null;
                });
    }

    /**
     * Subscribe to the leaderboard
     * @param contest - the Contest
     */
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

    /**
     * Opt into an achievement
     * @param achievement - the Achievement
     */
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

    /**
     * Run when the application starts
     */
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
                .getAwards(new AwardRequest().currencyKey("GBP").awardFilter(
                        new AwardFilter()
                                .limit(5)
                                .statusCode(new NumberRange().moreThan(16L).lessThan(60L))
                        )
                )
                .thenAccept(awardResponse ->
                        logger.info(awardResponse.toString())
                )
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
                .getCompetitions(new CompetitionRequest()
                        .competitionFilter(new CompetitionFilter()
                                .statusCode(new NumberRange().moreThan(20L).lessThan(30L))
                        ).languageKey("de")
                )
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
                                .entityType(EntityType.ACHIEVEMENT)
                                .addIdsItem("wr47SoYB4W1yU_TfNeYL")
//                                .addIdsItem("oLOWY4YBF0c3Crf1gj7J")
//                                .addIncludesItem("description")
//                                .addIncludesItem("scheduling")
                )
                .thenAccept(response -> {
                    logger.info(response.toString());
                })
                .exceptionally(throwable -> {
                    logger.error("Fail",throwable);
                    return null;
                });
    }

    /**
     * Subscribe to the callbacks
     */
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

        factory.getCallbacksApi().optinStatusHandler(
                        ((stompHeaders, optinStatus) ->{
                            logger.info(optinStatus.toString());
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
