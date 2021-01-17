//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class CareServiceGroupForWrite {
  /// Returns a new [CareServiceGroupForWrite] instance.
  CareServiceGroupForWrite({
    @required this.id,
    @required this.name,
    @required this.category,
  });

  String id;

  String name;

  CareServiceCategory category;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareServiceGroupForWrite &&
     other.id == id &&
     other.name == name &&
     other.category == category;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (category == null ? 0 : category.hashCode);

  @override
  String toString() => 'CareServiceGroupForWrite[id=$id, name=$name, category=$category]';

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

  /// Returns a new [CareServiceGroupForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CareServiceGroupForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CareServiceGroupForWrite(
        id: json[r'id'],
        name: json[r'name'],
        category: CareServiceCategory.fromJson(json[r'category']),
    );

  static List<CareServiceGroupForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CareServiceGroupForWrite>[]
      : json.map((v) => CareServiceGroupForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, CareServiceGroupForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CareServiceGroupForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CareServiceGroupForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CareServiceGroupForWrite-objects as value to a dart map
  static Map<String, List<CareServiceGroupForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CareServiceGroupForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CareServiceGroupForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

