//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;


class MeApi {
  MeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /me' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [UserForWrite] data (required):
  Future<Response> meCreateWithHttpInfo(UserForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/me'.replaceAll('{format}', 'json');

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
  /// * [UserForWrite] data (required):
  Future<User> meCreate(UserForWrite data) async {
    final response = await meCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /me/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  Future<Response> meDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/me/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
      'DELETE',
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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  Future<void> meDelete(int id) async {
    final response = await meDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /me/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  ///
  /// * [UserForWrite] data (required):
  Future<Response> mePartialUpdateWithHttpInfo(int id, UserForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/me/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString());

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
      'PATCH',
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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  ///
  /// * [UserForWrite] data (required):
  Future<User> mePartialUpdate(int id, UserForWrite data) async {
    final response = await mePartialUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    }
    return null;
  }

  /// Performs an HTTP 'POST /me/{user_pk}/profile' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> meProfileCreateWithHttpInfo(String userPk, WelfarebrothersUserProfileForWrite data) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/me/{user_pk}/profile'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

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
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<WelfarebrothersUserProfile> meProfileCreate(String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await meProfileCreateWithHttpInfo(userPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WelfarebrothersUserProfile') as WelfarebrothersUserProfile;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /me/{user_pk}/profile/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<Response> meProfileDeleteWithHttpInfo(int id, String userPk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/me/{user_pk}/profile/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
      'DELETE',
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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<void> meProfileDelete(int id, String userPk) async {
    final response = await meProfileDeleteWithHttpInfo(id, userPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /me/{user_pk}/profile' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  Future<Response> meProfileListWithHttpInfo(String userPk) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/me/{user_pk}/profile'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] userPk (required):
  Future<List<WelfarebrothersUserProfile>> meProfileList(String userPk) async {
    final response = await meProfileListWithHttpInfo(userPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WelfarebrothersUserProfile>') as List)
        .map((item) => item as WelfarebrothersUserProfile)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /me/{user_pk}/profile/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> meProfilePartialUpdateWithHttpInfo(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/me/{user_pk}/profile/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

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
      'PATCH',
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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<WelfarebrothersUserProfile> meProfilePartialUpdate(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await meProfilePartialUpdateWithHttpInfo(id, userPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WelfarebrothersUserProfile') as WelfarebrothersUserProfile;
    }
    return null;
  }

  /// Performs an HTTP 'GET /me/{user_pk}/profile/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<Response> meProfileReadWithHttpInfo(int id, String userPk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/me/{user_pk}/profile/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<WelfarebrothersUserProfile> meProfileRead(int id, String userPk) async {
    final response = await meProfileReadWithHttpInfo(id, userPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WelfarebrothersUserProfile') as WelfarebrothersUserProfile;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /me/{user_pk}/profile/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> meProfileUpdateWithHttpInfo(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/me/{user_pk}/profile/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

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
      'PUT',
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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<WelfarebrothersUserProfile> meProfileUpdate(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await meProfileUpdateWithHttpInfo(id, userPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WelfarebrothersUserProfile') as WelfarebrothersUserProfile;
    }
    return null;
  }

  /// Performs an HTTP 'GET /me/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  Future<Response> meReadWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/me/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  Future<User> meRead(int id) async {
    final response = await meReadWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /me/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  ///
  /// * [UserForWrite] data (required):
  Future<Response> meUpdateWithHttpInfo(int id, UserForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/me/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString());

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
      'PUT',
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
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  ///
  /// * [UserForWrite] data (required):
  Future<User> meUpdate(int id, UserForWrite data) async {
    final response = await meUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    }
    return null;
  }
}
