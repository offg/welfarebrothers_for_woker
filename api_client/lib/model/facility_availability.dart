//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityAvailability {
  /// Returns a new [FacilityAvailability] instance.
  FacilityAvailability({
    this.id,
    this.facilityAdministration,
    this.daysOfTheWeek = const [],
  });

  int id;

  FacilityAdministration facilityAdministration;

  List<int> daysOfTheWeek;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityAvailability &&
     other.id == id &&
     other.facilityAdministration == facilityAdministration &&
     other.daysOfTheWeek == daysOfTheWeek;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facilityAdministration == null ? 0 : facilityAdministration.hashCode) +
    (daysOfTheWeek == null ? 0 : daysOfTheWeek.hashCode);

  @override
  String toString() => 'FacilityAvailability[id=$id, facilityAdministration=$facilityAdministration, daysOfTheWeek=$daysOfTheWeek]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (facilityAdministration != null) {
      json[r'facility_administration'] = facilityAdministration;
    }
    if (daysOfTheWeek != null) {
      json[r'days_of_the_week'] = daysOfTheWeek;
    }
    return json;
  }

  /// Returns a new [FacilityAvailability] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityAvailability fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityAvailability(
        id: json[r'id'],
        facilityAdministration: FacilityAdministration.fromJson(json[r'facility_administration']),
        daysOfTheWeek: json[r'days_of_the_week'] == null
          ? null
          : (json[r'days_of_the_week'] as List).cast<int>(),
    );

  static List<FacilityAvailability> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityAvailability>[]
      : json.map((v) => FacilityAvailability.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityAvailability> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityAvailability>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityAvailability.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityAvailability-objects as value to a dart map
  static Map<String, List<FacilityAvailability>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityAvailability>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityAvailability.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

