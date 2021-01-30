//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class User {
  /// Returns a new [User] instance.
  User({
    this.id,
    @required this.username,
    this.groups = const [],
  });

  int id;

  /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
  String username;

  List<Group> groups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.username == username &&
     other.groups == groups;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (username == null ? 0 : username.hashCode) +
    (groups == null ? 0 : groups.hashCode);

  @override
  String toString() => 'User[id=$id, username=$username, groups=$groups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (username != null) {
      json[r'username'] = username;
    }
    if (groups != null) {
      json[r'groups'] = groups;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static User fromJson(Map<String, dynamic> json) => json == null
    ? null
    : User(
        id: json[r'id'],
        username: json[r'username'],
        groups: Group.listFromJson(json[r'groups']),
    );

  static List<User> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <User>[]
      : json.map((v) => User.fromJson(v)).toList(growable: true == growable);

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    final map = <String, User>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = User.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<User>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = User.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

