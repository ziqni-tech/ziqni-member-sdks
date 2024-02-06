//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class GraphsApiWs {
    GraphsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get achievements by member reference id
                ///
            /// Returns a list of graphs based on the entity type.
                ///
            /// Parameters:
            ///
            /// * [EntityGraphRequest] entityGraphRequest (required):
    Future<EntityGraphResponse> getGraph(EntityGraphRequest entityGraphRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => entityGraphRequest); // Wrap the request in a body wrapper

        Completer<EntityGraphResponse> out = apiClientWs.send(destination: '/gapi/getGraph', body: preparedRequest, messageResponseType:  "EntityGraphResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
