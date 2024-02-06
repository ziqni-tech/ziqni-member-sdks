//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class LeaderboardApiWs {
    LeaderboardApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Parameters:
            ///
            /// * [LeaderboardSubscriptionRequest] leaderboardSubscriptionRequest:
    Future<LeaderboardResponse> subscribeToLeaderboard({ LeaderboardSubscriptionRequest? leaderboardSubscriptionRequest, }) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => leaderboardSubscriptionRequest); // Wrap the request in a body wrapper

        Completer<LeaderboardResponse> out = apiClientWs.send(destination: '/gapi/subscribeToLeaderboard', body: preparedRequest, messageResponseType:  "LeaderboardResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
