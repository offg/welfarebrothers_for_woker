//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class CareServiceGroup {
  /// Returns a new [CareServiceGroup] instance.
  CareServiceGroup({
    @required this.id,
    @required this.name,
    @required this.category,
  });

  String id;

  String name;

  CareServiceCategory category;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareServiceGroup &&
     other.id == id &&
     other.name == name &&
     other.category == category;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (category == null ? 0 : category.hashCode);

  @override
  String toString() => 'CareServiceGroup[id=$id, name=$name, category=$category]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    return json;
  }

  /// Returns a new [CareServiceGroup] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CareServiceGroup fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CareServiceGroup(
        id: json[r'id'],
        name: json[r'name'],
        category: CareServiceCategory.fromJson(json[r'category']),
    );

  static List<CareServiceGroup> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CareServiceGroup>[]
      : json.map((v) => CareServiceGroup.fromJson(v)).toList(growable: true == growable);

  static Map<String, CareServiceGroup> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CareServiceGroup>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CareServiceGroup.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CareServiceGroup-objects as value to a dart map
  static Map<String, List<CareServiceGroup>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CareServiceGroup>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CareServiceGroup.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

