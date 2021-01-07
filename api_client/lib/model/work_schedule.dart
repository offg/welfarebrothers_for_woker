//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkSchedule {
  /// Returns a new [WorkSchedule] instance.
  WorkSchedule({
    this.id,
    this.facilityAdministration,
    @required this.dateFrom,
    @required this.dateTo,
    this.shifts = const [],
    this.workerStats = const [],
  });

  int id;

  FacilityAdministration facilityAdministration;

  DateTime dateFrom;

  DateTime dateTo;

  List<Shift> shifts;

  List<WorkerStat> workerStats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkSchedule &&
     other.id == id &&
     other.facilityAdministration == facilityAdministration &&
     other.dateFrom == dateFrom &&
     other.dateTo == dateTo &&
     other.shifts == shifts &&
     other.workerStats == workerStats;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facilityAdministration == null ? 0 : facilityAdministration.hashCode) +
    (dateFrom == null ? 0 : dateFrom.hashCode) +
    (dateTo == null ? 0 : dateTo.hashCode) +
    (shifts == null ? 0 : shifts.hashCode) +
    (workerStats == null ? 0 : workerStats.hashCode);

  @override
  String toString() => 'WorkSchedule[id=$id, facilityAdministration=$facilityAdministration, dateFrom=$dateFrom, dateTo=$dateTo, shifts=$shifts, workerStats=$workerStats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (facilityAdministration != null) {
      json[r'facility_administration'] = facilityAdministration;
    }
    if (dateFrom != null) {
      json[r'date_from'] = _dateFormatter.format(dateFrom.toUtc());
    }
    if (dateTo != null) {
      json[r'date_to'] = _dateFormatter.format(dateTo.toUtc());
    }
    if (shifts != null) {
      json[r'shifts'] = shifts;
    }
    if (workerStats != null) {
      json[r'worker_stats'] = workerStats;
    }
    return json;
  }

  /// Returns a new [WorkSchedule] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkSchedule fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkSchedule(
        id: json[r'id'],
        facilityAdministration: FacilityAdministration.fromJson(json[r'facility_administration']),
        dateFrom: json[r'date_from'] == null
          ? null
          : DateTime.parse(json[r'date_from']),
        dateTo: json[r'date_to'] == null
          ? null
          : DateTime.parse(json[r'date_to']),
        shifts: Shift.listFromJson(json[r'shifts']),
        workerStats: WorkerStat.listFromJson(json[r'worker_stats']),
    );

  static List<WorkSchedule> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkSchedule>[]
      : json.map((v) => WorkSchedule.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkSchedule> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkSchedule>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkSchedule.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkSchedule-objects as value to a dart map
  static Map<String, List<WorkSchedule>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkSchedule>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkSchedule.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

