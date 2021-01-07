//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class RoleForWrite {
  /// Returns a new [RoleForWrite] instance.
  RoleForWrite({
    @required this.id,
    @required this.name,
  });

  String id;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoleForWrite &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'RoleForWrite[id=$id, name=$name]';

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

  /// Returns a new [RoleForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RoleForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RoleForWrite(
        id: json[r'id'],
        name: json[r'name'],
    );

  static List<RoleForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RoleForWrite>[]
      : json.map((v) => RoleForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, RoleForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RoleForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RoleForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RoleForWrite-objects as value to a dart map
  static Map<String, List<RoleForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RoleForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RoleForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

