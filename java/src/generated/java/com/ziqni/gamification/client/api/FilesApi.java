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

package com.ziqni.gamification.client.api;
import javax.ws.rs.core.GenericType;
import com.ziqni.gamification.client.StreamingClient;
import com.ziqni.gamification.client.ApiClient;
import com.ziqni.gamification.client.ApiException;
import com.ziqni.gamification.client.ApiResponse;
import com.ziqni.gamification.client.Pair;
    import com.ziqni.gamification.client.model.FileRequest;
    import com.ziqni.gamification.client.model.FileResponse;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.time.Duration;
    import java.util.*;
//asyncNative:true
import java.util.concurrent.CompletableFuture;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.function.Consumer;

@javax.annotation.processing.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
    public class FilesApi { //extends FilesApi {
    private final ApiClient apiClient;
    private final ObjectMapper memberVarObjectMapper;
    private final Duration memberVarReadTimeout;
    private final StreamingClient streamingClient;

    private final HttpClient memberVarHttpClient;
    private final String memberVarBaseUri;
    private final Consumer<HttpRequest.Builder> memberVarInterceptor;
    private final Consumer<HttpResponse<InputStream>> memberVarResponseInterceptor;
    private final Consumer<HttpResponse<String>> memberVarAsyncResponseInterceptor;

    public FilesApi(ApiClient apiClient, StreamingClient streamingClient, Duration readTimeout) {
        this.apiClient = apiClient;
        this.memberVarObjectMapper = apiClient.getObjectMapper();
        this.streamingClient = streamingClient;
        this.memberVarReadTimeout = null;

        memberVarHttpClient = apiClient.getHttpClient();
        memberVarBaseUri = apiClient.getBaseUri();
        memberVarInterceptor = apiClient.getRequestInterceptor();
        memberVarResponseInterceptor = apiClient.getResponseInterceptor();
        memberVarAsyncResponseInterceptor = apiClient.getAsyncResponseInterceptor();
    }

        // x-ws-exclude --> 
    /**
    * Get files.
    * This operation supports retrieval of file objects for one or many entities.
        * @param fileRequest  (required)
        * @return CompletableFuture&lt;FileResponse&gt;
    * @throws ApiException if fails to make API call
    */
    public CompletableFuture<FileResponse> getFiles(FileRequest fileRequest) {
        var request = new HashMap<String, Object>();
    
        

    
        
    //request.put("fileRequest",fileRequest);
    request.put("body",fileRequest);

        CompletableFuture<FileResponse> result = this.streamingClient.sendWithApiCallback("/gapi/getFiles", request);
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
