//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class CallbacksApiWs {
    CallbacksApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Describe the system callbacks and there constraints
                ///
            /// subscribes a client to receive out-of-band data
    Future<CallbacksResponse> listCallbacks() async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        

        Completer<CallbacksResponse> out = apiClientWs.send(destination: '/gapi/listCallbacks', body: preparedRequest, messageResponseType:  "CallbacksResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
