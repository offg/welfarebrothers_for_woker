//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FavoriteFacilityForWrite {
  /// Returns a new [FavoriteFacilityForWrite] instance.
  FavoriteFacilityForWrite({
    @required this.facilityId,
    @required this.profileId,
  });

  String facilityId;

  int profileId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FavoriteFacilityForWrite &&
     other.facilityId == facilityId &&
     other.profileId == profileId;

  @override
  int get hashCode =>
    (facilityId == null ? 0 : facilityId.hashCode) +
    (profileId == null ? 0 : profileId.hashCode);

  @override
  String toString() => 'FavoriteFacilityForWrite[facilityId=$facilityId, profileId=$profileId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityId != null) {
      json[r'facility_id'] = facilityId;
    }
    if (profileId != null) {
      json[r'profile_id'] = profileId;
    }
    return json;
  }

  /// Returns a new [FavoriteFacilityForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FavoriteFacilityForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FavoriteFacilityForWrite(
        facilityId: json[r'facility_id'],
        profileId: json[r'profile_id'],
    );

  static List<FavoriteFacilityForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FavoriteFacilityForWrite>[]
      : json.map((v) => FavoriteFacilityForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FavoriteFacilityForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FavoriteFacilityForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FavoriteFacilityForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FavoriteFacilityForWrite-objects as value to a dart map
  static Map<String, List<FavoriteFacilityForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FavoriteFacilityForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FavoriteFacilityForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

