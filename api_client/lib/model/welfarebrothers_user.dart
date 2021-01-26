//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WelfarebrothersUser {
  /// Returns a new [WelfarebrothersUser] instance.
  WelfarebrothersUser({
    this.id,
    @required this.username,
    @required this.password,
  });

  int id;

  /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WelfarebrothersUser &&
     other.id == id &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'WelfarebrothersUser[id=$id, username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (username != null) {
      json[r'username'] = username;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    return json;
  }

  /// Returns a new [WelfarebrothersUser] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WelfarebrothersUser fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WelfarebrothersUser(
        id: json[r'id'],
        username: json[r'username'],
        password: json[r'password'],
    );

  static List<WelfarebrothersUser> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WelfarebrothersUser>[]
      : json.map((v) => WelfarebrothersUser.fromJson(v)).toList(growable: true == growable);

  static Map<String, WelfarebrothersUser> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WelfarebrothersUser>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WelfarebrothersUser.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WelfarebrothersUser-objects as value to a dart map
  static Map<String, List<WelfarebrothersUser>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WelfarebrothersUser>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WelfarebrothersUser.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

