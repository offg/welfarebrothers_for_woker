//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WelfarebrothersUserProfile {
  /// Returns a new [WelfarebrothersUserProfile] instance.
  WelfarebrothersUserProfile({
    this.id,
    this.user,
    @required this.userId,
    @required this.firstName,
    @required this.lastName,
  });

  int id;

  User user;

  String userId;

  String firstName;

  String lastName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WelfarebrothersUserProfile &&
     other.id == id &&
     other.user == user &&
     other.userId == userId &&
     other.firstName == firstName &&
     other.lastName == lastName;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode);

  @override
  String toString() => 'WelfarebrothersUserProfile[id=$id, user=$user, userId=$userId, firstName=$firstName, lastName=$lastName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    if (userId != null) {
      json[r'user_id'] = userId;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    return json;
  }

  /// Returns a new [WelfarebrothersUserProfile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WelfarebrothersUserProfile fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WelfarebrothersUserProfile(
        id: json[r'id'],
        user: User.fromJson(json[r'user']),
        userId: json[r'user_id'],
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
    );

  static List<WelfarebrothersUserProfile> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WelfarebrothersUserProfile>[]
      : json.map((v) => WelfarebrothersUserProfile.fromJson(v)).toList(growable: true == growable);

  static Map<String, WelfarebrothersUserProfile> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WelfarebrothersUserProfile>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WelfarebrothersUserProfile.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WelfarebrothersUserProfile-objects as value to a dart map
  static Map<String, List<WelfarebrothersUserProfile>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WelfarebrothersUserProfile>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WelfarebrothersUserProfile.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

