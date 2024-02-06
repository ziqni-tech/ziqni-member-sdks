//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class RulesApiWs {
    RulesApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get rules
                ///
            /// This operation support retrieval of rules for one or many entities.
                ///
            /// Parameters:
            ///
            /// * [EntityRequest] entityRequest (required):
    Future<RuleResponse> getRules(EntityRequest entityRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => entityRequest); // Wrap the request in a body wrapper

        Completer<RuleResponse> out = apiClientWs.send(destination: '/gapi/getRules', body: preparedRequest, messageResponseType:  "RuleResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
