//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;


class UsersApi {
  UsersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /users/' operation and returns the [Response].
  Future<Response> usersListWithHttpInfo() async {
    final path = '/users/'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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

  Future<List<WelfarebrothersUser>> usersList() async {
    final response = await usersListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WelfarebrothersUser>') as List)
        .map((item) => item as WelfarebrothersUser)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'POST /users/{user_pk}/profiles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> usersProfilesCreateWithHttpInfo(String userPk, WelfarebrothersUserProfileForWrite data) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/users/{user_pk}/profiles/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody = data;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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
  Future<WelfarebrothersUserProfile> usersProfilesCreate(String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await usersProfilesCreateWithHttpInfo(userPk, data);
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

  /// Performs an HTTP 'DELETE /users/{user_pk}/profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<Response> usersProfilesDeleteWithHttpInfo(int id, String userPk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/users/{user_pk}/profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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
  Future<void> usersProfilesDelete(int id, String userPk) async {
    final response = await usersProfilesDeleteWithHttpInfo(id, userPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /users/{user_pk}/profiles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  Future<Response> usersProfilesListWithHttpInfo(String userPk) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/users/{user_pk}/profiles/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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
  Future<List<WelfarebrothersUserProfile>> usersProfilesList(String userPk) async {
    final response = await usersProfilesListWithHttpInfo(userPk);
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

  /// Performs an HTTP 'PATCH /users/{user_pk}/profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> usersProfilesPartialUpdateWithHttpInfo(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
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

    final path = '/users/{user_pk}/profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody = data;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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
  Future<WelfarebrothersUserProfile> usersProfilesPartialUpdate(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await usersProfilesPartialUpdateWithHttpInfo(id, userPk, data);
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

  /// Performs an HTTP 'GET /users/{user_pk}/profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<Response> usersProfilesReadWithHttpInfo(int id, String userPk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/users/{user_pk}/profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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
  Future<WelfarebrothersUserProfile> usersProfilesRead(int id, String userPk) async {
    final response = await usersProfilesReadWithHttpInfo(id, userPk);
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

  /// Performs an HTTP 'PUT /users/{user_pk}/profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> usersProfilesUpdateWithHttpInfo(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
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

    final path = '/users/{user_pk}/profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString());

    Object postBody = data;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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
  Future<WelfarebrothersUserProfile> usersProfilesUpdate(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await usersProfilesUpdateWithHttpInfo(id, userPk, data);
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

  /// Performs an HTTP 'GET /users/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  Future<Response> usersReadWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/users/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Basic'];

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
  Future<WelfarebrothersUser> usersRead(int id) async {
    final response = await usersReadWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WelfarebrothersUser') as WelfarebrothersUser;
    }
    return null;
  }
}
