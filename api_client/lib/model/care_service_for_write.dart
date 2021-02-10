//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class CareServiceForWrite {
  /// Returns a new [CareServiceForWrite] instance.
  CareServiceForWrite({
    @required this.id,
    @required this.name,
    @required this.group,
  });

  String id;

  String name;

  CareServiceGroup group;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareServiceForWrite &&
     other.id == id &&
     other.name == name &&
     other.group == group;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (group == null ? 0 : group.hashCode);

  @override
  String toString() => 'CareServiceForWrite[id=$id, name=$name, group=$group]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (group != null) {
      json[r'group'] = group;
    }
    return json;
  }

  /// Returns a new [CareServiceForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CareServiceForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CareServiceForWrite(
        id: json[r'id'],
        name: json[r'name'],
        group: CareServiceGroup.fromJson(json[r'group']),
    );

  static List<CareServiceForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CareServiceForWrite>[]
      : json.map((v) => CareServiceForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, CareServiceForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CareServiceForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CareServiceForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CareServiceForWrite-objects as value to a dart map
  static Map<String, List<CareServiceForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CareServiceForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CareServiceForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

