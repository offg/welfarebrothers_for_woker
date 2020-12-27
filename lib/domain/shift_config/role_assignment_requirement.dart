import 'package:json_annotation/json_annotation.dart';

import '../base.dart';
import '../role.dart';

part 'role_assignment_requirement.g.dart';

@JsonSerializable()
class RoleAssignmentRequirement extends TimeIntervalBase {
  int id;
  Role role;
  RoleAssignmentRequirement(this.id, this.role, Time timeFrom, Time timeTo) : super(timeFrom, timeTo);
  factory RoleAssignmentRequirement.fromJson(Map<String, dynamic> json) => _$RoleAssignmentRequirementFromJson(json);
  Map<String, dynamic> toJson() => _$RoleAssignmentRequirementToJson(this);
}
