/*
 * Ziqni Gamification Cloud API
 * This is the gamification cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.ziqni.member.sdk.api;
import com.ziqni.member.sdk.streaming.StreamingClient;
import com.ziqni.member.sdk.ApiException;
    import com.ziqni.member.sdk.model.SubscribePost201Response;
    import java.net.URI;

import java.time.Duration;
    import java.util.*;
//asyncNative:true
import java.util.concurrent.CompletableFuture;
import java.net.http.HttpResponse;

@javax.annotation.processing.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
    public class DefaultApiWs {

    private final Duration memberVarReadTimeout;
    private final StreamingClient streamingClient;

    public DefaultApiWs(StreamingClient streamingClient, Duration readTimeout) {
        this.streamingClient = streamingClient;
        this.memberVarReadTimeout = readTimeout;
    }

    /**
    * 
    * subscribes a client to receive out-of-band data
        * @param callbackUrl the location where data will be sent.  Must be network accessible by the source server  (required)
        * @return CompletableFuture&lt;SubscribePost201Response&gt;
    * @throws ApiException if fails to make API call
    */
    public CompletableFuture<SubscribePost201Response> subscribePost(URI callbackUrl) {
        var request = new HashMap<String, Object>();
    var queryParam = new HashMap<String, Object>();
    queryParam.put("callbackUrl", callbackUrl);
    request.put("query",queryParam);

    
        

    

        CompletableFuture<SubscribePost201Response> result = this.streamingClient.sendWithApiCallback("/gapi/subscribePost", request);
        return result;
    }

    private ApiException getApiException(String operationId, HttpResponse<String> response) {
        String message = formatExceptionMessage(operationId, response.statusCode(), response.body());
        return new ApiException(response.statusCode(), message, response.headers(), response.body());
    }

    private String formatExceptionMessage(String operationId, int statusCode, String body) {
        if (body == null || body.isEmpty()) {
            body = "[no body]";
        }
        return operationId + " call failed with: " + statusCode + " - " + body;
    }
}