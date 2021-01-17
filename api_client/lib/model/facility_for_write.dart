//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityForWrite {
  /// Returns a new [FacilityForWrite] instance.
  FacilityForWrite({
    @required this.name,
  });

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityForWrite &&
     other.name == name;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'FacilityForWrite[name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [FacilityForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityForWrite(
        name: json[r'name'],
    );

  static List<FacilityForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityForWrite>[]
      : json.map((v) => FacilityForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityForWrite-objects as value to a dart map
  static Map<String, List<FacilityForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

