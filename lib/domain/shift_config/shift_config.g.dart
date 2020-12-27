// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftConfig _$ShiftConfigFromJson(Map<String, dynamic> json) {
  return ShiftConfig(
    (json['role_assignment_requirements'] as List)
        ?.map((e) => e == null
            ? null
            : RoleAssignmentRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['shift_patterns'] as List)
        ?.map((e) =>
            e == null ? null : ShiftPattern.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..id = json['id'] as int
    ..facilityId = json['facility_id'] as String;
}

Map<String, dynamic> _$ShiftConfigToJson(ShiftConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'facility_id': instance.facilityId,
      'role_assignment_requirements': instance.roleAssignmentRequirements
          ?.map((e) => e?.toJson())
          ?.toList(),
      'shift_patterns':
          instance.shiftPatterns?.map((e) => e?.toJson())?.toList(),
    };
