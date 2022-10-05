/*
 * Ziqni Member Cloud API
 * This is the Member cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.ziqni.member.sdk.api;

import com.ziqni.member.sdk.ApiClientFactoryWs;
import com.ziqni.member.sdk.ApiException;
import com.ziqni.member.sdk.model.*;
import com.ziqni.member.sdk.model.FileRequest;
import com.ziqni.member.sdk.model.FileResponse;
import org.junit.jupiter.api.*;

import java.util.concurrent.CompletableFuture;

/**
 * API tests for FilesApi
 */

public class FilesApiTest {

    private final FilesApiWs api;

    public FilesApiTest() {
        this.api = ApiClientFactoryWs.getFilesApi();
    }

    /**
     * Get files.
     *
     * This operation supports retrieval of file objects for one or many entities.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getFilesTest() throws ApiException {
        FileRequest fileRequest = null;
        CompletableFuture<FileResponse> response =
        api.getFiles(fileRequest);
        
        // TODO: test validations
    }
    
}
