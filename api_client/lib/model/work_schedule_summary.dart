//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkScheduleSummary {
  /// Returns a new [WorkScheduleSummary] instance.
  WorkScheduleSummary({
    this.id,
    this.facilityAdministration,
    @required this.dateFrom,
    @required this.dateTo,
    this.workerStats = const [],
  });

  int id;

  FacilityAdministration facilityAdministration;

  DateTime dateFrom;

  DateTime dateTo;

  List<WorkerStat> workerStats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkScheduleSummary &&
     other.id == id &&
     other.facilityAdministration == facilityAdministration &&
     other.dateFrom == dateFrom &&
     other.dateTo == dateTo &&
     other.workerStats == workerStats;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facilityAdministration == null ? 0 : facilityAdministration.hashCode) +
    (dateFrom == null ? 0 : dateFrom.hashCode) +
    (dateTo == null ? 0 : dateTo.hashCode) +
    (workerStats == null ? 0 : workerStats.hashCode);

  @override
  String toString() => 'WorkScheduleSummary[id=$id, facilityAdministration=$facilityAdministration, dateFrom=$dateFrom, dateTo=$dateTo, workerStats=$workerStats]';

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
    if (workerStats != null) {
      json[r'worker_stats'] = workerStats;
    }
    return json;
  }

  /// Returns a new [WorkScheduleSummary] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkScheduleSummary fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkScheduleSummary(
        id: json[r'id'],
        facilityAdministration: FacilityAdministration.fromJson(json[r'facility_administration']),
        dateFrom: json[r'date_from'] == null
          ? null
          : DateTime.parse(json[r'date_from']),
        dateTo: json[r'date_to'] == null
          ? null
          : DateTime.parse(json[r'date_to']),
        workerStats: WorkerStat.listFromJson(json[r'worker_stats']),
    );

  static List<WorkScheduleSummary> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkScheduleSummary>[]
      : json.map((v) => WorkScheduleSummary.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkScheduleSummary> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkScheduleSummary>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkScheduleSummary.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkScheduleSummary-objects as value to a dart map
  static Map<String, List<WorkScheduleSummary>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkScheduleSummary>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkScheduleSummary.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

