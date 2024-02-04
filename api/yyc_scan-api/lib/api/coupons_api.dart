//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponsApi {
  CouponsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /Coupons/GetCounponDetail' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] couponId:
  Future<Response> couponsGetCounponDetailGetWithHttpInfo({ int? couponId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Coupons/GetCounponDetail';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (couponId != null) {
      queryParams.addAll(_queryParams('', 'couponId', couponId));
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
  /// * [int] couponId:
  Future<void> couponsGetCounponDetailGet({ int? couponId, }) async {
    final response = await couponsGetCounponDetailGetWithHttpInfo( couponId: couponId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Coupons/GetCouponsByUserId' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  Future<Response> couponsGetCouponsByUserIdGetWithHttpInfo({ String? userId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Coupons/GetCouponsByUserId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
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
  /// * [String] userId:
  Future<void> couponsGetCouponsByUserIdGet({ String? userId, }) async {
    final response = await couponsGetCouponsByUserIdGetWithHttpInfo( userId: userId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
