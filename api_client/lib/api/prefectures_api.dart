//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;


class PrefecturesApi {
  PrefecturesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /prefectures/{prefecture_pk}/cities' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] prefecturePk (required):
  ///
  /// * [CityForWrite] data (required):
  Future<Response> prefecturesCitiesCreateWithHttpInfo(String prefecturePk, CityForWrite data) async {
    // Verify required params are set.
    if (prefecturePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: prefecturePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/prefectures/{prefecture_pk}/cities'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'prefecture_pk' + '}', prefecturePk.toString());

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
  /// * [String] prefecturePk (required):
  ///
  /// * [CityForWrite] data (required):
  Future<City> prefecturesCitiesCreate(String prefecturePk, CityForWrite data) async {
    final response = await prefecturesCitiesCreateWithHttpInfo(prefecturePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'City') as City;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /prefectures/{prefecture_pk}/cities/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  Future<Response> prefecturesCitiesDeleteWithHttpInfo(String id, String prefecturePk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (prefecturePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: prefecturePk');
    }

    final path = '/prefectures/{prefecture_pk}/cities/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'prefecture_pk' + '}', prefecturePk.toString());

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
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  Future<void> prefecturesCitiesDelete(String id, String prefecturePk) async {
    final response = await prefecturesCitiesDeleteWithHttpInfo(id, prefecturePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /prefectures/{prefecture_pk}/cities' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] prefecturePk (required):
  Future<Response> prefecturesCitiesListWithHttpInfo(String prefecturePk) async {
    // Verify required params are set.
    if (prefecturePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: prefecturePk');
    }

    final path = '/prefectures/{prefecture_pk}/cities'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'prefecture_pk' + '}', prefecturePk.toString());

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
  /// * [String] prefecturePk (required):
  Future<List<City>> prefecturesCitiesList(String prefecturePk) async {
    final response = await prefecturesCitiesListWithHttpInfo(prefecturePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<City>') as List)
        .map((item) => item as City)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /prefectures/{prefecture_pk}/cities/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  ///
  /// * [CityForWrite] data (required):
  Future<Response> prefecturesCitiesPartialUpdateWithHttpInfo(String id, String prefecturePk, CityForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (prefecturePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: prefecturePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/prefectures/{prefecture_pk}/cities/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'prefecture_pk' + '}', prefecturePk.toString());

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
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  ///
  /// * [CityForWrite] data (required):
  Future<City> prefecturesCitiesPartialUpdate(String id, String prefecturePk, CityForWrite data) async {
    final response = await prefecturesCitiesPartialUpdateWithHttpInfo(id, prefecturePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'City') as City;
    }
    return null;
  }

  /// Performs an HTTP 'GET /prefectures/{prefecture_pk}/cities/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  Future<Response> prefecturesCitiesReadWithHttpInfo(String id, String prefecturePk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (prefecturePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: prefecturePk');
    }

    final path = '/prefectures/{prefecture_pk}/cities/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'prefecture_pk' + '}', prefecturePk.toString());

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
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  Future<City> prefecturesCitiesRead(String id, String prefecturePk) async {
    final response = await prefecturesCitiesReadWithHttpInfo(id, prefecturePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'City') as City;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /prefectures/{prefecture_pk}/cities/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  ///
  /// * [CityForWrite] data (required):
  Future<Response> prefecturesCitiesUpdateWithHttpInfo(String id, String prefecturePk, CityForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (prefecturePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: prefecturePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/prefectures/{prefecture_pk}/cities/{id}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'prefecture_pk' + '}', prefecturePk.toString());

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
  /// * [String] id (required):
  ///   A unique value identifying this city.
  ///
  /// * [String] prefecturePk (required):
  ///
  /// * [CityForWrite] data (required):
  Future<City> prefecturesCitiesUpdate(String id, String prefecturePk, CityForWrite data) async {
    final response = await prefecturesCitiesUpdateWithHttpInfo(id, prefecturePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'City') as City;
    }
    return null;
  }

  /// Performs an HTTP 'POST /prefectures' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [PrefectureForWrite] data (required):
  Future<Response> prefecturesCreateWithHttpInfo(PrefectureForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/prefectures'.replaceAll('{format}', 'json');

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
  /// * [PrefectureForWrite] data (required):
  Future<Prefecture> prefecturesCreate(PrefectureForWrite data) async {
    final response = await prefecturesCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Prefecture') as Prefecture;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /prefectures/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  Future<Response> prefecturesDeleteWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/prefectures/{id}'.replaceAll('{format}', 'json')
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
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  Future<void> prefecturesDelete(String id) async {
    final response = await prefecturesDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /prefectures' operation and returns the [Response].
  Future<Response> prefecturesListWithHttpInfo() async {
    final path = '/prefectures'.replaceAll('{format}', 'json');

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

  Future<List<Prefecture>> prefecturesList() async {
    final response = await prefecturesListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Prefecture>') as List)
        .map((item) => item as Prefecture)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /prefectures/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  ///
  /// * [PrefectureForWrite] data (required):
  Future<Response> prefecturesPartialUpdateWithHttpInfo(String id, PrefectureForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/prefectures/{id}'.replaceAll('{format}', 'json')
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
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  ///
  /// * [PrefectureForWrite] data (required):
  Future<Prefecture> prefecturesPartialUpdate(String id, PrefectureForWrite data) async {
    final response = await prefecturesPartialUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Prefecture') as Prefecture;
    }
    return null;
  }

  /// Performs an HTTP 'GET /prefectures/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  Future<Response> prefecturesReadWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/prefectures/{id}'.replaceAll('{format}', 'json')
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
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  Future<Prefecture> prefecturesRead(String id) async {
    final response = await prefecturesReadWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Prefecture') as Prefecture;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /prefectures/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  ///
  /// * [PrefectureForWrite] data (required):
  Future<Response> prefecturesUpdateWithHttpInfo(String id, PrefectureForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/prefectures/{id}'.replaceAll('{format}', 'json')
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
  /// * [String] id (required):
  ///   A unique value identifying this prefecture.
  ///
  /// * [PrefectureForWrite] data (required):
  Future<Prefecture> prefecturesUpdate(String id, PrefectureForWrite data) async {
    final response = await prefecturesUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Prefecture') as Prefecture;
    }
    return null;
  }
}
