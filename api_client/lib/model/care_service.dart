//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class CareService {
  /// Returns a new [CareService] instance.
  CareService({
    @required this.id,
    @required this.name,
    @required this.group,
  });

  String id;

  String name;

  CareServiceGroup group;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareService &&
     other.id == id &&
     other.name == name &&
     other.group == group;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (group == null ? 0 : group.hashCode);

  @override
  String toString() => 'CareService[id=$id, name=$name, group=$group]';

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

  /// Returns a new [CareService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CareService fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CareService(
        id: json[r'id'],
        name: json[r'name'],
        group: CareServiceGroup.fromJson(json[r'group']),
    );

  static List<CareService> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CareService>[]
      : json.map((v) => CareService.fromJson(v)).toList(growable: true == growable);

  static Map<String, CareService> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CareService>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CareService.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CareService-objects as value to a dart map
  static Map<String, List<CareService>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CareService>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CareService.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

