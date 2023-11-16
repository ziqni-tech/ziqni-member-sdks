//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class InstantWinsApiWs {
    InstantWinsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Parameters:
            ///
            /// * [InstantWinRequest] instantWinRequest (required):
    Future<InstantWinResponse> listInstantWins(InstantWinRequest instantWinRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => instantWinRequest); // Wrap the request in a body wrapper

        Completer<InstantWinResponse> out = apiClientWs.send(destination: '/gapi/listInstantWins', body: preparedRequest, messageResponseType:  "InstantWinResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }

            /// Parameters:
            ///
            /// * [InstantWinPlayRequest] instantWinPlayRequest (required):
    Future<InstantWinPlayResponse> playInstantWin(InstantWinPlayRequest instantWinPlayRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => instantWinPlayRequest); // Wrap the request in a body wrapper

        Completer<InstantWinPlayResponse> out = apiClientWs.send(destination: '/gapi/playInstantWin', body: preparedRequest, messageResponseType:  "InstantWinPlayResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
