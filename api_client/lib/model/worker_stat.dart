//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkerStat {
  /// Returns a new [WorkerStat] instance.
  WorkerStat({
    @required this.workScheduleId,
    @required this.type,
    this.facilityWorkerProfile,
    @required this.value,
  });

  int workScheduleId;

  String type;

  FacilityWorkerProfile facilityWorkerProfile;

  num value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkerStat &&
     other.workScheduleId == workScheduleId &&
     other.type == type &&
     other.facilityWorkerProfile == facilityWorkerProfile &&
     other.value == value;

  @override
  int get hashCode =>
    (workScheduleId == null ? 0 : workScheduleId.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (facilityWorkerProfile == null ? 0 : facilityWorkerProfile.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'WorkerStat[workScheduleId=$workScheduleId, type=$type, facilityWorkerProfile=$facilityWorkerProfile, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (workScheduleId != null) {
      json[r'work_schedule_id'] = workScheduleId;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (facilityWorkerProfile != null) {
      json[r'facility_worker_profile'] = facilityWorkerProfile;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [WorkerStat] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkerStat fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkerStat(
        workScheduleId: json[r'work_schedule_id'],
        type: json[r'type'],
        facilityWorkerProfile: FacilityWorkerProfile.fromJson(json[r'facility_worker_profile']),
        value: json[r'value'] == null ?
          null :
          json[r'value'].toDouble(),
    );

  static List<WorkerStat> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkerStat>[]
      : json.map((v) => WorkerStat.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkerStat> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkerStat>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkerStat.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkerStat-objects as value to a dart map
  static Map<String, List<WorkerStat>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkerStat>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkerStat.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

