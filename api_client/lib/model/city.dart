//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class City {
  /// Returns a new [City] instance.
  City({
    @required this.id,
    @required this.name,
    @required this.prefecture,
  });

  String id;

  String name;

  Prefecture prefecture;

  @override
  bool operator ==(Object other) => identical(this, other) || other is City &&
     other.id == id &&
     other.name == name &&
     other.prefecture == prefecture;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (prefecture == null ? 0 : prefecture.hashCode);

  @override
  String toString() => 'City[id=$id, name=$name, prefecture=$prefecture]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (prefecture != null) {
      json[r'prefecture'] = prefecture;
    }
    return json;
  }

  /// Returns a new [City] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static City fromJson(Map<String, dynamic> json) => json == null
    ? null
    : City(
        id: json[r'id'],
        name: json[r'name'],
        prefecture: Prefecture.fromJson(json[r'prefecture']),
    );

  static List<City> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <City>[]
      : json.map((v) => City.fromJson(v)).toList(growable: true == growable);

  static Map<String, City> mapFromJson(Map<String, dynamic> json) {
    final map = <String, City>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = City.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of City-objects as value to a dart map
  static Map<String, List<City>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<City>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = City.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

