// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_assignment_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleAssignmentRequirement _$RoleAssignmentRequirementFromJson(
    Map<String, dynamic> json) {
  return RoleAssignmentRequirement(
    json['id'] as int,
    json['role'] == null
        ? null
        : Role.fromJson(json['role'] as Map<String, dynamic>),
    json['timeFrom'] == null
        ? null
        : Time.fromJson(json['timeFrom'] as Map<String, dynamic>),
    json['timeTo'] == null
        ? null
        : Time.fromJson(json['timeTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RoleAssignmentRequirementToJson(
        RoleAssignmentRequirement instance) =>
    <String, dynamic>{
      'timeFrom': instance.timeFrom,
      'timeTo': instance.timeTo,
      'id': instance.id,
      'role': instance.role,
    };
