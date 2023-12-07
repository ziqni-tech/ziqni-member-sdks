//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class AchievementsApiWs {
    AchievementsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get achievements by member reference id
                ///
            /// Returns a list of achievements for the provided member ref id and applied filters.
                ///
            /// Parameters:
            ///
            /// * [AchievementRequest] achievementRequest (required):
    Future<AchievementResponse> getAchievements(AchievementRequest achievementRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => achievementRequest); // Wrap the request in a body wrapper

        Completer<AchievementResponse> out = apiClientWs.send(destination: '/gapi/getAchievements', body: preparedRequest, messageResponseType:  "AchievementResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
