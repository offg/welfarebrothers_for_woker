// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v0.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WelfareBrothersApiClientV0 implements WelfareBrothersApiClientV0 {
  _WelfareBrothersApiClientV0(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://localhost:8000/api/v0/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<WelfareBrothersApiObjectResponse<ShiftConfig>>
      fetchFacilityShiftConfig(facilityId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/shift_config',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiObjectResponse<ShiftConfig>.fromJson(
      _result.data,
      (json) => ShiftConfig.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<ShiftConfig>>
      updateFacilityShiftConfig(facilityId, shiftConfig) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    ArgumentError.checkNotNull(shiftConfig, 'shiftConfig');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(shiftConfig?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/shift_config',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiObjectResponse<ShiftConfig>.fromJson(
      _result.data,
      (json) => ShiftConfig.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<WorkerProfile>>
      fetchMyWorkerProfiles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/me',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiObjectResponse<WorkerProfile>.fromJson(
      _result.data,
      (json) => WorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>>
      fetchMyFacilityWorkerProfiles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/me/facility_worker_profiles',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value =
        WelfareBrothersApiObjectResponse<FacilityWorkerProfile>.fromJson(
      _result.data,
      (json) => FacilityWorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>>
      fetchMyFacilityWorkerProfile(facilityWorkerProfileId) async {
    ArgumentError.checkNotNull(
        facilityWorkerProfileId, 'facilityWorkerProfileId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/me/facility_worker_profiles/{facilityWorkerProfileId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value =
        WelfareBrothersApiObjectResponse<FacilityWorkerProfile>.fromJson(
      _result.data,
      (json) => FacilityWorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>>
      updateMyFacilityWorkerProfile(
          facilityWorkerProfileId, facilityWorkerProfile) async {
    ArgumentError.checkNotNull(
        facilityWorkerProfileId, 'facilityWorkerProfileId');
    ArgumentError.checkNotNull(facilityWorkerProfile, 'facilityWorkerProfile');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(facilityWorkerProfile?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        '/me/facility_worker_profiles/{facilityWorkerProfileId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value =
        WelfareBrothersApiObjectResponse<FacilityWorkerProfile>.fromJson(
      _result.data,
      (json) => FacilityWorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<dynamic> deleteMyFacilityWorkerProfile(facilityWorkerProfileId) async {
    ArgumentError.checkNotNull(
        facilityWorkerProfileId, 'facilityWorkerProfileId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request(
        '/me/facility_worker_profiles/{facilityWorkerProfileId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>>
      createFacilityWorkerProfiles(facilityId, facilityWorkerProfile) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    ArgumentError.checkNotNull(facilityWorkerProfile, 'facilityWorkerProfile');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(facilityWorkerProfile?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/facility_worker_profiles',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value =
        WelfareBrothersApiObjectResponse<FacilityWorkerProfile>.fromJson(
      _result.data,
      (json) => FacilityWorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiListResponse<FacilityWorkerProfile>>
      fetchFacilityWorkerProfiles(facilityId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/facility_worker_profiles',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value =
        WelfareBrothersApiListResponse<FacilityWorkerProfile>.fromJson(
      _result.data,
      (json) => FacilityWorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>>
      fetchFacilityWorkerProfile(facilityId, facilityWorkerProfileId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    ArgumentError.checkNotNull(
        facilityWorkerProfileId, 'facilityWorkerProfileId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/facility_worker_profiles/$facilityWorkerProfileId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value =
        WelfareBrothersApiObjectResponse<FacilityWorkerProfile>.fromJson(
      _result.data,
      (json) => FacilityWorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>>
      updateFacilityWorkerProfile(
          facilityId, facilityWorkerProfileId, facilityWorkerProfile) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    ArgumentError.checkNotNull(
        facilityWorkerProfileId, 'facilityWorkerProfileId');
    ArgumentError.checkNotNull(facilityWorkerProfile, 'facilityWorkerProfile');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(facilityWorkerProfile?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/facility_worker_profiles/$facilityWorkerProfileId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value =
        WelfareBrothersApiObjectResponse<FacilityWorkerProfile>.fromJson(
      _result.data,
      (json) => FacilityWorkerProfile.fromJson(json),
    );
    return value;
  }

  @override
  Future<dynamic> deleteFacilityWorkerProfile(
      facilityId, facilityWorkerProfileId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    ArgumentError.checkNotNull(
        facilityWorkerProfileId, 'facilityWorkerProfileId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request(
        '/facilities/$facilityId/facility_worker_profiles/$facilityWorkerProfileId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<WelfareBrothersApiListResponse<MonthlyShift>> fetchShifts(
      facilityId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/shifts',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiListResponse<MonthlyShift>.fromJson(
      _result.data,
      (json) => MonthlyShift.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>>
      fetchAutoScheduledShiftParam(facilityId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/shifts/new',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiObjectResponse<MonthlyShift>.fromJson(
      _result.data,
      (json) => MonthlyShift.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>>
      createAutoScheduledShift(facilityId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/shifts/new',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiObjectResponse<MonthlyShift>.fromJson(
      _result.data,
      (json) => MonthlyShift.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>> fetchShift(
      facilityId, shiftId) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    ArgumentError.checkNotNull(shiftId, 'shiftId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/shifts/$shiftId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiObjectResponse<MonthlyShift>.fromJson(
      _result.data,
      (json) => MonthlyShift.fromJson(json),
    );
    return value;
  }

  @override
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>> updateShift(
      facilityId, shiftId, monthlyShift) async {
    ArgumentError.checkNotNull(facilityId, 'facilityId');
    ArgumentError.checkNotNull(shiftId, 'shiftId');
    ArgumentError.checkNotNull(monthlyShift, 'monthlyShift');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(monthlyShift?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        '/facilities/$facilityId/shifts/$shiftId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WelfareBrothersApiObjectResponse<MonthlyShift>.fromJson(
      _result.data,
      (json) => MonthlyShift.fromJson(json),
    );
    return value;
  }
}
