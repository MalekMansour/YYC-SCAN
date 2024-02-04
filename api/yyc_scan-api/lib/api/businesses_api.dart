//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BusinessesApi {
  BusinessesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /Businesses/GetAllBusinessesByBusinessTypeAndCategory' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] businessType:
  ///
  /// * [String] category:
  Future<Response> businessesGetAllBusinessesByBusinessTypeAndCategoryGetWithHttpInfo({ int? businessType, String? category, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetAllBusinessesByBusinessTypeAndCategory';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (businessType != null) {
      queryParams.addAll(_queryParams('', 'businessType', businessType));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
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
  /// * [int] businessType:
  ///
  /// * [String] category:
  Future<void> businessesGetAllBusinessesByBusinessTypeAndCategoryGet({ int? businessType, String? category, }) async {
    final response = await businessesGetAllBusinessesByBusinessTypeAndCategoryGetWithHttpInfo( businessType: businessType, category: category, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Businesses/GetAllBusinessesByBusinessType' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] businessType:
  Future<Response> businessesGetAllBusinessesByBusinessTypeGetWithHttpInfo({ int? businessType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetAllBusinessesByBusinessType';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (businessType != null) {
      queryParams.addAll(_queryParams('', 'businessType', businessType));
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
  /// * [int] businessType:
  Future<void> businessesGetAllBusinessesByBusinessTypeGet({ int? businessType, }) async {
    final response = await businessesGetAllBusinessesByBusinessTypeGetWithHttpInfo( businessType: businessType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Businesses/GetAllBusinessesByCategory' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] category:
  Future<Response> businessesGetAllBusinessesByCategoryGetWithHttpInfo({ String? category, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetAllBusinessesByCategory';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
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
  /// * [String] category:
  Future<void> businessesGetAllBusinessesByCategoryGet({ String? category, }) async {
    final response = await businessesGetAllBusinessesByCategoryGetWithHttpInfo( category: category, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Businesses/GetAllBusinesses' operation and returns the [Response].
  Future<Response> businessesGetAllBusinessesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetAllBusinesses';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  Future<List<Business>?> businessesGetAllBusinessesGet() async {
    final response = await businessesGetAllBusinessesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Business>') as List)
        .cast<Business>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /Businesses/GetBusinessDetail' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] businessId:
  Future<Response> businessesGetBusinessDetailGetWithHttpInfo({ int? businessId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetBusinessDetail';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (businessId != null) {
      queryParams.addAll(_queryParams('', 'businessId', businessId));
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
  /// * [int] businessId:
  Future<void> businessesGetBusinessDetailGet({ int? businessId, }) async {
    final response = await businessesGetBusinessDetailGetWithHttpInfo( businessId: businessId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Businesses/GetBusinessReviews' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] businessId:
  Future<Response> businessesGetBusinessReviewsGetWithHttpInfo({ int? businessId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetBusinessReviews';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (businessId != null) {
      queryParams.addAll(_queryParams('', 'businessId', businessId));
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
  /// * [int] businessId:
  Future<void> businessesGetBusinessReviewsGet({ int? businessId, }) async {
    final response = await businessesGetBusinessReviewsGetWithHttpInfo( businessId: businessId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Businesses/GetBusinessesByActivity' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] activity:
  Future<Response> businessesGetBusinessesByActivityGetWithHttpInfo({ String? activity, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetBusinessesByActivity';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (activity != null) {
      queryParams.addAll(_queryParams('', 'activity', activity));
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
  /// * [String] activity:
  Future<void> businessesGetBusinessesByActivityGet({ String? activity, }) async {
    final response = await businessesGetBusinessesByActivityGetWithHttpInfo( activity: activity, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Businesses/GetBusinessesByGoodFor' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] goodfor:
  Future<Response> businessesGetBusinessesByGoodForGetWithHttpInfo({ String? goodfor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetBusinessesByGoodFor';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (goodfor != null) {
      queryParams.addAll(_queryParams('', 'goodfor', goodfor));
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
  /// * [String] goodfor:
  Future<void> businessesGetBusinessesByGoodForGet({ String? goodfor, }) async {
    final response = await businessesGetBusinessesByGoodForGetWithHttpInfo( goodfor: goodfor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Businesses/GetTop3Businesses' operation and returns the [Response].
  Future<Response> businessesGetTop3BusinessesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Businesses/GetTop3Businesses';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  Future<void> businessesGetTop3BusinessesGet() async {
    final response = await businessesGetTop3BusinessesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
