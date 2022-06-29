/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.gamification.client.streaming;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

public class StreamingClient {

    private static final Logger logger = LoggerFactory.getLogger(StreamingClient.class);

    private static final boolean DEFAULT_RECONNECT_FORCE = false;
    private static final int DEFAULT_RECONNECT_ATTEMPTS = 5;
    private static final int DEFAULT_RECONNECT_DELAY = 1000;
    private static final AtomicInteger threadCount = new AtomicInteger();

    private final Thread webSocketClientThread;
    private final Map<String, Consumer<StreamingClient>> onStartHandlers = new HashMap<>();
    private final Map<String, Consumer<StreamingClient>> onStopHandlers = new HashMap<>();
    private final LinkedBlockingDeque<Consumer<WsClient>> webSocketClientTasks = new LinkedBlockingDeque<>();
    private final AtomicInteger connectionState = new AtomicInteger(WsClient.NotConnected);

    public StreamingClient(String URL) throws ExecutionException, InterruptedException {

        final var ws = new WsClient(URL, this.webSocketClientTasks, connectionState::set);
        this.webSocketClientThread = new Thread(new ThreadGroup("sockets"), ws,"WebSocketClient-" + threadCount.incrementAndGet());
        this.webSocketClientThread.setUncaughtExceptionHandler(this::uncaughtExceptionInThread);
        this.webSocketClientThread.start();
        Thread.sleep(500);
    }

    private void uncaughtExceptionInThread(Thread t, Throwable e){
        logger.error("Uncaught exception in thread " + t.getId() + " - " + t.getName() , t);
    }

    public void asyncWebSocketClient(Consumer<WsClient> consumer) {
        this.webSocketClientTasks.offer(consumer);
    }

    public <TOUT, TIN> CompletableFuture<TOUT> sendWithApiCallback(String destination, TIN payload){

        final var fut = new CompletableFuture<TOUT>();

        this.webSocketClientTasks.offer(ws -> {
            try {
                ApiCallbackEventHandler.send(destination, payload, fut, ws::send);
            } catch (Throwable t){
                fut.completeExceptionally(t);
            }
        });

        return fut;
    }


    public boolean isConnected() {
        return connectionState.get() == WsClient.Connected && this.webSocketClientThread.isAlive();
    }

    public boolean isNotConnected() {
        return connectionState.get() == WsClient.NotConnected;
    }

    public boolean isConnecting() {
        return connectionState.get() == WsClient.Connecting;
    }

    public boolean isDisconnecting() {
        return connectionState.get() == WsClient.Disconnecting;
    }

    public boolean isFailure() {
        return connectionState.get() == WsClient.SevereFailure;
    }

    public void stop() {
        this.webSocketClientTasks.offer(WsClient::shutdown);
    }

    public CompletableFuture<Boolean> start() {
        final var result = new CompletableFuture<Boolean>();
        this.webSocketClientTasks.offer( ws -> {
            ws.startClient(result).thenApply(isConnected -> {
                if(isConnected()) {
                    executeOnStartHandlers();
                }
                return isConnected;
            });
        });
        return result;
    }

    public CompletableFuture<Boolean> reconnect() {
        return reconnect(DEFAULT_RECONNECT_FORCE);
    }

    public CompletableFuture<Boolean> reconnect(boolean force) {
        return reconnect(DEFAULT_RECONNECT_ATTEMPTS, DEFAULT_RECONNECT_DELAY, force);
    }

    public CompletableFuture<Boolean> reconnect(int maxRetryCount, long reconnectDelay, boolean force) {
        final var result = new CompletableFuture<Boolean>();
        this.webSocketClientTasks.offer(ws -> ws.reconnect(result, 0, maxRetryCount, reconnectDelay, force) );
        return result;
    }

    public <T> void subscribe(EventHandler<T> eventHandler){
        this.webSocketClientTasks.offer(ws -> ws.subscribe(eventHandler));
    }

    public void addOnStopHandler(String key, Consumer<StreamingClient> consumer){
        this.onStopHandlers.compute( key, (k,v) -> consumer);
    }

    public void addOnStartHandler(String key, Consumer<StreamingClient> consumer){
        this.onStartHandlers.compute( key, (k,v) -> consumer);
    }

    public void executeOnStopHandlers() {
        this.onStopHandlers.forEach((k, v) ->
                v.accept(this)
        );
    }

    public void executeOnStartHandlers() {
        this.onStartHandlers.forEach((k, v) ->
                v.accept(this)
        );
    }

}
