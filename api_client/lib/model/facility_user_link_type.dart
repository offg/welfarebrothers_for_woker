//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityUserLinkType {
  /// Returns a new [FacilityUserLinkType] instance.
  FacilityUserLinkType({
    @required this.id,
    @required this.name,
  });

  String id;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityUserLinkType &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'FacilityUserLinkType[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [FacilityUserLinkType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityUserLinkType fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityUserLinkType(
        id: json[r'id'],
        name: json[r'name'],
    );

  static List<FacilityUserLinkType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityUserLinkType>[]
      : json.map((v) => FacilityUserLinkType.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityUserLinkType> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityUserLinkType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityUserLinkType.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityUserLinkType-objects as value to a dart map
  static Map<String, List<FacilityUserLinkType>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityUserLinkType>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityUserLinkType.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

