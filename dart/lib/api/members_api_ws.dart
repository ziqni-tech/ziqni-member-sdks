//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class MembersApiWs {
    MembersApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get member information by member reference id
                ///
            /// Returns member information for the provided member reference id
                ///
            /// Parameters:
            ///
            /// * [MemberRequest] memberRequest (required):
    Future<MemberResponse> getMember(MemberRequest memberRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => memberRequest); // Wrap the request in a body wrapper

        Completer<MemberResponse> out = apiClientWs.send(destination: '/gapi/getMember', body: preparedRequest, messageResponseType:  "MemberResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
