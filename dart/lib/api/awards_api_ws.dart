//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class AwardsApiWs {
    AwardsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Claim awards.
                ///
            /// This operation enables a member to claim awards.
                ///
            /// Parameters:
            ///
            /// * [ClaimAwardRequest] claimAwardRequest (required):
    Future<AwardResponse> claimAwards(ClaimAwardRequest claimAwardRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => claimAwardRequest); // Wrap the request in a body wrapper

        Completer<AwardResponse> out = apiClientWs.send(destination: '/gapi/claimAwards', body: preparedRequest, messageResponseType:  "AwardResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }

            /// Get awards.
                ///
            /// This operation supports retrieval of awards for one or many entities.
                ///
            /// Parameters:
            ///
            /// * [AwardRequest] awardRequest (required):
    Future<AwardResponse> getAwards(AwardRequest awardRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => awardRequest); // Wrap the request in a body wrapper

        Completer<AwardResponse> out = apiClientWs.send(destination: '/gapi/getAwards', body: preparedRequest, messageResponseType:  "AwardResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
