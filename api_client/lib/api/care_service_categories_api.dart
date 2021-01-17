//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;


class CareServiceCategoriesApi {
  CareServiceCategoriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /care_service_categories/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CareServiceCategoryForWrite] data (required):
  Future<Response> careServiceCategoriesCreateWithHttpInfo(CareServiceCategoryForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/'.replaceAll('{format}', 'json');

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
  /// * [CareServiceCategoryForWrite] data (required):
  Future<CareServiceCategory> careServiceCategoriesCreate(CareServiceCategoryForWrite data) async {
    final response = await careServiceCategoriesCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceCategory') as CareServiceCategory;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /care_service_categories/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  Future<Response> careServiceCategoriesDeleteWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/care_service_categories/{id}/'.replaceAll('{format}', 'json')
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
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  Future<void> careServiceCategoriesDelete(String id) async {
    final response = await careServiceCategoriesDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /care_service_categories/{category_pk}/groups/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [CareServiceGroupForWrite] data (required):
  Future<Response> careServiceCategoriesGroupsCreateWithHttpInfo(String categoryPk, CareServiceGroupForWrite data) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{category_pk}/groups/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString());

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
  /// * [String] categoryPk (required):
  ///
  /// * [CareServiceGroupForWrite] data (required):
  Future<CareServiceGroup> careServiceCategoriesGroupsCreate(String categoryPk, CareServiceGroupForWrite data) async {
    final response = await careServiceCategoriesGroupsCreateWithHttpInfo(categoryPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceGroup') as CareServiceGroup;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /care_service_categories/{category_pk}/groups/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  Future<Response> careServiceCategoriesGroupsDeleteWithHttpInfo(String categoryPk, String id) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/care_service_categories/{category_pk}/groups/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
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
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  Future<void> careServiceCategoriesGroupsDelete(String categoryPk, String id) async {
    final response = await careServiceCategoriesGroupsDeleteWithHttpInfo(categoryPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /care_service_categories/{category_pk}/groups/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  Future<Response> careServiceCategoriesGroupsListWithHttpInfo(String categoryPk) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }

    final path = '/care_service_categories/{category_pk}/groups/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString());

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
  /// * [String] categoryPk (required):
  Future<List<CareServiceGroup>> careServiceCategoriesGroupsList(String categoryPk) async {
    final response = await careServiceCategoriesGroupsListWithHttpInfo(categoryPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<CareServiceGroup>') as List)
        .map((item) => item as CareServiceGroup)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /care_service_categories/{category_pk}/groups/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  ///
  /// * [CareServiceGroupForWrite] data (required):
  Future<Response> careServiceCategoriesGroupsPartialUpdateWithHttpInfo(String categoryPk, String id, CareServiceGroupForWrite data) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{category_pk}/groups/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString());

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
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  ///
  /// * [CareServiceGroupForWrite] data (required):
  Future<CareServiceGroup> careServiceCategoriesGroupsPartialUpdate(String categoryPk, String id, CareServiceGroupForWrite data) async {
    final response = await careServiceCategoriesGroupsPartialUpdateWithHttpInfo(categoryPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceGroup') as CareServiceGroup;
    }
    return null;
  }

  /// Performs an HTTP 'GET /care_service_categories/{category_pk}/groups/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  Future<Response> careServiceCategoriesGroupsReadWithHttpInfo(String categoryPk, String id) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/care_service_categories/{category_pk}/groups/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
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
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  Future<CareServiceGroup> careServiceCategoriesGroupsRead(String categoryPk, String id) async {
    final response = await careServiceCategoriesGroupsReadWithHttpInfo(categoryPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceGroup') as CareServiceGroup;
    }
    return null;
  }

  /// Performs an HTTP 'POST /care_service_categories/{category_pk}/groups/{group_pk}/services/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [CareServiceForWrite] data (required):
  Future<Response> careServiceCategoriesGroupsServicesCreateWithHttpInfo(String categoryPk, String groupPk, CareServiceForWrite data) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (groupPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{category_pk}/groups/{group_pk}/services/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'group_pk' + '}', groupPk.toString());

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
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [CareServiceForWrite] data (required):
  Future<CareService> careServiceCategoriesGroupsServicesCreate(String categoryPk, String groupPk, CareServiceForWrite data) async {
    final response = await careServiceCategoriesGroupsServicesCreateWithHttpInfo(categoryPk, groupPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareService') as CareService;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  Future<Response> careServiceCategoriesGroupsServicesDeleteWithHttpInfo(String categoryPk, String groupPk, String id) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (groupPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'group_pk' + '}', groupPk.toString())
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
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  Future<void> careServiceCategoriesGroupsServicesDelete(String categoryPk, String groupPk, String id) async {
    final response = await careServiceCategoriesGroupsServicesDeleteWithHttpInfo(categoryPk, groupPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /care_service_categories/{category_pk}/groups/{group_pk}/services/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  Future<Response> careServiceCategoriesGroupsServicesListWithHttpInfo(String categoryPk, String groupPk) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (groupPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupPk');
    }

    final path = '/care_service_categories/{category_pk}/groups/{group_pk}/services/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'group_pk' + '}', groupPk.toString());

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
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  Future<List<CareService>> careServiceCategoriesGroupsServicesList(String categoryPk, String groupPk) async {
    final response = await careServiceCategoriesGroupsServicesListWithHttpInfo(categoryPk, groupPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<CareService>') as List)
        .map((item) => item as CareService)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  ///
  /// * [CareServiceForWrite] data (required):
  Future<Response> careServiceCategoriesGroupsServicesPartialUpdateWithHttpInfo(String categoryPk, String groupPk, String id, CareServiceForWrite data) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (groupPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'group_pk' + '}', groupPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString());

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
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  ///
  /// * [CareServiceForWrite] data (required):
  Future<CareService> careServiceCategoriesGroupsServicesPartialUpdate(String categoryPk, String groupPk, String id, CareServiceForWrite data) async {
    final response = await careServiceCategoriesGroupsServicesPartialUpdateWithHttpInfo(categoryPk, groupPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareService') as CareService;
    }
    return null;
  }

  /// Performs an HTTP 'GET /care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  Future<Response> careServiceCategoriesGroupsServicesReadWithHttpInfo(String categoryPk, String groupPk, String id) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (groupPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'group_pk' + '}', groupPk.toString())
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
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  Future<CareService> careServiceCategoriesGroupsServicesRead(String categoryPk, String groupPk, String id) async {
    final response = await careServiceCategoriesGroupsServicesReadWithHttpInfo(categoryPk, groupPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareService') as CareService;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  ///
  /// * [CareServiceForWrite] data (required):
  Future<Response> careServiceCategoriesGroupsServicesUpdateWithHttpInfo(String categoryPk, String groupPk, String id, CareServiceForWrite data) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (groupPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{category_pk}/groups/{group_pk}/services/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'group_pk' + '}', groupPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString());

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
  /// * [String] categoryPk (required):
  ///
  /// * [String] groupPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service.
  ///
  /// * [CareServiceForWrite] data (required):
  Future<CareService> careServiceCategoriesGroupsServicesUpdate(String categoryPk, String groupPk, String id, CareServiceForWrite data) async {
    final response = await careServiceCategoriesGroupsServicesUpdateWithHttpInfo(categoryPk, groupPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareService') as CareService;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /care_service_categories/{category_pk}/groups/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  ///
  /// * [CareServiceGroupForWrite] data (required):
  Future<Response> careServiceCategoriesGroupsUpdateWithHttpInfo(String categoryPk, String id, CareServiceGroupForWrite data) async {
    // Verify required params are set.
    if (categoryPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: categoryPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{category_pk}/groups/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'category_pk' + '}', categoryPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString());

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
  /// * [String] categoryPk (required):
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service group.
  ///
  /// * [CareServiceGroupForWrite] data (required):
  Future<CareServiceGroup> careServiceCategoriesGroupsUpdate(String categoryPk, String id, CareServiceGroupForWrite data) async {
    final response = await careServiceCategoriesGroupsUpdateWithHttpInfo(categoryPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceGroup') as CareServiceGroup;
    }
    return null;
  }

  /// Performs an HTTP 'GET /care_service_categories/' operation and returns the [Response].
  Future<Response> careServiceCategoriesListWithHttpInfo() async {
    final path = '/care_service_categories/'.replaceAll('{format}', 'json');

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

  Future<List<CareServiceCategory>> careServiceCategoriesList() async {
    final response = await careServiceCategoriesListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<CareServiceCategory>') as List)
        .map((item) => item as CareServiceCategory)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /care_service_categories/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  ///
  /// * [CareServiceCategoryForWrite] data (required):
  Future<Response> careServiceCategoriesPartialUpdateWithHttpInfo(String id, CareServiceCategoryForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString());

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
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  ///
  /// * [CareServiceCategoryForWrite] data (required):
  Future<CareServiceCategory> careServiceCategoriesPartialUpdate(String id, CareServiceCategoryForWrite data) async {
    final response = await careServiceCategoriesPartialUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceCategory') as CareServiceCategory;
    }
    return null;
  }

  /// Performs an HTTP 'GET /care_service_categories/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  Future<Response> careServiceCategoriesReadWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/care_service_categories/{id}/'.replaceAll('{format}', 'json')
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
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  Future<CareServiceCategory> careServiceCategoriesRead(String id) async {
    final response = await careServiceCategoriesReadWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceCategory') as CareServiceCategory;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /care_service_categories/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  ///
  /// * [CareServiceCategoryForWrite] data (required):
  Future<Response> careServiceCategoriesUpdateWithHttpInfo(String id, CareServiceCategoryForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/care_service_categories/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString());

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
  /// * [String] id (required):
  ///   A unique value identifying this care service category.
  ///
  /// * [CareServiceCategoryForWrite] data (required):
  Future<CareServiceCategory> careServiceCategoriesUpdate(String id, CareServiceCategoryForWrite data) async {
    final response = await careServiceCategoriesUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CareServiceCategory') as CareServiceCategory;
    }
    return null;
  }
}
