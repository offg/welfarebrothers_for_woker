import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/constants/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension DayOffRequestExtension on DayOffRequest {
  DayOffRequestForWrite toWritable() {
    return DayOffRequestForWrite(
      facilityWorkerProfileId: this.facilityWorkerProfileId,
      date: this.date,
    );
  }
}

class _WorkingHoursConfigForForWriteWrapper extends WorkingHoursConfigForWrite {
  _WorkingHoursConfigForForWriteWrapper(int facilityWorkerProfileId, int monthlyMaxWorkingHours, int weeklyMaxWorkingHours)
      : super(
            facilityWorkerProfileId: facilityWorkerProfileId,
            weeklyMaxWorkingHours: weeklyMaxWorkingHours,
            monthlyMaxWorkingHours: monthlyMaxWorkingHours);

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityWorkerProfileId != null) {
      json[r'facility_worker_profile_id'] = facilityWorkerProfileId;
    }
    json[r'monthly_max_working_hours'] = monthlyMaxWorkingHours;
    json[r'weekly_max_working_hours'] = weeklyMaxWorkingHours;
    return json;
  }
}

extension WorkingHoursConfigExtension on WorkingHoursConfig {
  static WorkingHoursConfig withDefault({
    @required int facilityWorkerProfileId,
    int id,
    int weeklyMaxWorkingHours = WEEKLY_MAX_WORKING_HOURS,
    int monthlyMaxWorkingHours = MONTHLY_MAX_WORKING_HOURS,
  }) =>
      WorkingHoursConfig(
        id: id,
        facilityWorkerProfileId: facilityWorkerProfileId,
        weeklyMaxWorkingHours: weeklyMaxWorkingHours,
        monthlyMaxWorkingHours: monthlyMaxWorkingHours,
      );
  WorkingHoursConfigForWrite toWritable() {
    return _WorkingHoursConfigForForWriteWrapper(
      this.facilityWorkerProfileId,
      this.monthlyMaxWorkingHours,
      this.weeklyMaxWorkingHours,
    );
  }

  String get weeklyMaxWorkingHoursDisplay =>
      weeklyMaxWorkingHours == null ? "  　　 　" : (weeklyMaxWorkingHours.toString() + "時間/週");
  String get monthlyMaxWorkingHoursDisplay =>
      monthlyMaxWorkingHours == null ? "　　 　" : (monthlyMaxWorkingHours.toString() + "時間/月");
}

extension FacilityWorkerProfileExtension on FacilityWorkerProfile {
  FacilityWorkerProfileForWrite toWritable() {
    return FacilityWorkerProfileForWrite(
      facilityAdministrationId: this.facilityAdministration.facility.id,
      workerProfileId: this.workerProfile?.id ?? null,
      firstName: this.firstName,
      lastName: this.lastName,
      capabilityIds: this.capabilities.map((e) => e.id).toList(),
    );
  }

  static FacilityWorkerProfile withEmpty(FacilityAdministration facilityAdministration) => FacilityWorkerProfile(
      firstName: "",
      lastName: "",
      facilityAdministrationId: facilityAdministration.id,
      capabilities: [],
      facilityAdministration: facilityAdministration,
      workingHoursConfig: WorkingHoursConfigExtension.withDefault(facilityWorkerProfileId: null));

  void addCapability(Role role) {
    var newCapabilities = List<Role>.from(this.capabilities);
    newCapabilities.add(role);
    this.capabilities = newCapabilities;
  }

  void removeCapability(Role role) {
    var newCapabilities = List<Role>.from(this.capabilities);
    newCapabilities.remove(role);
    this.capabilities = newCapabilities;
  }

  FacilityWorkerProfile clone() => FacilityWorkerProfile.fromJson(json.decode(json.encode(this)));

  String get facilityAdministrationId => this.facilityAdministration.facility.id;
  String get displayName => (this.lastName ?? "") + (this.firstName ?? "");
}
