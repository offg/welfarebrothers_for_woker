//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class ShiftConfigForWrite {
  /// Returns a new [ShiftConfigForWrite] instance.
  ShiftConfigForWrite({
    @required this.facilityAdministrationId,
  });

  String facilityAdministrationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShiftConfigForWrite &&
     other.facilityAdministrationId == facilityAdministrationId;

  @override
  int get hashCode =>
    (facilityAdministrationId == null ? 0 : facilityAdministrationId.hashCode);

  @override
  String toString() => 'ShiftConfigForWrite[facilityAdministrationId=$facilityAdministrationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityAdministrationId != null) {
      json[r'facility_administration_id'] = facilityAdministrationId;
    }
    return json;
  }

  /// Returns a new [ShiftConfigForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ShiftConfigForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ShiftConfigForWrite(
        facilityAdministrationId: json[r'facility_administration_id'],
    );

  static List<ShiftConfigForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ShiftConfigForWrite>[]
      : json.map((v) => ShiftConfigForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, ShiftConfigForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ShiftConfigForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ShiftConfigForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ShiftConfigForWrite-objects as value to a dart map
  static Map<String, List<ShiftConfigForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ShiftConfigForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ShiftConfigForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

