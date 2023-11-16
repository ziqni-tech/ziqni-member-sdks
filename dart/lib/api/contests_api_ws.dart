//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class ContestsApiWs {
    ContestsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get contests by member reference Id
                ///
            /// Returns a list of contests for the provided member ref id and applied filters.
                ///
            /// Parameters:
            ///
            /// * [ContestRequest] contestRequest (required):
    Future<ContestResponse> getContests(ContestRequest contestRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => contestRequest); // Wrap the request in a body wrapper

        Completer<ContestResponse> out = apiClientWs.send(destination: '/gapi/getContests', body: preparedRequest, messageResponseType:  "ContestResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
