//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WelfarebrothersTokenClaims {
  /// Returns a new [WelfarebrothersTokenClaims] instance.
  WelfarebrothersTokenClaims({
    this.access,
    this.refresh,
  });

  String access;

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WelfarebrothersTokenClaims &&
     other.access == access &&
     other.refresh == refresh;

  @override
  int get hashCode =>
    (access == null ? 0 : access.hashCode) +
    (refresh == null ? 0 : refresh.hashCode);

  @override
  String toString() => 'WelfarebrothersTokenClaims[access=$access, refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (access != null) {
      json[r'access'] = access;
    }
    if (refresh != null) {
      json[r'refresh'] = refresh;
    }
    return json;
  }

  /// Returns a new [WelfarebrothersTokenClaims] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WelfarebrothersTokenClaims fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WelfarebrothersTokenClaims(
        access: json[r'access'],
        refresh: json[r'refresh'],
    );

  static List<WelfarebrothersTokenClaims> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WelfarebrothersTokenClaims>[]
      : json.map((v) => WelfarebrothersTokenClaims.fromJson(v)).toList(growable: true == growable);

  static Map<String, WelfarebrothersTokenClaims> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WelfarebrothersTokenClaims>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WelfarebrothersTokenClaims.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WelfarebrothersTokenClaims-objects as value to a dart map
  static Map<String, List<WelfarebrothersTokenClaims>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WelfarebrothersTokenClaims>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WelfarebrothersTokenClaims.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

