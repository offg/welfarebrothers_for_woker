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
    return WorkingHoursConfigForWrite(
      facilityWorkerProfileId: this.facilityWorkerProfileId,
      monthlyMaxWorkingHours: this.monthlyMaxWorkingHours,
      weeklyMaxWorkingHours: this.weeklyMaxWorkingHours,
    );
  }

  String get weeklyMaxWorkingHoursDisplay => (weeklyMaxWorkingHours.toString() ?? "-") + "時間/週";
  String get monthlyMaxWorkingHoursDisplay => (monthlyMaxWorkingHours.toString() ?? "-") + "時間/月";
}

extension FacilityWorkerProfileExtension on FacilityWorkerProfile {
  FacilityWorkerProfileForWrite toWritable() {
    return FacilityWorkerProfileForWrite(
        facilityAdministrationId: this.facilityAdministration.facility.id,
        workerProfileId: this.workerProfile.id,
        firstName: this.firstName,
        lastName: this.lastName);
  }

  String get facilityAdministrationId => this.facilityAdministration.facility.id;
  String get displayName => (this.lastName ?? "") + (this.firstName ?? "");
}
