//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkScheduleForWrite {
  /// Returns a new [WorkScheduleForWrite] instance.
  WorkScheduleForWrite({
    @required this.facilityAdministrationId,
    @required this.dateFrom,
    @required this.dateTo,
  });

  String facilityAdministrationId;

  DateTime dateFrom;

  DateTime dateTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkScheduleForWrite &&
     other.facilityAdministrationId == facilityAdministrationId &&
     other.dateFrom == dateFrom &&
     other.dateTo == dateTo;

  @override
  int get hashCode =>
    (facilityAdministrationId == null ? 0 : facilityAdministrationId.hashCode) +
    (dateFrom == null ? 0 : dateFrom.hashCode) +
    (dateTo == null ? 0 : dateTo.hashCode);

  @override
  String toString() => 'WorkScheduleForWrite[facilityAdministrationId=$facilityAdministrationId, dateFrom=$dateFrom, dateTo=$dateTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityAdministrationId != null) {
      json[r'facility_administration_id'] = facilityAdministrationId;
    }
    if (dateFrom != null) {
      json[r'date_from'] = _dateFormatter.format(dateFrom.toUtc());
    }
    if (dateTo != null) {
      json[r'date_to'] = _dateFormatter.format(dateTo.toUtc());
    }
    return json;
  }

  /// Returns a new [WorkScheduleForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkScheduleForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkScheduleForWrite(
        facilityAdministrationId: json[r'facility_administration_id'],
        dateFrom: json[r'date_from'] == null
          ? null
          : DateTime.parse(json[r'date_from']),
        dateTo: json[r'date_to'] == null
          ? null
          : DateTime.parse(json[r'date_to']),
    );

  static List<WorkScheduleForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkScheduleForWrite>[]
      : json.map((v) => WorkScheduleForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkScheduleForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkScheduleForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkScheduleForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkScheduleForWrite-objects as value to a dart map
  static Map<String, List<WorkScheduleForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkScheduleForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkScheduleForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

