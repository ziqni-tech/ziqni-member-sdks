//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class RewardsApiWs {
    RewardsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get rewards
                ///
            /// This operation support retrieval of rewards for one or many entitites.
                ///
            /// Parameters:
            ///
            /// * [RewardRequest] rewardRequest (required):
    Future<RewardResponse> getRewards(RewardRequest rewardRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => rewardRequest); // Wrap the request in a body wrapper

        Completer<RewardResponse> out = apiClientWs.send(destination: '/gapi/getRewards', body: preparedRequest, messageResponseType:  "RewardResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
