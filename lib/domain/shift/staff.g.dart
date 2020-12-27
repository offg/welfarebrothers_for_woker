// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return Staff(
    json['facility_worker_profile_id'] as int,
    json['first_name'] as String,
    json['last_name'] as String,
  );
}

Map<String, dynamic> _$StaffToJson(Staff instance) => <String, dynamic>{
      'facility_worker_profile_id': instance.facilityWorkerProfileId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
