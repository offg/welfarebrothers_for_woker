//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;


class AuthApi {
  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /auth/facility_linking/_finish_flow' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<Response> authFacilityLinkingFinishFlowCreateWithHttpInfo({ String facilityUserLinkId }) async {
    // Verify required params are set.

    final path = '/auth/facility_linking/_finish_flow'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (facilityUserLinkId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'facility_user_link_id', facilityUserLinkId));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Bearer'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<void> authFacilityLinkingFinishFlowCreate({ String facilityUserLinkId }) async {
    final response = await authFacilityLinkingFinishFlowCreateWithHttpInfo( facilityUserLinkId: facilityUserLinkId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /auth/facility_linking/_greet' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<Response> authFacilityLinkingGreetCreateWithHttpInfo({ String facilityUserLinkId }) async {
    // Verify required params are set.

    final path = '/auth/facility_linking/_greet'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (facilityUserLinkId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'facility_user_link_id', facilityUserLinkId));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Bearer'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<void> authFacilityLinkingGreetCreate({ String facilityUserLinkId }) async {
    final response = await authFacilityLinkingGreetCreateWithHttpInfo( facilityUserLinkId: facilityUserLinkId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /auth/facility_linking' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<Response> authFacilityLinkingListWithHttpInfo({ String facilityUserLinkId }) async {
    // Verify required params are set.

    final path = '/auth/facility_linking'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (facilityUserLinkId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'facility_user_link_id', facilityUserLinkId));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Bearer'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<void> authFacilityLinkingList({ String facilityUserLinkId }) async {
    final response = await authFacilityLinkingListWithHttpInfo( facilityUserLinkId: facilityUserLinkId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /auth/facility_linking/_start_flow' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<Response> authFacilityLinkingStartFlowCreateWithHttpInfo({ String facilityUserLinkId }) async {
    // Verify required params are set.

    final path = '/auth/facility_linking/_start_flow'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (facilityUserLinkId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'facility_user_link_id', facilityUserLinkId));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Bearer'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<void> authFacilityLinkingStartFlowCreate({ String facilityUserLinkId }) async {
    final response = await authFacilityLinkingStartFlowCreateWithHttpInfo( facilityUserLinkId: facilityUserLinkId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /auth/facility_linking/_verify' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<Response> authFacilityLinkingVerifyCreateWithHttpInfo({ String facilityUserLinkId }) async {
    // Verify required params are set.

    final path = '/auth/facility_linking/_verify'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (facilityUserLinkId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'facility_user_link_id', facilityUserLinkId));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Bearer'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] facilityUserLinkId:
  Future<void> authFacilityLinkingVerifyCreate({ String facilityUserLinkId }) async {
    final response = await authFacilityLinkingVerifyCreateWithHttpInfo( facilityUserLinkId: facilityUserLinkId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /auth/token' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [WelfarebrothersTokenClaimsForWrite] data (required):
  Future<Response> authTokenCreateWithHttpInfo(WelfarebrothersTokenClaimsForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/auth/token'.replaceAll('{format}', 'json');

    Object postBody = data;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Bearer'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [WelfarebrothersTokenClaimsForWrite] data (required):
  Future<WelfarebrothersTokenClaims> authTokenCreate(WelfarebrothersTokenClaimsForWrite data) async {
    final response = await authTokenCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WelfarebrothersTokenClaims') as WelfarebrothersTokenClaims;
    }
    return null;
  }

  /// Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenRefresh] data (required):
  Future<Response> authTokenRefreshCreateWithHttpInfo(TokenRefresh data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/auth/token/refresh/'.replaceAll('{format}', 'json');

    Object postBody = data;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Bearer'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.
  ///
  /// Parameters:
  ///
  /// * [TokenRefresh] data (required):
  Future<TokenRefresh> authTokenRefreshCreate(TokenRefresh data) async {
    final response = await authTokenRefreshCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TokenRefresh') as TokenRefresh;
    }
    return null;
  }
}
