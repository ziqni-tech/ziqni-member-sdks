package com.ziqni.gamification.client;

import com.ziqni.gamification.client.configuration.ApiClientConfig;
import com.ziqni.gamification.client.model.*;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class SampleApp {

    private static final ScheduledExecutorService timer = Executors.newSingleThreadScheduledExecutor();

    public static void main(String[] args) throws Exception {

        ApiClientConfig.setIdentityAuthorization(() ->
                "eyJhbGciOiJIUzI1NiJ9.eyJhcGlfa2V5X2lkIjoiUmlvMVBtVUJtMVh5Nk9XRkloTkoiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoidml4d29uZzg2LjExIiwiYWNjb3VudF9pZCI6Inc1ZFM4bVFCeVQ0WFJHZy1CbHUwIiwic3BhY2VfbmFtZSI6Im15c3BhY2UyIiwibmFtZSI6InZpeHdvbmc4NiIsIm1lbWJlcl90eXBlIjoiSW5kaXZpZHVhbCIsIm1lbWJlcl9pZCI6IkpSY0pOMjBCMmNRbXZhX1BMdDdHIiwicmVzb3VyY2VfYWNjZXNzIjp7InppcW5pLWdhcGkiOnsicm9sZXMiOlsiUHVibGljIiwiTWVtYmVyIiwiVmlld0FjaGlldmVtZW50cyIsIlZpZXdBd2FyZHMiLCJDbGFpbUF3YXJkcyIsIlZpZXdDb21wZXRpdGlvbnMiLCJWaWV3Q29udGVzdHMiLCJWaWV3RmlsZXMiLCJWaWV3TWVtYmVycyIsIk1lbWJlcnNPcHRpbiIsIlZpZXdNZXNzYWdlcyIsIkNvbm5lY3RQcm94eSIsIlZpZXdSZXdhcmRzIiwiVmlld1J1bGVzIl19fSwic3ViIjoiSlJjSk4yMEIyY1FtdmFfUEx0N0ciLCJqdGkiOiI5ODRlNjZiZC0yOTcwLTRmNzUtYjMzZS05N2E2NDg4NDkwY2MiLCJpYXQiOjE2NTY1MjE0MTEsImV4cCI6MjMyNTY1MjE0MTF9.jWH-J4NkXvegny7R_Ia_G9bfSg809feUrmQH_4QVD9o"
//                "eyJhbGciOiJIUzI1NiJ9.eyJhcGlfa2V5X2lkIjoicXhtcXFZRUJUZVV0U0VzNEVJLWgiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiMTAwMDI1NDE5IiwiYWNjb3VudF9pZCI6IkY3bThkSHdCc3ctT0gzTUVvVzIzIiwic3BhY2VfbmFtZSI6ImZpcnN0LXNwYWNlIiwibmFtZSI6Im5hbWUxIiwibWVtYmVyX3R5cGUiOiJJbmRpdmlkdWFsIiwibWVtYmVyX2lkIjoiX01XRmtJRUJaNUNYN2RXbnFhR0kiLCJyZXNvdXJjZV9hY2Nlc3MiOnsiemlxbmktZ2FwaSI6eyJyb2xlcyI6WyJQdWJsaWMiLCJNZW1iZXIiLCJWaWV3QWNoaWV2ZW1lbnRzIiwiVmlld0F3YXJkcyIsIkNsYWltQXdhcmRzIiwiVmlld0NvbXBldGl0aW9ucyIsIlZpZXdDb250ZXN0cyIsIlZpZXdGaWxlcyIsIlZpZXdNZW1iZXJzIiwiTWVtYmVyc09wdGluIiwiVmlld01lc3NhZ2VzIiwiQ29ubmVjdFByb3h5IiwiVmlld1Jld2FyZHMiLCJWaWV3UnVsZXMiXX19LCJzdWIiOiJfTVdGa0lFQlo1Q1g3ZFducWFHSSIsImp0aSI6IjExNzRjN2E2LTAwODAtNDE0Yi04ODVjLTAwZDk4ZjBkNDg0MiIsImlhdCI6MTY1NjU3MzkxMywiZXhwIjoyMzI1NjU3MzkxM30.zw7YeG5doaNwLaImYGRtLzGC8Xd_2xz6QTodfr4wPHw"
        );

        ApiClientFactoryWs.initialise(() -> {
            ApiClientFactoryWs.getStreamingClient().addOnStartHandler("work", streamingClient ->
                    timer.scheduleWithFixedDelay( () -> {
                        if(!ApiClientFactoryWs.getStreamingClient().isConnected()) {
                            ApiClientFactoryWs.getStreamingClient().stop();
                            timer.shutdown();
                            throw new RuntimeException("Not connected");
                        }

                        ApiClientFactoryWs.getAchievementsApi().getAchievements(
                                new AchievementRequest().achievementFilter(new AchievementFilter()
                                        .addIdsItem("88V1kIEBZ5CX7dWnd6HT")
                                ))
                                .thenAccept(SampleApp::handleResponse)
                                .exceptionally(throwable -> {
                                    throwable.printStackTrace();
                                    return null;
                                });

                        ApiClientFactoryWs.getMembersApi().getMember(new MemberRequest().addIncludeFieldsItem(Member.JSON_PROPERTY_MEMBER_REF_ID));
                    }, 5, 5, TimeUnit.SECONDS));

            return ApiClientFactoryWs.getStreamingClient().start();
        });
    }

    private static void handleResponse(AchievementResponse achievementResponse){
        System.out.println(achievementResponse);
    }
}
