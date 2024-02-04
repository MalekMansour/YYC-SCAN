//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HomeApi {
  HomeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /Home/GenerateQRCode' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] baseString:
  Future<Response> homeGenerateQRCodeGetWithHttpInfo({ String? baseString, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Home/GenerateQRCode';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (baseString != null) {
      queryParams.addAll(_queryParams('', 'baseString', baseString));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] baseString:
  Future<void> homeGenerateQRCodeGet({ String? baseString, }) async {
    final response = await homeGenerateQRCodeGetWithHttpInfo( baseString: baseString, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
