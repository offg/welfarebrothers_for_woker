//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityUserLinkState {
  /// Returns a new [FacilityUserLinkState] instance.
  FacilityUserLinkState({
    @required this.id,
    @required this.name,
  });

  String id;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityUserLinkState &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'FacilityUserLinkState[id=$id, name=$name]';

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

  /// Returns a new [FacilityUserLinkState] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityUserLinkState fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityUserLinkState(
        id: json[r'id'],
        name: json[r'name'],
    );

  static List<FacilityUserLinkState> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityUserLinkState>[]
      : json.map((v) => FacilityUserLinkState.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityUserLinkState> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityUserLinkState>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityUserLinkState.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityUserLinkState-objects as value to a dart map
  static Map<String, List<FacilityUserLinkState>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityUserLinkState>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityUserLinkState.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

