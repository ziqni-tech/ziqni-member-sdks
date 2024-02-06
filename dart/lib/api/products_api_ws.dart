//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;


class ProductsApiWs {
    ProductsApiWs([ApiClientWs? apiClientWs]) : apiClientWs = apiClientWs ?? defaultApiClientWs;

    final ApiClientWs apiClientWs;

            /// Get recommended products by product Id
                ///
            /// Returns a list of products recommended for a product with given id.
                ///
            /// Parameters:
            ///
            /// * [ProductRequest] productRequest (required):
    Future<ProductResponse> getProducts(ProductRequest productRequest,) async {

        final preparedRequest = <String, dynamic>{}; // Generate a body wrapper
        preparedRequest.putIfAbsent("body", () => productRequest); // Wrap the request in a body wrapper

        Completer<ProductResponse> out = apiClientWs.send(destination: '/gapi/getProducts', body: preparedRequest, messageResponseType:  "ProductResponse");

        return out.future;

        //if (response.statusCode >= HttpStatus.badRequest) {
        //  throw ApiException(response.statusCode, await _decodeBodyBytes(response));
        //}
    }
}
