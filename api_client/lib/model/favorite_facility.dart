//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FavoriteFacility {
  /// Returns a new [FavoriteFacility] instance.
  FavoriteFacility({
    this.id,
    this.facility,
    this.profile,
  });

  int id;

  FacilityForWorker facility;

  WelfarebrothersUserProfile profile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FavoriteFacility &&
     other.id == id &&
     other.facility == facility &&
     other.profile == profile;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facility == null ? 0 : facility.hashCode) +
    (profile == null ? 0 : profile.hashCode);

  @override
  String toString() => 'FavoriteFacility[id=$id, facility=$facility, profile=$profile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (facility != null) {
      json[r'facility'] = facility;
    }
    if (profile != null) {
      json[r'profile'] = profile;
    }
    return json;
  }

  /// Returns a new [FavoriteFacility] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FavoriteFacility fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FavoriteFacility(
        id: json[r'id'],
        facility: FacilityForWorker.fromJson(json[r'facility']),
        profile: WelfarebrothersUserProfile.fromJson(json[r'profile']),
    );

  static List<FavoriteFacility> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FavoriteFacility>[]
      : json.map((v) => FavoriteFacility.fromJson(v)).toList(growable: true == growable);

  static Map<String, FavoriteFacility> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FavoriteFacility>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FavoriteFacility.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FavoriteFacility-objects as value to a dart map
  static Map<String, List<FavoriteFacility>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FavoriteFacility>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FavoriteFacility.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

