//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class CompetitionsApiWs {
    CompetitionsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get competitions by member reference id
                ///
            /// Returns a list of competitions for the provided member ref id and applied filters.
                ///
            /// Parameters:
            ///
            /// * [CompetitionRequest] competitionRequest (required):
    Future<CompetitionResponse> getCompetitions(CompetitionRequest competitionRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => competitionRequest); // Wrap the request in a body wrapper

        Completer<CompetitionResponse> out = apiClientWs.send(destination: '/gapi/getCompetitions', body: preparedRequest, messageResponseType:  "CompetitionResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
