// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_worker_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacilityWorkerProfile _$FacilityWorkerProfileFromJson(
    Map<String, dynamic> json) {
  return FacilityWorkerProfile(
    json['id'] as int,
    json['facility_id'] as String,
    json['worker_profile'] == null
        ? null
        : WorkerProfile.fromJson(
            json['worker_profile'] as Map<String, dynamic>),
    (json['day_off_requests'] as List)
        ?.map((e) => e == null
            ? null
            : DayOffRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['working_hours_config'] == null
        ? null
        : WorkingHoursConfig.fromJson(
            json['working_hours_config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FacilityWorkerProfileToJson(
        FacilityWorkerProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'facility_id': instance.facilityId,
      'worker_profile': instance.workerProfile,
      'day_off_requests': instance.dayOffRequests,
      'working_hours_config': instance.workingHoursConfig,
    };
