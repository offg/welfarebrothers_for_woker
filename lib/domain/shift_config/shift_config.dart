import 'dart:convert';

import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension ShiftConfigExtension on ShiftConfig {
  ShiftConfig clone() => ShiftConfig.fromJson(json.decode(json.encode(this)));
}

extension ShiftPatternExtension on ShiftPattern {
  static ShiftPattern withEmpty(int shiftConfigId) => ShiftPattern(
        shiftConfigId: shiftConfigId,
        timeFrom: "00:00",
        timeTo: "24:00",
        symbol: null,
        name: null,
      );
  ShiftPatternForWrite toWritable() => ShiftPatternForWrite(
      shiftConfigId: this.shiftConfigId, timeFrom: this.timeFrom, timeTo: this.timeTo, symbol: this.symbol, name: this.name);
}

extension RoleAssignmentRequirementExtension on RoleAssignmentRequirement {
  RoleAssignmentRequirementForWrite toWritable() => RoleAssignmentRequirementForWrite(
        roleId: this.roleId,
        shiftConfigId: this.shiftConfigId,
        timeFrom: this.timeFrom,
        timeTo: this.timeTo,
        minNumberOfWorkers: this.minNumberOfWorkers,
        maxNumberOfWorkers: this.maxNumberOfWorkers,
      );
  static RoleAssignmentRequirement withEmpty(int shiftConfigId) => RoleAssignmentRequirement(
        roleId: null,
        shiftConfigId: shiftConfigId,
        timeFrom: "00:00",
        timeTo: "24:00",
        minNumberOfWorkers: 1,
        maxNumberOfWorkers: null,
      );
}
