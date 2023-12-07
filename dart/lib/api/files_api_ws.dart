//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class FilesApiWs {
    FilesApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get files.
                ///
            /// This operation supports retrieval of file objects for one or many entities.
                ///
            /// Parameters:
            ///
            /// * [FileRequest] fileRequest (required):
    Future<FileObjectResponse> getFiles(FileRequest fileRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => fileRequest); // Wrap the request in a body wrapper

        Completer<FileObjectResponse> out = apiClientWs.send(destination: '/gapi/getFiles', body: preparedRequest, messageResponseType:  "FileObjectResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
