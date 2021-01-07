//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class DayOffRequestForWrite {
  /// Returns a new [DayOffRequestForWrite] instance.
  DayOffRequestForWrite({
    @required this.facilityWorkerProfileId,
    @required this.date,
  });

  int facilityWorkerProfileId;

  DateTime date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DayOffRequestForWrite &&
     other.facilityWorkerProfileId == facilityWorkerProfileId &&
     other.date == date;

  @override
  int get hashCode =>
    (facilityWorkerProfileId == null ? 0 : facilityWorkerProfileId.hashCode) +
    (date == null ? 0 : date.hashCode);

  @override
  String toString() => 'DayOffRequestForWrite[facilityWorkerProfileId=$facilityWorkerProfileId, date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityWorkerProfileId != null) {
      json[r'facility_worker_profile_id'] = facilityWorkerProfileId;
    }
    if (date != null) {
      json[r'date'] = _dateFormatter.format(date.toUtc());
    }
    return json;
  }

  /// Returns a new [DayOffRequestForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DayOffRequestForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DayOffRequestForWrite(
        facilityWorkerProfileId: json[r'facility_worker_profile_id'],
        date: json[r'date'] == null
          ? null
          : DateTime.parse(json[r'date']),
    );

  static List<DayOffRequestForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DayOffRequestForWrite>[]
      : json.map((v) => DayOffRequestForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, DayOffRequestForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DayOffRequestForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DayOffRequestForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DayOffRequestForWrite-objects as value to a dart map
  static Map<String, List<DayOffRequestForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DayOffRequestForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DayOffRequestForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

