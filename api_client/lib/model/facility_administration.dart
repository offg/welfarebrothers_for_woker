//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityAdministration {
  /// Returns a new [FacilityAdministration] instance.
  FacilityAdministration({
    this.id,
    this.facility,
    @required this.facilityId,
  });

  String id;

  Facility facility;

  String facilityId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityAdministration &&
     other.id == id &&
     other.facility == facility &&
     other.facilityId == facilityId;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facility == null ? 0 : facility.hashCode) +
    (facilityId == null ? 0 : facilityId.hashCode);

  @override
  String toString() => 'FacilityAdministration[id=$id, facility=$facility, facilityId=$facilityId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (facility != null) {
      json[r'facility'] = facility;
    }
    if (facilityId != null) {
      json[r'facility_id'] = facilityId;
    }
    return json;
  }

  /// Returns a new [FacilityAdministration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityAdministration fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityAdministration(
        id: json[r'id'],
        facility: Facility.fromJson(json[r'facility']),
        facilityId: json[r'facility_id'],
    );

  static List<FacilityAdministration> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityAdministration>[]
      : json.map((v) => FacilityAdministration.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityAdministration> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityAdministration>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityAdministration.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityAdministration-objects as value to a dart map
  static Map<String, List<FacilityAdministration>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityAdministration>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityAdministration.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

