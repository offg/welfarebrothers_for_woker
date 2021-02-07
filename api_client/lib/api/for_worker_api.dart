//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;


class ForWorkerApi {
  ForWorkerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /for_worker/facilities/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [FacilityForWorkerForWrite] data (required):
  Future<Response> forWorkerFacilitiesCreateWithHttpInfo(FacilityForWorkerForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facilities/'.replaceAll('{format}', 'json');

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
  /// * [FacilityForWorkerForWrite] data (required):
  Future<FacilityForWorker> forWorkerFacilitiesCreate(FacilityForWorkerForWrite data) async {
    final response = await forWorkerFacilitiesCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityForWorker') as FacilityForWorker;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this facility.
  Future<Response> forWorkerFacilitiesDeleteWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facilities/{id}/'.replaceAll('{format}', 'json')
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
  ///   A UUID string identifying this facility.
  Future<void> forWorkerFacilitiesDelete(String id) async {
    final response = await forWorkerFacilitiesDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facilities/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] prefecture:
  ///
  /// * [String] city:
  ///
  /// * [String] careServiceGroup:
  ///
  /// * [String] careServiceGroupCategory:
  ///
  /// * [String] keywordContains:
  Future<Response> forWorkerFacilitiesListWithHttpInfo({ String prefecture, String city, String careServiceGroup, String careServiceGroupCategory, String keywordContains }) async {
    // Verify required params are set.

    final path = '/for_worker/facilities/'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (prefecture != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'prefecture', prefecture));
    }
    if (city != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'city', city));
    }
    if (careServiceGroup != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'care_service__group', careServiceGroup));
    }
    if (careServiceGroupCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'care_service__group__category', careServiceGroupCategory));
    }
    if (keywordContains != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keyword__contains', keywordContains));
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
  /// * [String] prefecture:
  ///
  /// * [String] city:
  ///
  /// * [String] careServiceGroup:
  ///
  /// * [String] careServiceGroupCategory:
  ///
  /// * [String] keywordContains:
  Future<List<FacilityForWorker>> forWorkerFacilitiesList({ String prefecture, String city, String careServiceGroup, String careServiceGroupCategory, String keywordContains }) async {
    final response = await forWorkerFacilitiesListWithHttpInfo( prefecture: prefecture, city: city, careServiceGroup: careServiceGroup, careServiceGroupCategory: careServiceGroupCategory, keywordContains: keywordContains );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FacilityForWorker>') as List)
        .map((item) => item as FacilityForWorker)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this facility.
  ///
  /// * [FacilityForWorkerForWrite] data (required):
  Future<Response> forWorkerFacilitiesPartialUpdateWithHttpInfo(String id, FacilityForWorkerForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facilities/{id}/'.replaceAll('{format}', 'json')
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
  ///   A UUID string identifying this facility.
  ///
  /// * [FacilityForWorkerForWrite] data (required):
  Future<FacilityForWorker> forWorkerFacilitiesPartialUpdate(String id, FacilityForWorkerForWrite data) async {
    final response = await forWorkerFacilitiesPartialUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityForWorker') as FacilityForWorker;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this facility.
  Future<Response> forWorkerFacilitiesReadWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facilities/{id}/'.replaceAll('{format}', 'json')
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
  ///   A UUID string identifying this facility.
  Future<FacilityForWorker> forWorkerFacilitiesRead(String id) async {
    final response = await forWorkerFacilitiesReadWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityForWorker') as FacilityForWorker;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this facility.
  ///
  /// * [FacilityForWorkerForWrite] data (required):
  Future<Response> forWorkerFacilitiesUpdateWithHttpInfo(String id, FacilityForWorkerForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facilities/{id}/'.replaceAll('{format}', 'json')
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
  ///   A UUID string identifying this facility.
  ///
  /// * [FacilityForWorkerForWrite] data (required):
  Future<FacilityForWorker> forWorkerFacilitiesUpdate(String id, FacilityForWorkerForWrite data) async {
    final response = await forWorkerFacilitiesUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityForWorker') as FacilityForWorker;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/availability/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [FacilityAvailabilityForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsAvailabilityCreateWithHttpInfo(String facilityAdministrationPk, FacilityAvailabilityForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/availability/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [FacilityAvailabilityForWrite] data (required):
  Future<FacilityAvailability> forWorkerFacilityAdministrationsAvailabilityCreate(String facilityAdministrationPk, FacilityAvailabilityForWrite data) async {
    final response = await forWorkerFacilityAdministrationsAvailabilityCreateWithHttpInfo(facilityAdministrationPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAvailability') as FacilityAvailability;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  Future<Response> forWorkerFacilityAdministrationsAvailabilityDeleteWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  Future<void> forWorkerFacilityAdministrationsAvailabilityDelete(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsAvailabilityDeleteWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/availability/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  Future<Response> forWorkerFacilityAdministrationsAvailabilityListWithHttpInfo(String facilityAdministrationPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/availability/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  Future<List<FacilityAvailability>> forWorkerFacilityAdministrationsAvailabilityList(String facilityAdministrationPk) async {
    final response = await forWorkerFacilityAdministrationsAvailabilityListWithHttpInfo(facilityAdministrationPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FacilityAvailability>') as List)
        .map((item) => item as FacilityAvailability)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  ///
  /// * [FacilityAvailabilityForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsAvailabilityPartialUpdateWithHttpInfo(String facilityAdministrationPk, int id, FacilityAvailabilityForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  ///
  /// * [FacilityAvailabilityForWrite] data (required):
  Future<FacilityAvailability> forWorkerFacilityAdministrationsAvailabilityPartialUpdate(String facilityAdministrationPk, int id, FacilityAvailabilityForWrite data) async {
    final response = await forWorkerFacilityAdministrationsAvailabilityPartialUpdateWithHttpInfo(facilityAdministrationPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAvailability') as FacilityAvailability;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  Future<Response> forWorkerFacilityAdministrationsAvailabilityReadWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  Future<FacilityAvailability> forWorkerFacilityAdministrationsAvailabilityRead(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsAvailabilityReadWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAvailability') as FacilityAvailability;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  ///
  /// * [FacilityAvailabilityForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsAvailabilityUpdateWithHttpInfo(String facilityAdministrationPk, int id, FacilityAvailabilityForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility availability.
  ///
  /// * [FacilityAvailabilityForWrite] data (required):
  Future<FacilityAvailability> forWorkerFacilityAdministrationsAvailabilityUpdate(String facilityAdministrationPk, int id, FacilityAvailabilityForWrite data) async {
    final response = await forWorkerFacilityAdministrationsAvailabilityUpdateWithHttpInfo(facilityAdministrationPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAvailability') as FacilityAvailability;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [FacilityAdministrationForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsCreateWithHttpInfo(FacilityAdministrationForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/'.replaceAll('{format}', 'json');

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
  /// * [FacilityAdministrationForWrite] data (required):
  Future<FacilityAdministration> forWorkerFacilityAdministrationsCreate(FacilityAdministrationForWrite data) async {
    final response = await forWorkerFacilityAdministrationsCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAdministration') as FacilityAdministration;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  Future<Response> forWorkerFacilityAdministrationsDeleteWithHttpInfo(String facility) async {
    // Verify required params are set.
    if (facility == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facility');
    }

    final path = '/for_worker/facility_administrations/{facility}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility' + '}', facility.toString());

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
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  Future<void> forWorkerFacilityAdministrationsDelete(String facility) async {
    final response = await forWorkerFacilityAdministrationsDeleteWithHttpInfo(facility);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/' operation and returns the [Response].
  Future<Response> forWorkerFacilityAdministrationsListWithHttpInfo() async {
    final path = '/for_worker/facility_administrations/'.replaceAll('{format}', 'json');

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

  Future<List<FacilityAdministration>> forWorkerFacilityAdministrationsList() async {
    final response = await forWorkerFacilityAdministrationsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FacilityAdministration>') as List)
        .map((item) => item as FacilityAdministration)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  ///
  /// * [FacilityAdministrationForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsPartialUpdateWithHttpInfo(String facility, FacilityAdministrationForWrite data) async {
    // Verify required params are set.
    if (facility == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facility');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility' + '}', facility.toString());

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
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  ///
  /// * [FacilityAdministrationForWrite] data (required):
  Future<FacilityAdministration> forWorkerFacilityAdministrationsPartialUpdate(String facility, FacilityAdministrationForWrite data) async {
    final response = await forWorkerFacilityAdministrationsPartialUpdateWithHttpInfo(facility, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAdministration') as FacilityAdministration;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  Future<Response> forWorkerFacilityAdministrationsReadWithHttpInfo(String facility) async {
    // Verify required params are set.
    if (facility == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facility');
    }

    final path = '/for_worker/facility_administrations/{facility}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility' + '}', facility.toString());

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
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  Future<FacilityAdministration> forWorkerFacilityAdministrationsRead(String facility) async {
    final response = await forWorkerFacilityAdministrationsReadWithHttpInfo(facility);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAdministration') as FacilityAdministration;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/shift_config/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [ShiftConfigForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigCreateWithHttpInfo(String facilityAdministrationPk, ShiftConfigForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [ShiftConfigForWrite] data (required):
  Future<ShiftConfig> forWorkerFacilityAdministrationsShiftConfigCreate(String facilityAdministrationPk, ShiftConfigForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigCreateWithHttpInfo(facilityAdministrationPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftConfig') as ShiftConfig;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  Future<Response> forWorkerFacilityAdministrationsShiftConfigDeleteWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  Future<void> forWorkerFacilityAdministrationsShiftConfigDelete(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigDeleteWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/shift_config/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigListWithHttpInfo(String facilityAdministrationPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  Future<List<ShiftConfig>> forWorkerFacilityAdministrationsShiftConfigList(String facilityAdministrationPk) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigListWithHttpInfo(facilityAdministrationPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ShiftConfig>') as List)
        .map((item) => item as ShiftConfig)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  ///
  /// * [ShiftConfigForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigPartialUpdateWithHttpInfo(String facilityAdministrationPk, int id, ShiftConfigForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  ///
  /// * [ShiftConfigForWrite] data (required):
  Future<ShiftConfig> forWorkerFacilityAdministrationsShiftConfigPartialUpdate(String facilityAdministrationPk, int id, ShiftConfigForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigPartialUpdateWithHttpInfo(facilityAdministrationPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftConfig') as ShiftConfig;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  Future<Response> forWorkerFacilityAdministrationsShiftConfigReadWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  Future<ShiftConfig> forWorkerFacilityAdministrationsShiftConfigRead(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigReadWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftConfig') as ShiftConfig;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [RoleAssignmentRequirementForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreateWithHttpInfo(String facilityAdministrationPk, String shiftConfigPk, RoleAssignmentRequirementForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [RoleAssignmentRequirementForWrite] data (required):
  Future<RoleAssignmentRequirement> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate(String facilityAdministrationPk, String shiftConfigPk, RoleAssignmentRequirementForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreateWithHttpInfo(facilityAdministrationPk, shiftConfigPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RoleAssignmentRequirement') as RoleAssignmentRequirement;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDeleteWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  Future<void> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDeleteWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsListWithHttpInfo(String facilityAdministrationPk, String shiftConfigPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  Future<List<RoleAssignmentRequirement>> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsList(String facilityAdministrationPk, String shiftConfigPk) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsListWithHttpInfo(facilityAdministrationPk, shiftConfigPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<RoleAssignmentRequirement>') as List)
        .map((item) => item as RoleAssignmentRequirement)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [RoleAssignmentRequirementForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdateWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk, RoleAssignmentRequirementForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [RoleAssignmentRequirementForWrite] data (required):
  Future<RoleAssignmentRequirement> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdate(String facilityAdministrationPk, int id, String shiftConfigPk, RoleAssignmentRequirementForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdateWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RoleAssignmentRequirement') as RoleAssignmentRequirement;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsReadWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  Future<RoleAssignmentRequirement> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsRead(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsReadWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RoleAssignmentRequirement') as RoleAssignmentRequirement;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [RoleAssignmentRequirementForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdateWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk, RoleAssignmentRequirementForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this role assignment requirement.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [RoleAssignmentRequirementForWrite] data (required):
  Future<RoleAssignmentRequirement> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate(String facilityAdministrationPk, int id, String shiftConfigPk, RoleAssignmentRequirementForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdateWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RoleAssignmentRequirement') as RoleAssignmentRequirement;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [ShiftPatternForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreateWithHttpInfo(String facilityAdministrationPk, String shiftConfigPk, ShiftPatternForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [ShiftPatternForWrite] data (required):
  Future<ShiftPattern> forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate(String facilityAdministrationPk, String shiftConfigPk, ShiftPatternForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreateWithHttpInfo(facilityAdministrationPk, shiftConfigPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftPattern') as ShiftPattern;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigShiftPatternsDeleteWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  Future<void> forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigShiftPatternsDeleteWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigShiftPatternsListWithHttpInfo(String facilityAdministrationPk, String shiftConfigPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] shiftConfigPk (required):
  Future<List<ShiftPattern>> forWorkerFacilityAdministrationsShiftConfigShiftPatternsList(String facilityAdministrationPk, String shiftConfigPk) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigShiftPatternsListWithHttpInfo(facilityAdministrationPk, shiftConfigPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ShiftPattern>') as List)
        .map((item) => item as ShiftPattern)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [ShiftPatternForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdateWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk, ShiftPatternForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [ShiftPatternForWrite] data (required):
  Future<ShiftPattern> forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdate(String facilityAdministrationPk, int id, String shiftConfigPk, ShiftPatternForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdateWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftPattern') as ShiftPattern;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigShiftPatternsReadWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  Future<ShiftPattern> forWorkerFacilityAdministrationsShiftConfigShiftPatternsRead(String facilityAdministrationPk, int id, String shiftConfigPk) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigShiftPatternsReadWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftPattern') as ShiftPattern;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [ShiftPatternForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdateWithHttpInfo(String facilityAdministrationPk, int id, String shiftConfigPk, ShiftPatternForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (shiftConfigPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: shiftConfigPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'shift_config_pk' + '}', shiftConfigPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift pattern.
  ///
  /// * [String] shiftConfigPk (required):
  ///
  /// * [ShiftPatternForWrite] data (required):
  Future<ShiftPattern> forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate(String facilityAdministrationPk, int id, String shiftConfigPk, ShiftPatternForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdateWithHttpInfo(facilityAdministrationPk, id, shiftConfigPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftPattern') as ShiftPattern;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  ///
  /// * [ShiftConfigForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsShiftConfigUpdateWithHttpInfo(String facilityAdministrationPk, int id, ShiftConfigForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this shift config.
  ///
  /// * [ShiftConfigForWrite] data (required):
  Future<ShiftConfig> forWorkerFacilityAdministrationsShiftConfigUpdate(String facilityAdministrationPk, int id, ShiftConfigForWrite data) async {
    final response = await forWorkerFacilityAdministrationsShiftConfigUpdateWithHttpInfo(facilityAdministrationPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ShiftConfig') as ShiftConfig;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  ///
  /// * [FacilityAdministrationForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsUpdateWithHttpInfo(String facility, FacilityAdministrationForWrite data) async {
    // Verify required params are set.
    if (facility == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facility');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility' + '}', facility.toString());

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
  /// * [String] facility (required):
  ///   A unique value identifying this facility administration.
  ///
  /// * [FacilityAdministrationForWrite] data (required):
  Future<FacilityAdministration> forWorkerFacilityAdministrationsUpdate(String facility, FacilityAdministrationForWrite data) async {
    final response = await forWorkerFacilityAdministrationsUpdateWithHttpInfo(facility, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityAdministration') as FacilityAdministration;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [WorkScheduleForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkSchedulesCreateWithHttpInfo(String facilityAdministrationPk, WorkScheduleForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/work_schedules/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [WorkScheduleForWrite] data (required):
  Future<WorkSchedule> forWorkerFacilityAdministrationsWorkSchedulesCreate(String facilityAdministrationPk, WorkScheduleForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkSchedulesCreateWithHttpInfo(facilityAdministrationPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkSchedule') as WorkSchedule;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this work schedule.
  Future<Response> forWorkerFacilityAdministrationsWorkSchedulesDeleteWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/work_schedules/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this work schedule.
  Future<void> forWorkerFacilityAdministrationsWorkSchedulesDelete(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkSchedulesDeleteWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_id}/work_schedules/{work_schedule_id}/_export' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationId (required):
  ///
  /// * [String] workScheduleId (required):
  Future<Response> forWorkerFacilityAdministrationsWorkSchedulesExportCreateWithHttpInfo(String facilityAdministrationId, String workScheduleId) async {
    // Verify required params are set.
    if (facilityAdministrationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationId');
    }
    if (workScheduleId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workScheduleId');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_id}/work_schedules/{work_schedule_id}/_export'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_id' + '}', facilityAdministrationId.toString())
      .replaceAll('{' + 'work_schedule_id' + '}', workScheduleId.toString());

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
  /// * [String] facilityAdministrationId (required):
  ///
  /// * [String] workScheduleId (required):
  Future<void> forWorkerFacilityAdministrationsWorkSchedulesExportCreate(String facilityAdministrationId, String workScheduleId) async {
    final response = await forWorkerFacilityAdministrationsWorkSchedulesExportCreateWithHttpInfo(facilityAdministrationId, workScheduleId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_id}/work_schedules/{work_schedule_id}/_export' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationId (required):
  ///
  /// * [String] workScheduleId (required):
  Future<Response> forWorkerFacilityAdministrationsWorkSchedulesExportListWithHttpInfo(String facilityAdministrationId, String workScheduleId) async {
    // Verify required params are set.
    if (facilityAdministrationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationId');
    }
    if (workScheduleId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workScheduleId');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_id}/work_schedules/{work_schedule_id}/_export'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_id' + '}', facilityAdministrationId.toString())
      .replaceAll('{' + 'work_schedule_id' + '}', workScheduleId.toString());

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
  /// * [String] facilityAdministrationId (required):
  ///
  /// * [String] workScheduleId (required):
  Future<void> forWorkerFacilityAdministrationsWorkSchedulesExportList(String facilityAdministrationId, String workScheduleId) async {
    final response = await forWorkerFacilityAdministrationsWorkSchedulesExportListWithHttpInfo(facilityAdministrationId, workScheduleId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  Future<Response> forWorkerFacilityAdministrationsWorkSchedulesListWithHttpInfo(String facilityAdministrationPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/work_schedules/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  Future<List<WorkScheduleSummary>> forWorkerFacilityAdministrationsWorkSchedulesList(String facilityAdministrationPk) async {
    final response = await forWorkerFacilityAdministrationsWorkSchedulesListWithHttpInfo(facilityAdministrationPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WorkScheduleSummary>') as List)
        .map((item) => item as WorkScheduleSummary)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this work schedule.
  Future<Response> forWorkerFacilityAdministrationsWorkSchedulesReadWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/work_schedules/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this work schedule.
  Future<WorkSchedule> forWorkerFacilityAdministrationsWorkSchedulesRead(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkSchedulesReadWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkSchedule') as WorkSchedule;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesCreateWithHttpInfo(String facilityAdministrationPk, FacilityWorkerProfileForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<FacilityWorkerProfile> forWorkerFacilityAdministrationsWorkerProfilesCreate(String facilityAdministrationPk, FacilityWorkerProfileForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesCreateWithHttpInfo(facilityAdministrationPk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [DayOffRequestForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreateWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, DayOffRequestForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [DayOffRequestForWrite] data (required):
  Future<DayOffRequest> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate(String facilityAdministrationPk, String facilityWorkerProfilePk, DayOffRequestForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreateWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DayOffRequest') as DayOffRequest;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDeleteWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  Future<void> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDeleteWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsListWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  Future<List<DayOffRequest>> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsList(String facilityAdministrationPk, String facilityWorkerProfilePk) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsListWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<DayOffRequest>') as List)
        .map((item) => item as DayOffRequest)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  ///
  /// * [DayOffRequestForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdateWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, DayOffRequestForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  ///
  /// * [DayOffRequestForWrite] data (required):
  Future<DayOffRequest> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdate(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, DayOffRequestForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdateWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DayOffRequest') as DayOffRequest;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsReadWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  Future<DayOffRequest> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsRead(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsReadWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DayOffRequest') as DayOffRequest;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  ///
  /// * [DayOffRequestForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdateWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, DayOffRequestForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this day off request.
  ///
  /// * [DayOffRequestForWrite] data (required):
  Future<DayOffRequest> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, DayOffRequestForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdateWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DayOffRequest') as DayOffRequest;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesDeleteWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  Future<void> forWorkerFacilityAdministrationsWorkerProfilesDelete(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesDeleteWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesListWithHttpInfo(String facilityAdministrationPk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  Future<List<FacilityWorkerProfile>> forWorkerFacilityAdministrationsWorkerProfilesList(String facilityAdministrationPk) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesListWithHttpInfo(facilityAdministrationPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FacilityWorkerProfile>') as List)
        .map((item) => item as FacilityWorkerProfile)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesPartialUpdateWithHttpInfo(String facilityAdministrationPk, int id, FacilityWorkerProfileForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<FacilityWorkerProfile> forWorkerFacilityAdministrationsWorkerProfilesPartialUpdate(String facilityAdministrationPk, int id, FacilityWorkerProfileForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesPartialUpdateWithHttpInfo(facilityAdministrationPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesReadWithHttpInfo(String facilityAdministrationPk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  Future<FacilityWorkerProfile> forWorkerFacilityAdministrationsWorkerProfilesRead(String facilityAdministrationPk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesReadWithHttpInfo(facilityAdministrationPk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesUpdateWithHttpInfo(String facilityAdministrationPk, int id, FacilityWorkerProfileForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<FacilityWorkerProfile> forWorkerFacilityAdministrationsWorkerProfilesUpdate(String facilityAdministrationPk, int id, FacilityWorkerProfileForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesUpdateWithHttpInfo(facilityAdministrationPk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [WorkingHoursConfigForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreateWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, WorkingHoursConfigForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [WorkingHoursConfigForWrite] data (required):
  Future<WorkingHoursConfig> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate(String facilityAdministrationPk, String facilityWorkerProfilePk, WorkingHoursConfigForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreateWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkingHoursConfig') as WorkingHoursConfig;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDeleteWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  Future<void> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDeleteWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigListWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString());

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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  Future<List<WorkingHoursConfig>> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigList(String facilityAdministrationPk, String facilityWorkerProfilePk) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigListWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WorkingHoursConfig>') as List)
        .map((item) => item as WorkingHoursConfig)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  ///
  /// * [WorkingHoursConfigForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdateWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, WorkingHoursConfigForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  ///
  /// * [WorkingHoursConfigForWrite] data (required):
  Future<WorkingHoursConfig> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdate(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, WorkingHoursConfigForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdateWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkingHoursConfig') as WorkingHoursConfig;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigReadWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  Future<WorkingHoursConfig> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigRead(String facilityAdministrationPk, String facilityWorkerProfilePk, int id) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigReadWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkingHoursConfig') as WorkingHoursConfig;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  ///
  /// * [WorkingHoursConfigForWrite] data (required):
  Future<Response> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdateWithHttpInfo(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, WorkingHoursConfigForWrite data) async {
    // Verify required params are set.
    if (facilityAdministrationPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityAdministrationPk');
    }
    if (facilityWorkerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: facilityWorkerProfilePk');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'facility_administration_pk' + '}', facilityAdministrationPk.toString())
      .replaceAll('{' + 'facility_worker_profile_pk' + '}', facilityWorkerProfilePk.toString())
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
  /// * [String] facilityAdministrationPk (required):
  ///
  /// * [String] facilityWorkerProfilePk (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this working hours config.
  ///
  /// * [WorkingHoursConfigForWrite] data (required):
  Future<WorkingHoursConfig> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate(String facilityAdministrationPk, String facilityWorkerProfilePk, int id, WorkingHoursConfigForWrite data) async {
    final response = await forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdateWithHttpInfo(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkingHoursConfig') as WorkingHoursConfig;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_user_link_types/' operation and returns the [Response].
  Future<Response> forWorkerFacilityUserLinkTypesListWithHttpInfo() async {
    final path = '/for_worker/facility_user_link_types/'.replaceAll('{format}', 'json');

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

  Future<List<FacilityUserLinkType>> forWorkerFacilityUserLinkTypesList() async {
    final response = await forWorkerFacilityUserLinkTypesListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FacilityUserLinkType>') as List)
        .map((item) => item as FacilityUserLinkType)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/facility_user_links/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [FacilityUserLinkForWrite] data (required):
  Future<Response> forWorkerFacilityUserLinksCreateWithHttpInfo(FacilityUserLinkForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_user_links/'.replaceAll('{format}', 'json');

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
  /// * [FacilityUserLinkForWrite] data (required):
  Future<FacilityUserLink> forWorkerFacilityUserLinksCreate(FacilityUserLinkForWrite data) async {
    final response = await forWorkerFacilityUserLinksCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityUserLink') as FacilityUserLink;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/facility_user_links/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility user link.
  Future<Response> forWorkerFacilityUserLinksDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_user_links/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique integer value identifying this facility user link.
  Future<void> forWorkerFacilityUserLinksDelete(int id) async {
    final response = await forWorkerFacilityUserLinksDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/facility_user_links/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] facilityAdministrationId:
  Future<Response> forWorkerFacilityUserLinksListWithHttpInfo({ String facilityAdministrationId }) async {
    // Verify required params are set.

    final path = '/for_worker/facility_user_links/'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (facilityAdministrationId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'facility_administration_id', facilityAdministrationId));
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
  /// * [String] facilityAdministrationId:
  Future<List<FacilityUserLink>> forWorkerFacilityUserLinksList({ String facilityAdministrationId }) async {
    final response = await forWorkerFacilityUserLinksListWithHttpInfo( facilityAdministrationId: facilityAdministrationId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FacilityUserLink>') as List)
        .map((item) => item as FacilityUserLink)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/facility_user_links/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility user link.
  ///
  /// * [FacilityUserLinkForWrite] data (required):
  Future<Response> forWorkerFacilityUserLinksPartialUpdateWithHttpInfo(int id, FacilityUserLinkForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_user_links/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique integer value identifying this facility user link.
  ///
  /// * [FacilityUserLinkForWrite] data (required):
  Future<FacilityUserLink> forWorkerFacilityUserLinksPartialUpdate(int id, FacilityUserLinkForWrite data) async {
    final response = await forWorkerFacilityUserLinksPartialUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityUserLink') as FacilityUserLink;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/facility_user_links/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility user link.
  Future<Response> forWorkerFacilityUserLinksReadWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/facility_user_links/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique integer value identifying this facility user link.
  Future<FacilityUserLink> forWorkerFacilityUserLinksRead(int id) async {
    final response = await forWorkerFacilityUserLinksReadWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityUserLink') as FacilityUserLink;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/facility_user_links/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility user link.
  ///
  /// * [FacilityUserLinkForWrite] data (required):
  Future<Response> forWorkerFacilityUserLinksUpdateWithHttpInfo(int id, FacilityUserLinkForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/facility_user_links/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique integer value identifying this facility user link.
  ///
  /// * [FacilityUserLinkForWrite] data (required):
  Future<FacilityUserLink> forWorkerFacilityUserLinksUpdate(int id, FacilityUserLinkForWrite data) async {
    final response = await forWorkerFacilityUserLinksUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityUserLink') as FacilityUserLink;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/roles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RoleForWrite] data (required):
  Future<Response> forWorkerRolesCreateWithHttpInfo(RoleForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/roles/'.replaceAll('{format}', 'json');

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
  /// * [RoleForWrite] data (required):
  Future<Role> forWorkerRolesCreate(RoleForWrite data) async {
    final response = await forWorkerRolesCreateWithHttpInfo(data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Role') as Role;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/roles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this role.
  Future<Response> forWorkerRolesDeleteWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/roles/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique value identifying this role.
  Future<void> forWorkerRolesDelete(String id) async {
    final response = await forWorkerRolesDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/roles/' operation and returns the [Response].
  Future<Response> forWorkerRolesListWithHttpInfo() async {
    final path = '/for_worker/roles/'.replaceAll('{format}', 'json');

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

  Future<List<Role>> forWorkerRolesList() async {
    final response = await forWorkerRolesListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Role>') as List)
        .map((item) => item as Role)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/roles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this role.
  ///
  /// * [RoleForWrite] data (required):
  Future<Response> forWorkerRolesPartialUpdateWithHttpInfo(String id, RoleForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/roles/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique value identifying this role.
  ///
  /// * [RoleForWrite] data (required):
  Future<Role> forWorkerRolesPartialUpdate(String id, RoleForWrite data) async {
    final response = await forWorkerRolesPartialUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Role') as Role;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/roles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this role.
  Future<Response> forWorkerRolesReadWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/roles/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique value identifying this role.
  Future<Role> forWorkerRolesRead(String id) async {
    final response = await forWorkerRolesReadWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Role') as Role;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/roles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A unique value identifying this role.
  ///
  /// * [RoleForWrite] data (required):
  Future<Response> forWorkerRolesUpdateWithHttpInfo(String id, RoleForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/roles/{id}/'.replaceAll('{format}', 'json')
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
  ///   A unique value identifying this role.
  ///
  /// * [RoleForWrite] data (required):
  Future<Role> forWorkerRolesUpdate(String id, RoleForWrite data) async {
    final response = await forWorkerRolesUpdateWithHttpInfo(id, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Role') as Role;
    }
    return null;
  }

  /// Performs an HTTP 'POST /for_worker/user/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [UserForWrite] data (required):
  Future<Response> forWorkerUserCreateWithHttpInfo(UserForWrite data) async {
    // Verify required params are set.
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/'.replaceAll('{format}', 'json');

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
  Future<User> forWorkerUserCreate(UserForWrite data) async {
    final response = await forWorkerUserCreateWithHttpInfo(data);
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

  /// Performs an HTTP 'DELETE /for_worker/user/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  Future<Response> forWorkerUserDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/user/{id}/'.replaceAll('{format}', 'json')
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
  Future<void> forWorkerUserDelete(int id) async {
    final response = await forWorkerUserDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /for_worker/user/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  ///
  /// * [UserForWrite] data (required):
  Future<Response> forWorkerUserPartialUpdateWithHttpInfo(int id, UserForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{id}/'.replaceAll('{format}', 'json')
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
  Future<User> forWorkerUserPartialUpdate(int id, UserForWrite data) async {
    final response = await forWorkerUserPartialUpdateWithHttpInfo(id, data);
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

  /// Performs an HTTP 'POST /for_worker/user/{user_pk}/profile/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileCreateWithHttpInfo(String userPk, WelfarebrothersUserProfileForWrite data) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/'.replaceAll('{format}', 'json')
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
  Future<WelfarebrothersUserProfile> forWorkerUserProfileCreate(String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await forWorkerUserProfileCreateWithHttpInfo(userPk, data);
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

  /// Performs an HTTP 'DELETE /for_worker/user/{user_pk}/profile/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<Response> forWorkerUserProfileDeleteWithHttpInfo(int id, String userPk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{id}/'.replaceAll('{format}', 'json')
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
  Future<void> forWorkerUserProfileDelete(int id, String userPk) async {
    final response = await forWorkerUserProfileDeleteWithHttpInfo(id, userPk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [FavoriteFacilityForWrite] data (required):
  Future<Response> forWorkerUserProfileFavoriteFacilitiesCreateWithHttpInfo(String userPk, String userProfilePk, FavoriteFacilityForWrite data) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  /// * [String] userProfilePk (required):
  ///
  /// * [FavoriteFacilityForWrite] data (required):
  Future<FavoriteFacility> forWorkerUserProfileFavoriteFacilitiesCreate(String userPk, String userProfilePk, FavoriteFacilityForWrite data) async {
    final response = await forWorkerUserProfileFavoriteFacilitiesCreateWithHttpInfo(userPk, userProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FavoriteFacility') as FavoriteFacility;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<Response> forWorkerUserProfileFavoriteFacilitiesDeleteWithHttpInfo(int id, String userPk, String userProfilePk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<void> forWorkerUserProfileFavoriteFacilitiesDelete(int id, String userPk, String userProfilePk) async {
    final response = await forWorkerUserProfileFavoriteFacilitiesDeleteWithHttpInfo(id, userPk, userProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<Response> forWorkerUserProfileFavoriteFacilitiesListWithHttpInfo(String userPk, String userProfilePk) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///
  /// * [String] userProfilePk (required):
  Future<List<FavoriteFacility>> forWorkerUserProfileFavoriteFacilitiesList(String userPk, String userProfilePk) async {
    final response = await forWorkerUserProfileFavoriteFacilitiesListWithHttpInfo(userPk, userProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FavoriteFacility>') as List)
        .map((item) => item as FavoriteFacility)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [FavoriteFacilityForWrite] data (required):
  Future<Response> forWorkerUserProfileFavoriteFacilitiesPartialUpdateWithHttpInfo(int id, String userPk, String userProfilePk, FavoriteFacilityForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [FavoriteFacilityForWrite] data (required):
  Future<FavoriteFacility> forWorkerUserProfileFavoriteFacilitiesPartialUpdate(int id, String userPk, String userProfilePk, FavoriteFacilityForWrite data) async {
    final response = await forWorkerUserProfileFavoriteFacilitiesPartialUpdateWithHttpInfo(id, userPk, userProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FavoriteFacility') as FavoriteFacility;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<Response> forWorkerUserProfileFavoriteFacilitiesReadWithHttpInfo(int id, String userPk, String userProfilePk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<FavoriteFacility> forWorkerUserProfileFavoriteFacilitiesRead(int id, String userPk, String userProfilePk) async {
    final response = await forWorkerUserProfileFavoriteFacilitiesReadWithHttpInfo(id, userPk, userProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FavoriteFacility') as FavoriteFacility;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [FavoriteFacilityForWrite] data (required):
  Future<Response> forWorkerUserProfileFavoriteFacilitiesUpdateWithHttpInfo(int id, String userPk, String userProfilePk, FavoriteFacilityForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///   A unique integer value identifying this favorite facility.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [FavoriteFacilityForWrite] data (required):
  Future<FavoriteFacility> forWorkerUserProfileFavoriteFacilitiesUpdate(int id, String userPk, String userProfilePk, FavoriteFacilityForWrite data) async {
    final response = await forWorkerUserProfileFavoriteFacilitiesUpdateWithHttpInfo(id, userPk, userProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FavoriteFacility') as FavoriteFacility;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/user/{user_pk}/profile/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  Future<Response> forWorkerUserProfileListWithHttpInfo(String userPk) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/for_worker/user/{user_pk}/profile/'.replaceAll('{format}', 'json')
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
  Future<List<WelfarebrothersUserProfile>> forWorkerUserProfileList(String userPk) async {
    final response = await forWorkerUserProfileListWithHttpInfo(userPk);
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

  /// Performs an HTTP 'PATCH /for_worker/user/{user_pk}/profile/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> forWorkerUserProfilePartialUpdateWithHttpInfo(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
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

    final path = '/for_worker/user/{user_pk}/profile/{id}/'.replaceAll('{format}', 'json')
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
  Future<WelfarebrothersUserProfile> forWorkerUserProfilePartialUpdate(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await forWorkerUserProfilePartialUpdateWithHttpInfo(id, userPk, data);
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

  /// Performs an HTTP 'GET /for_worker/user/{user_pk}/profile/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  Future<Response> forWorkerUserProfileReadWithHttpInfo(int id, String userPk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{id}/'.replaceAll('{format}', 'json')
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
  Future<WelfarebrothersUserProfile> forWorkerUserProfileRead(int id, String userPk) async {
    final response = await forWorkerUserProfileReadWithHttpInfo(id, userPk);
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

  /// Performs an HTTP 'PUT /for_worker/user/{user_pk}/profile/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers user profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [WelfarebrothersUserProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileUpdateWithHttpInfo(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
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

    final path = '/for_worker/user/{user_pk}/profile/{id}/'.replaceAll('{format}', 'json')
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
  Future<WelfarebrothersUserProfile> forWorkerUserProfileUpdate(int id, String userPk, WelfarebrothersUserProfileForWrite data) async {
    final response = await forWorkerUserProfileUpdateWithHttpInfo(id, userPk, data);
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

  /// Performs an HTTP 'POST /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [WorkerProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileWorkerProfileCreateWithHttpInfo(String userPk, String userProfilePk, WorkerProfileForWrite data) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  /// * [String] userProfilePk (required):
  ///
  /// * [WorkerProfileForWrite] data (required):
  Future<WorkerProfile> forWorkerUserProfileWorkerProfileCreate(String userPk, String userProfilePk, WorkerProfileForWrite data) async {
    final response = await forWorkerUserProfileWorkerProfileCreateWithHttpInfo(userPk, userProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkerProfile') as WorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<Response> forWorkerUserProfileWorkerProfileDeleteWithHttpInfo(int id, String userPk, String userProfilePk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///   A unique integer value identifying this worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<void> forWorkerUserProfileWorkerProfileDelete(int id, String userPk, String userProfilePk) async {
    final response = await forWorkerUserProfileWorkerProfileDeleteWithHttpInfo(id, userPk, userProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreateWithHttpInfo(String userPk, String userProfilePk, String workerProfilePk, FacilityWorkerProfileForWrite data) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (workerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workerProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString())
      .replaceAll('{' + 'worker_profile_pk' + '}', workerProfilePk.toString());

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
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<FacilityWorkerProfile> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreate(String userPk, String userProfilePk, String workerProfilePk, FacilityWorkerProfileForWrite data) async {
    final response = await forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreateWithHttpInfo(userPk, userProfilePk, workerProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  Future<Response> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDeleteWithHttpInfo(int id, String userPk, String userProfilePk, String workerProfilePk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (workerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workerProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString())
      .replaceAll('{' + 'worker_profile_pk' + '}', workerProfilePk.toString());

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
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  Future<void> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDelete(int id, String userPk, String userProfilePk, String workerProfilePk) async {
    final response = await forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDeleteWithHttpInfo(id, userPk, userProfilePk, workerProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  Future<Response> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesListWithHttpInfo(String userPk, String userProfilePk, String workerProfilePk) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (workerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workerProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString())
      .replaceAll('{' + 'worker_profile_pk' + '}', workerProfilePk.toString());

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
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  Future<List<FacilityWorkerProfile>> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesList(String userPk, String userProfilePk, String workerProfilePk) async {
    final response = await forWorkerUserProfileWorkerProfileFacilityWorkerProfilesListWithHttpInfo(userPk, userProfilePk, workerProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FacilityWorkerProfile>') as List)
        .map((item) => item as FacilityWorkerProfile)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdateWithHttpInfo(int id, String userPk, String userProfilePk, String workerProfilePk, FacilityWorkerProfileForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (workerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workerProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString())
      .replaceAll('{' + 'worker_profile_pk' + '}', workerProfilePk.toString());

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
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<FacilityWorkerProfile> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdate(int id, String userPk, String userProfilePk, String workerProfilePk, FacilityWorkerProfileForWrite data) async {
    final response = await forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdateWithHttpInfo(id, userPk, userProfilePk, workerProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  Future<Response> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesReadWithHttpInfo(int id, String userPk, String userProfilePk, String workerProfilePk) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (workerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workerProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString())
      .replaceAll('{' + 'worker_profile_pk' + '}', workerProfilePk.toString());

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
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  Future<FacilityWorkerProfile> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesRead(int id, String userPk, String userProfilePk, String workerProfilePk) async {
    final response = await forWorkerUserProfileWorkerProfileFacilityWorkerProfilesReadWithHttpInfo(id, userPk, userProfilePk, workerProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdateWithHttpInfo(int id, String userPk, String userProfilePk, String workerProfilePk, FacilityWorkerProfileForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (workerProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workerProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString())
      .replaceAll('{' + 'worker_profile_pk' + '}', workerProfilePk.toString());

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
  ///   A unique integer value identifying this facility worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [String] workerProfilePk (required):
  ///
  /// * [FacilityWorkerProfileForWrite] data (required):
  Future<FacilityWorkerProfile> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdate(int id, String userPk, String userProfilePk, String workerProfilePk, FacilityWorkerProfileForWrite data) async {
    final response = await forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdateWithHttpInfo(id, userPk, userProfilePk, workerProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'FacilityWorkerProfile') as FacilityWorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  Future<Response> forWorkerUserProfileWorkerProfileListWithHttpInfo(String userPk, String userProfilePk) async {
    // Verify required params are set.
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///
  /// * [String] userProfilePk (required):
  Future<List<WorkerProfile>> forWorkerUserProfileWorkerProfileList(String userPk, String userProfilePk) async {
    final response = await forWorkerUserProfileWorkerProfileListWithHttpInfo(userPk, userProfilePk);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WorkerProfile>') as List)
        .map((item) => item as WorkerProfile)
        .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [WorkerProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileWorkerProfilePartialUpdateWithHttpInfo(int id, String userPk, String userProfilePk, WorkerProfileForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///   A unique integer value identifying this worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [WorkerProfileForWrite] data (required):
  Future<WorkerProfile> forWorkerUserProfileWorkerProfilePartialUpdate(int id, String userPk, String userProfilePk, WorkerProfileForWrite data) async {
    final response = await forWorkerUserProfileWorkerProfilePartialUpdateWithHttpInfo(id, userPk, userProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkerProfile') as WorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [WorkerProfileForWrite] data (required):
  Future<Response> forWorkerUserProfileWorkerProfileUpdateWithHttpInfo(int id, String userPk, String userProfilePk, WorkerProfileForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (userPk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userPk');
    }
    if (userProfilePk == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfilePk');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'id' + '}', id.toString())
      .replaceAll('{' + 'user_pk' + '}', userPk.toString())
      .replaceAll('{' + 'user_profile_pk' + '}', userProfilePk.toString());

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
  ///   A unique integer value identifying this worker profile.
  ///
  /// * [String] userPk (required):
  ///
  /// * [String] userProfilePk (required):
  ///
  /// * [WorkerProfileForWrite] data (required):
  Future<WorkerProfile> forWorkerUserProfileWorkerProfileUpdate(int id, String userPk, String userProfilePk, WorkerProfileForWrite data) async {
    final response = await forWorkerUserProfileWorkerProfileUpdateWithHttpInfo(id, userPk, userProfilePk, data);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkerProfile') as WorkerProfile;
    }
    return null;
  }

  /// Performs an HTTP 'GET /for_worker/user/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  Future<Response> forWorkerUserReadWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/for_worker/user/{id}/'.replaceAll('{format}', 'json')
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
  Future<User> forWorkerUserRead(int id) async {
    final response = await forWorkerUserReadWithHttpInfo(id);
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

  /// Performs an HTTP 'PUT /for_worker/user/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this welfarebrothers_user.
  ///
  /// * [UserForWrite] data (required):
  Future<Response> forWorkerUserUpdateWithHttpInfo(int id, UserForWrite data) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (data == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: data');
    }

    final path = '/for_worker/user/{id}/'.replaceAll('{format}', 'json')
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
  Future<User> forWorkerUserUpdate(int id, UserForWrite data) async {
    final response = await forWorkerUserUpdateWithHttpInfo(id, data);
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
