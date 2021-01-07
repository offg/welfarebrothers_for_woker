//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityAdministrationForWrite {
  /// Returns a new [FacilityAdministrationForWrite] instance.
  FacilityAdministrationForWrite({
    @required this.facilityId,
  });

  String facilityId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityAdministrationForWrite &&
     other.facilityId == facilityId;

  @override
  int get hashCode =>
    (facilityId == null ? 0 : facilityId.hashCode);

  @override
  String toString() => 'FacilityAdministrationForWrite[facilityId=$facilityId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityId != null) {
      json[r'facility_id'] = facilityId;
    }
    return json;
  }

  /// Returns a new [FacilityAdministrationForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityAdministrationForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityAdministrationForWrite(
        facilityId: json[r'facility_id'],
    );

  static List<FacilityAdministrationForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityAdministrationForWrite>[]
      : json.map((v) => FacilityAdministrationForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityAdministrationForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityAdministrationForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityAdministrationForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityAdministrationForWrite-objects as value to a dart map
  static Map<String, List<FacilityAdministrationForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityAdministrationForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityAdministrationForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

