//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class OptInApiWs {
    OptInApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get member optin information
                ///
            /// Returns a list of member optin information
                ///
            /// Parameters:
            ///
            /// * [ManageOptinRequest] manageOptinRequest (required):
    Future<OptInResponse> manageOptin(ManageOptinRequest manageOptinRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => manageOptinRequest); // Wrap the request in a body wrapper

        Completer<OptInResponse> out = apiClientWs.send(destination: '/gapi/manageOptin', body: preparedRequest, messageResponseType:  "OptInResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }

            /// Get member optin status information
                ///
            /// Returns a list of member optin status information
                ///
            /// Parameters:
            ///
            /// * [OptInStatesRequest] optInStatesRequest (required):
    Future<OptInResponse> optInStates(OptInStatesRequest optInStatesRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => optInStatesRequest); // Wrap the request in a body wrapper

        Completer<OptInResponse> out = apiClientWs.send(destination: '/gapi/optInStates', body: preparedRequest, messageResponseType:  "OptInResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
