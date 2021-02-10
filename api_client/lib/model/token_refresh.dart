//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class TokenRefresh {
  /// Returns a new [TokenRefresh] instance.
  TokenRefresh({
    @required this.refresh,
  });

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRefresh &&
     other.refresh == refresh;

  @override
  int get hashCode =>
    (refresh == null ? 0 : refresh.hashCode);

  @override
  String toString() => 'TokenRefresh[refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (refresh != null) {
      json[r'refresh'] = refresh;
    }
    return json;
  }

  /// Returns a new [TokenRefresh] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TokenRefresh fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TokenRefresh(
        refresh: json[r'refresh'],
    );

  static List<TokenRefresh> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TokenRefresh>[]
      : json.map((v) => TokenRefresh.fromJson(v)).toList(growable: true == growable);

  static Map<String, TokenRefresh> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TokenRefresh>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TokenRefresh.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TokenRefresh-objects as value to a dart map
  static Map<String, List<TokenRefresh>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenRefresh>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TokenRefresh.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

