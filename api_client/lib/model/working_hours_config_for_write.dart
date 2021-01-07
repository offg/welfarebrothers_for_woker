//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkingHoursConfigForWrite {
  /// Returns a new [WorkingHoursConfigForWrite] instance.
  WorkingHoursConfigForWrite({
    @required this.facilityWorkerProfileId,
    this.monthlyMaxWorkingHours,
    this.weeklyMaxWorkingHours,
  });

  int facilityWorkerProfileId;

  // minimum: -2147483648
  // maximum: 2147483647
  int monthlyMaxWorkingHours;

  // minimum: -2147483648
  // maximum: 2147483647
  int weeklyMaxWorkingHours;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkingHoursConfigForWrite &&
     other.facilityWorkerProfileId == facilityWorkerProfileId &&
     other.monthlyMaxWorkingHours == monthlyMaxWorkingHours &&
     other.weeklyMaxWorkingHours == weeklyMaxWorkingHours;

  @override
  int get hashCode =>
    (facilityWorkerProfileId == null ? 0 : facilityWorkerProfileId.hashCode) +
    (monthlyMaxWorkingHours == null ? 0 : monthlyMaxWorkingHours.hashCode) +
    (weeklyMaxWorkingHours == null ? 0 : weeklyMaxWorkingHours.hashCode);

  @override
  String toString() => 'WorkingHoursConfigForWrite[facilityWorkerProfileId=$facilityWorkerProfileId, monthlyMaxWorkingHours=$monthlyMaxWorkingHours, weeklyMaxWorkingHours=$weeklyMaxWorkingHours]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityWorkerProfileId != null) {
      json[r'facility_worker_profile_id'] = facilityWorkerProfileId;
    }
    if (monthlyMaxWorkingHours != null) {
      json[r'monthly_max_working_hours'] = monthlyMaxWorkingHours;
    }
    if (weeklyMaxWorkingHours != null) {
      json[r'weekly_max_working_hours'] = weeklyMaxWorkingHours;
    }
    return json;
  }

  /// Returns a new [WorkingHoursConfigForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkingHoursConfigForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkingHoursConfigForWrite(
        facilityWorkerProfileId: json[r'facility_worker_profile_id'],
        monthlyMaxWorkingHours: json[r'monthly_max_working_hours'],
        weeklyMaxWorkingHours: json[r'weekly_max_working_hours'],
    );

  static List<WorkingHoursConfigForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkingHoursConfigForWrite>[]
      : json.map((v) => WorkingHoursConfigForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkingHoursConfigForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkingHoursConfigForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkingHoursConfigForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkingHoursConfigForWrite-objects as value to a dart map
  static Map<String, List<WorkingHoursConfigForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkingHoursConfigForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkingHoursConfigForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

