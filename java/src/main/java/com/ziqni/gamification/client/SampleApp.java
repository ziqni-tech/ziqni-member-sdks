package com.ziqni.gamification.client;

import com.ziqni.gamification.client.configuration.ApiClientConfig;
import com.ziqni.gamification.client.model.AchievementFilter;
import com.ziqni.gamification.client.model.AchievementRequest;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class SampleApp {

    private static final ScheduledExecutorService timer = Executors.newSingleThreadScheduledExecutor();

    public static void main(String[] args) throws Exception {
        ApiClientConfig.setIdentityAuthorization(() ->
                "eyJhbGciOiJIUzI1NiJ9.eyJhcGlfa2V5X2lkIjoicXhtcXFZRUJUZVV0U0VzNEVJLWgiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiMTAwMDI1NDE5IiwiYWNjb3VudF9pZCI6IkY3bThkSHdCc3ctT0gzTUVvVzIzIiwic3BhY2VfbmFtZSI6ImZpcnN0LXNwYWNlIiwibmFtZSI6Im5hbWUxIiwibWVtYmVyX3R5cGUiOiJJbmRpdmlkdWFsIiwibWVtYmVyX2lkIjoiX01XRmtJRUJaNUNYN2RXbnFhR0kiLCJyZXNvdXJjZV9hY2Nlc3MiOnsiemlxbmktZ2FwaSI6eyJyb2xlcyI6WyJQdWJsaWMiLCJNZW1iZXIiLCJWaWV3QWNoaWV2ZW1lbnRzIiwiVmlld0F3YXJkcyIsIkNsYWltQXdhcmRzIiwiVmlld0NvbXBldGl0aW9ucyIsIlZpZXdDb250ZXN0cyIsIlZpZXdGaWxlcyIsIlZpZXdNZW1iZXJzIiwiTWVtYmVyc09wdGluIiwiVmlld01lc3NhZ2VzIiwiQ29ubmVjdFByb3h5IiwiVmlld1Jld2FyZHMiLCJWaWV3UnVsZXMiXX19LCJzdWIiOiJfTVdGa0lFQlo1Q1g3ZFducWFHSSIsImp0aSI6ImUwYzJiY2JlLTgxZWQtNDRhNi1hNjExLWE3M2Y4OGNkMjY0ZSIsImlhdCI6MTY1NjUwMzc2NCwiZXhwIjoyMzI1NjUwMzc2NH0.amud9RdayrTNqDOnnDKlcjSO0cVo3pd2Dt9D3KbYdjA"
        );

        ApiClientFactoryWs.initialise(() -> {
            ApiClientFactoryWs.getStreamingClient().addOnStartHandler("work", streamingClient -> {
                timer.scheduleWithFixedDelay(
                        () -> {
                            if(!ApiClientFactoryWs.getStreamingClient().isConnected()) {
                                ApiClientFactoryWs.getStreamingClient().stop();
                                timer.shutdown();
                                throw new RuntimeException("Not connected");
                            }

                            ApiClientFactoryWs.getAchievementsApi().getAchievements(
                                    new AchievementRequest().achievementFilter(new AchievementFilter()
                                            .addIdsItem("88V1kIEBZ5CX7dWnd6HT")
                                    )
                            ).thenAccept(System.out::println);
                        }, 5, 5, TimeUnit.SECONDS);
            });

            return ApiClientFactoryWs.getStreamingClient().start();
        });
    }
}
