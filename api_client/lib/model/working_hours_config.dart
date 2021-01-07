//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkingHoursConfig {
  /// Returns a new [WorkingHoursConfig] instance.
  WorkingHoursConfig({
    this.id,
    @required this.facilityWorkerProfileId,
    this.monthlyMaxWorkingHours,
    this.weeklyMaxWorkingHours,
  });

  int id;

  int facilityWorkerProfileId;

  int monthlyMaxWorkingHours;

  int weeklyMaxWorkingHours;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkingHoursConfig &&
     other.id == id &&
     other.facilityWorkerProfileId == facilityWorkerProfileId &&
     other.monthlyMaxWorkingHours == monthlyMaxWorkingHours &&
     other.weeklyMaxWorkingHours == weeklyMaxWorkingHours;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facilityWorkerProfileId == null ? 0 : facilityWorkerProfileId.hashCode) +
    (monthlyMaxWorkingHours == null ? 0 : monthlyMaxWorkingHours.hashCode) +
    (weeklyMaxWorkingHours == null ? 0 : weeklyMaxWorkingHours.hashCode);

  @override
  String toString() => 'WorkingHoursConfig[id=$id, facilityWorkerProfileId=$facilityWorkerProfileId, monthlyMaxWorkingHours=$monthlyMaxWorkingHours, weeklyMaxWorkingHours=$weeklyMaxWorkingHours]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
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

  /// Returns a new [WorkingHoursConfig] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkingHoursConfig fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkingHoursConfig(
        id: json[r'id'],
        facilityWorkerProfileId: json[r'facility_worker_profile_id'],
        monthlyMaxWorkingHours: json[r'monthly_max_working_hours'],
        weeklyMaxWorkingHours: json[r'weekly_max_working_hours'],
    );

  static List<WorkingHoursConfig> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkingHoursConfig>[]
      : json.map((v) => WorkingHoursConfig.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkingHoursConfig> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkingHoursConfig>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkingHoursConfig.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkingHoursConfig-objects as value to a dart map
  static Map<String, List<WorkingHoursConfig>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkingHoursConfig>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkingHoursConfig.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

