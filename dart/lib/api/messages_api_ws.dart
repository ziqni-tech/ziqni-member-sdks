//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class MessagesApiWs {
    MessagesApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get messages by member reference id
                ///
            /// Returns a list of messages for the provided member ref id and applied filters.
                ///
            /// Parameters:
            ///
            /// * [MessageRequest] messageRequest (required):
    Future<MessageResponse> getMessages(MessageRequest messageRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => messageRequest); // Wrap the request in a body wrapper

        Completer<MessageResponse> out = apiClientWs.send(destination: '/gapi/getMessages', body: preparedRequest, messageResponseType:  "MessageResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
