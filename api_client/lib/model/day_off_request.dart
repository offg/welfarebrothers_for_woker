//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class DayOffRequest {
  /// Returns a new [DayOffRequest] instance.
  DayOffRequest({
    this.id,
    @required this.facilityWorkerProfileId,
    @required this.date,
  });

  int id;

  int facilityWorkerProfileId;

  DateTime date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DayOffRequest &&
     other.id == id &&
     other.facilityWorkerProfileId == facilityWorkerProfileId &&
     other.date == date;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facilityWorkerProfileId == null ? 0 : facilityWorkerProfileId.hashCode) +
    (date == null ? 0 : date.hashCode);

  @override
  String toString() => 'DayOffRequest[id=$id, facilityWorkerProfileId=$facilityWorkerProfileId, date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (facilityWorkerProfileId != null) {
      json[r'facility_worker_profile_id'] = facilityWorkerProfileId;
    }
    if (date != null) {
      json[r'date'] = _dateFormatter.format(date.toUtc());
    }
    return json;
  }

  /// Returns a new [DayOffRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DayOffRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DayOffRequest(
        id: json[r'id'],
        facilityWorkerProfileId: json[r'facility_worker_profile_id'],
        date: json[r'date'] == null
          ? null
          : DateTime.parse(json[r'date']),
    );

  static List<DayOffRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DayOffRequest>[]
      : json.map((v) => DayOffRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, DayOffRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DayOffRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DayOffRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DayOffRequest-objects as value to a dart map
  static Map<String, List<DayOffRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DayOffRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DayOffRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

