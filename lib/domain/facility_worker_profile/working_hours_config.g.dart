// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hours_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkingHoursConfig _$WorkingHoursConfigFromJson(Map<String, dynamic> json) {
  return WorkingHoursConfig(
    json['id'] as int,
    json['facility_worker_profile_id'] as int,
    json['monthly_max_working_hours'] as int,
    json['weekly_max_working_hours'] as int,
  );
}

Map<String, dynamic> _$WorkingHoursConfigToJson(WorkingHoursConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'facility_worker_profile_id': instance.facilityWorkerProfileId,
      'monthly_max_working_hours': instance.monthlyMaxWorkingHours,
      'weekly_max_working_hours': instance.weeklyMaxWorkingHours,
    };
