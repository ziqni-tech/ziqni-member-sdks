/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.gamification.client.streaming;

import com.ziqni.gamification.client.configuration.ApiClientConfig;
import com.ziqni.gamification.client.streaming.concurrent.ManagementFunction;
import com.ziqni.gamification.client.streaming.concurrent.MessageToSend;
import com.ziqni.gamification.client.util.Common;
import com.ziqni.gamification.client.util.ZiqniClientObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.converter.MappingJackson2MessageConverter;
import org.springframework.messaging.simp.stomp.*;
import org.springframework.scheduling.TaskScheduler;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.util.concurrent.FailureCallback;
import org.springframework.util.concurrent.ListenableFuture;
import org.springframework.util.concurrent.SuccessCallback;
import org.springframework.web.socket.WebSocketHttpHeaders;
import org.springframework.web.socket.client.jetty.JettyWebSocketClient;
import org.springframework.web.socket.messaging.WebSocketStompClient;
import org.springframework.web.socket.sockjs.client.SockJsClient;
import org.springframework.web.socket.sockjs.client.Transport;
import org.springframework.web.socket.sockjs.client.WebSocketTransport;

import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import java.util.function.Supplier;

public class WsClient {

    private static final Logger logger = LoggerFactory.getLogger(WsClient.class);

    private static final long DEFAULT_RECONNECT_DELAY = 1000;
    private static final int DEFAULT_RECONNECT_ATTEMPTS = 5;

    private final static ScheduledExecutorService scheduledExecutor = Executors.newSingleThreadScheduledExecutor();

    private final static ConcurrentHashMap<String, ScheduledFuture<?>> scheduledTasks = new ConcurrentHashMap<>();

    private final WsStompSessionHandler stompSessionHandler;

    private final Timer reconnectTimer;

    private final long reconnectDelay;

    private final int reconnectAttempts;

    private final TaskScheduler taskScheduler;

    private final String wsUri;

    private final StompHeaders stompHeaders;

    private WebSocketStompClient stompClient;

    private StompSession stompSession;

    private final List<SuccessCallback<StompSession>> connectListeners;

    private final List<FailureCallback> disconnectListeners;

    public static final int SevereFailure = -1;
    public static final int NotConnected = 0;

    public static final int Connecting = 1;
    public static final int Connected = 2;
    public static final int Disconnecting = 3;


    private final AtomicInteger connectionStateAtomic = new AtomicInteger(NotConnected);

    private final Consumer<Integer> onStateChange;


    public WsClient(final String wsUri, final Consumer<Integer> onStateChange) {
        this(wsUri, DEFAULT_RECONNECT_DELAY, DEFAULT_RECONNECT_ATTEMPTS, makeAuthHeader(), onStateChange);
    }

    protected WsClient(final String wsUri, final StompHeaders stompHeaders, final Consumer<Integer> onStateChange) {
        this(wsUri, DEFAULT_RECONNECT_DELAY, DEFAULT_RECONNECT_ATTEMPTS, stompHeaders, onStateChange);
    }

    protected WsClient(final String wsUri, final long reconnectDelay, final int reconnectAttempts, final StompHeaders stompHeaders, final Consumer<Integer> onStateChange) {

        this.wsUri = wsUri;
        this.reconnectAttempts = reconnectAttempts;
        this.taskScheduler = new ThreadPoolTaskScheduler();
        this.reconnectTimer = new Timer("ReconnectTimer");
        this.reconnectDelay = reconnectDelay;
        this.stompSessionHandler = new WsStompSessionHandler();
        this.connectListeners = new ArrayList<>();
        this.disconnectListeners = new ArrayList<>();
        this.stompHeaders = stompHeaders;
        this.onStateChange = onStateChange;
    }

    public void subscribe(EventHandler<?> handler) {
        stompSessionHandler.subscribe(stompSession,handler);
    }

    private static StompHeaders makeAuthHeader() {
        StompHeaders stompHeaders = new StompHeaders();
        updateOauthToken(stompHeaders);
        return stompHeaders;
    }

    private static void updateOauthToken(StompHeaders stompHeaders) {
        String oauthToken = ApiClientConfig.getAccessTokenString();
        stompHeaders.setLogin("Bearer");
        stompHeaders.setPasscode(oauthToken);
    }

    public <T> MessageToSend<T> prepareMessageToSend(StompHeaders headers, T payload){
        return new MessageToSend<>(headers, payload, stompSession);
    }

    /**
     * Add a listener to fire on successful WebSocket/Stomp connection
     * @param listener
     */
    public void addConnectListener(SuccessCallback<StompSession> listener) {
        connectListeners.add(listener);
    }

    /**
     * Add a listener which fires when the WebSocket/Stomp connection is broken (or fails to connect)
     * @param listener
     */
    public void addDisconnectListener(FailureCallback listener) {
        disconnectListeners.add(listener);
    }
    
    private void setConnectionState(Integer state){
        this.connectionStateAtomic.set(state);
        
        try {
            onStateChange.accept(state);
        } catch (Throwable t) {
            logger.error("Error during change notify", t);
        }
    }

    public boolean isConnected() {
        return connectionStateAtomic.get() == Connected;
    }

    public boolean isNotConnected() {
        return connectionStateAtomic.get() == NotConnected;
    }

    public boolean isConnecting() {
        return connectionStateAtomic.get() == Connecting;
    }

    public boolean isDisconnecting() {
        return connectionStateAtomic.get() == Disconnecting;
    }

    public boolean isFailure() {
        return connectionStateAtomic.get() == SevereFailure;
    }

    public CompletableFuture<Boolean> reconnect() {
        return reconnect(false);
    }

    public CompletableFuture<Boolean> reconnect(boolean force) {
        return reconnect(0, reconnectAttempts, reconnectDelay, force);
    }

    public CompletableFuture<Boolean> reconnect(final int retryCount, final int maxRetryCount, final long reconnectDelay, final boolean force) {
        logger.warn("Connection lost, attempting to reconnect to the server.");
        final var result = new CompletableFuture<Boolean>();
        reconnect(result, retryCount, maxRetryCount, reconnectDelay, force);
        return result;
    }

    public CompletableFuture<Boolean> reconnect(final CompletableFuture<Boolean> resultCompletableFuture, final int retryCount, final int maxRetryCount, final long reconnectDelay, final boolean force) {
        final String jobId = Common.getNextId();
        reconnect(resultCompletableFuture, jobId, retryCount, maxRetryCount, reconnectDelay, force);
        return resultCompletableFuture;
    }

    private void reconnect(final CompletableFuture<Boolean> resultCompletableFuture, final String jobId, final int retryCount, final int maxRetryCount, final long reconnectDelay, final boolean force) {
        logger.debug("Attempting to reconnect websocket client to server with details, jobId [{}], retryCount [{}], maxRetryCount [{}], reconnectDelay [{}], force [{}]", jobId, retryCount, maxRetryCount, reconnectDelay, force);
        if (this.isConnected() && !force) {
            cleanUpScheduledTasks(jobId);
            resultCompletableFuture.complete(this.isConnected());
        } else {
            setConnectionState(Disconnecting);
            disconnect(jobId);
            try {
                doScheduleManagement(() -> reconnectFunc(retryCount, maxRetryCount, jobId),jobId , reconnectDelay, TimeUnit.MILLISECONDS)
                        .getCompletableFuture()
                        .thenApply((stompSession) -> {
                                    resultCompletableFuture.complete(stompSession.isConnected());
                                    cleanUpScheduledTasks(jobId);
                                    return stompSession.isConnected();
                                }
                        ).exceptionally((exception) -> {
                            if (retryCount < maxRetryCount) {
                                reconnect(resultCompletableFuture, retryCount + 1, maxRetryCount, reconnectDelay, false); // increment retry count
                            } else {
                                logger.error("Reconnect failure. Retry attempts exhausted for job id [{}] retry count [{}] of max attempts [{}]", jobId, retryCount, maxRetryCount, exception);
                                setConnectionState(SevereFailure);
                                resultCompletableFuture.complete(false);
                            }
                            return false;
                        })
                        .get(reconnectDelay, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                logger.debug("Exception waiting reconnect for job to complete. [{}]", e.getMessage());
            }
        }
    }

    public StompSession reconnectFunc(final int retryCount, final int maxAttempts, final String jobId) {
        if(isConnected()) {
            cleanUpScheduledTasks(jobId);
            return stompSession;
        } else if(retryCount >= maxAttempts && !isConnected()) {
            setConnectionState(SevereFailure);
            var connectErrorMessage = "Reconnect failure. Retry attempts exhausted for jobId [" + jobId + "] and retry attempts [" + retryCount + "], max attempts ["+ maxAttempts + "]";
            var t = new RuntimeException(connectErrorMessage);
            logger.error("connection failure", t);
            throw t;
        } else {
            try {
                createClient();
                var doConnectFuture = doConnect();
                var resToReturn = doConnectFuture.join();
                setIsConnected();
                return resToReturn;
            } catch (Throwable t) {
                logger.error("Exception occurred while attempting establish connection during reconnect operation [{}]", t.getMessage());
                throw t;
            }
        }
    }

    private void cleanUpScheduledTasks(String jobId) {
        scheduledTasks.computeIfPresent(jobId, (k, v) -> {
            try {
                v.cancel(true);
            } catch (Exception e) {
                logger.error("scheduled future cancelling jobId [{}] threw exception [{}]", k, e.getMessage());
            }
            return null;
        });
    }

    public CompletableFuture<Boolean> startClient(CompletableFuture<Boolean> startResult) {
        if(isConnected()) {
            startResult.complete(isConnected());
            return startResult;
        }

        final String jobId = Common.getNextId();

        return doManagement( () -> {
            setConnectionState(Connecting);
            logger.info("Connecting");
            createClient();
            return doConnect().join().isConnected();
            }, jobId).getCompletableFuture().
                thenApply((connected) -> {
                    setIsConnected();
                    return connected;
                }).exceptionally((exception) -> {
                    if(ConnectionLostException.class.isAssignableFrom(exception.getCause().getClass())) {
                        final var e = (ConnectionLostException) exception.getCause();
                        logger.error("[Start] [doConnect] Exception occurred: " + e.getMessage());
                    }
                    else {
                        logger.error("[Start] [doConnect] Exception occurred", exception.getCause());
                    }
                    setConnectionState(SevereFailure);
                    return false;
                });
    }

    public void shutdown() {

        if (isNotConnected())
            return;

        setConnectionState(Disconnecting);
        final String jobId = Common.getNextId();
        disconnect(jobId);
        reconnectTimer.cancel();
        // do not accept new work
        // finish what is in pipeline

        scheduledExecutor.shutdown();
    }

    private void disconnect(final String jobId) {
        doManagement(() -> disconnectFunc(jobId), jobId );
        stompClient = null;
        stompSession = null;
    }

    private WebSocketStompClient disconnectFunc(String jobId) {
        if (stompClient != null && stompClient.isRunning()) {
            try {
                if(stompClient.isRunning())
                    try {
                        stompClient.stop();
                    } catch (RuntimeException e) {
                        logger.error("Stomp client stop operation exception [{}] produced result [{}] operation for jobId [{}] and connection state is [{}]", e.getMessage(), stompClient.isRunning(), jobId, connectionStateAtomic.get());
                    }
                setConnectionState(NotConnected);
                return stompClient;
            } catch (Throwable t) {
                setConnectionState(SevereFailure);
                logger.error("err stopping client: " + t);
                throw t;
            }
        } else
            return stompClient;
    }


    private <T> ManagementFunction<T> doManagement(Supplier<T> func, final String jobId) {
        var m = new ManagementFunction<T>(func, jobId);

        try {
            scheduledExecutor.submit(m);
        } catch (Exception e) {
            logger.error("Management task failed to submit to the executor for job id [{}] with error [{}]", m.getJobId(), e.getMessage());
        }

        return m;

    }

    private <T> ManagementFunction<T> doScheduleManagement(final Supplier<T> func, final String jobId, final long reconnectDelay, final TimeUnit timeUnit) {
        final var managementFunction = new ManagementFunction<>(func, jobId);

        scheduledTasks.computeIfAbsent(
                managementFunction.getJobId(),
                s -> scheduledExecutor.scheduleWithFixedDelay(managementFunction, reconnectDelay, reconnectDelay, timeUnit)
        );

        return managementFunction;
    }

    private void createClient() {
        // setup transports & socksjs
        JettyWebSocketClient jettyWebSocketClient = new JettyWebSocketClient();
        List<Transport> transports = new ArrayList<>(2);
        transports.add(new WebSocketTransport(jettyWebSocketClient));
        SockJsClient sockJsClient = new SockJsClient(transports);

        // create stomp client
        stompClient = new WebSocketStompClient(sockJsClient);
        stompClient.setTaskScheduler(taskScheduler);

        var mappingJackson2MessageConverter = new MappingJackson2MessageConverter();
        mappingJackson2MessageConverter.setObjectMapper(new ZiqniClientObjectMapper().serializingObjectMapper());
        stompClient.setMessageConverter(mappingJackson2MessageConverter);

        stompClient.start();
    }

    private CompletableFuture<StompSession> doConnect() {

        try {
            updateOauthToken(stompHeaders);

            final ListenableFuture<StompSession> future = stompClient.connect(wsUri, new WebSocketHttpHeaders(), stompHeaders, stompSessionHandler);

            future.completable()
                    .thenApply(newStompSession -> {
                        stompSession = newStompSession;
                        logger.info("Connection established successfully with the server.");
                        this.stompSessionHandler.reconnectAllTopics(stompSession);
                        notifyConnectListeners(newStompSession);
                        return future;
                    }).exceptionally(throwable -> {
                        logger.debug("Stomp client connection call back exception. [{}]", throwable.getMessage());
                        notifyDisconnectListeners(throwable);
                        return future;
                    });

            return future.completable();
        } catch (Exception e) {
            var future = new CompletableFuture<StompSession>().toCompletableFuture();
            future.completeExceptionally(e);
            return future;
        }
    }

    private void notifyConnectListeners(StompSession session) {
        for (SuccessCallback<StompSession> successCallback : connectListeners) {
            successCallback.onSuccess(session);
        }
    }

    private void notifyDisconnectListeners(Throwable throwable) {
        for (FailureCallback failCallback : disconnectListeners) {
            failCallback.onFailure(throwable);
        }
    }

    private void setIsConnected() {
        if (stompClient != null
                && stompClient.isRunning()
                && stompSession != null
                && stompSession.isConnected()
                && !isConnected()
        )
            setConnectionState(Connected);
    }

}
