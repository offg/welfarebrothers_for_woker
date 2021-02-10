//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class UserForWrite {
  /// Returns a new [UserForWrite] instance.
  UserForWrite({
    @required this.username,
    @required this.password,
  });

  /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserForWrite &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'UserForWrite[username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (username != null) {
      json[r'username'] = username;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    return json;
  }

  /// Returns a new [UserForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserForWrite(
        username: json[r'username'],
        password: json[r'password'],
    );

  static List<UserForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserForWrite>[]
      : json.map((v) => UserForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserForWrite-objects as value to a dart map
  static Map<String, List<UserForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

