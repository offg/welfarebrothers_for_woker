//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class PrefectureForWrite {
  /// Returns a new [PrefectureForWrite] instance.
  PrefectureForWrite({
    @required this.id,
    @required this.name,
  });

  String id;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrefectureForWrite &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'PrefectureForWrite[id=$id, name=$name]';

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

  /// Returns a new [PrefectureForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PrefectureForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PrefectureForWrite(
        id: json[r'id'],
        name: json[r'name'],
    );

  static List<PrefectureForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PrefectureForWrite>[]
      : json.map((v) => PrefectureForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, PrefectureForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PrefectureForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PrefectureForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PrefectureForWrite-objects as value to a dart map
  static Map<String, List<PrefectureForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PrefectureForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PrefectureForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

