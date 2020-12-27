// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_off_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayOffRequest _$DayOffRequestFromJson(Map<String, dynamic> json) {
  return DayOffRequest(
    json['facilityWorkerProfileId'] as int,
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$DayOffRequestToJson(DayOffRequest instance) =>
    <String, dynamic>{
      'facilityWorkerProfileId': instance.facilityWorkerProfileId,
      'date': instance.date?.toIso8601String(),
    };
