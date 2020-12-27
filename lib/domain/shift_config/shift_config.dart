import 'package:json_annotation/json_annotation.dart';
import 'package:welfarebrothers_for_worker/domain/role.dart';

import './role_assignment_requirement.dart';
import './shift_pattern.dart';
import '../base.dart';

part 'shift_config.g.dart';

@JsonSerializable(explicitToJson: true)
class ShiftConfig extends WelfareBrothersModelBase {
  int id;
  @JsonKey(name: "facility_id")
  String facilityId;
  @JsonKey(name: "role_assignment_requirements")
  List<RoleAssignmentRequirement> roleAssignmentRequirements;

  @JsonKey(name: "shift_patterns")
  List<ShiftPattern> shiftPatterns;
  ShiftConfig(this.roleAssignmentRequirements, this.shiftPatterns);
  ShiftConfig.withEmpty()
      : this.shiftPatterns = [
          ShiftPattern(name: "A", symbol: "A", timeFrom: Time(9, 0), timeTo: Time(17, 0)),
        ],
        this.roleAssignmentRequirements = [RoleAssignmentRequirement(null, Role("nurse", "看護師"), Time(9, 0), Time(17, 0))];

  factory ShiftConfig.fromJson(Map<String, dynamic> json) => _$ShiftConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ShiftConfigToJson(this);
}
