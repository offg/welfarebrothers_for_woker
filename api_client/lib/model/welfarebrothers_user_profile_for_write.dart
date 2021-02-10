//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WelfarebrothersUserProfileForWrite {
  /// Returns a new [WelfarebrothersUserProfileForWrite] instance.
  WelfarebrothersUserProfileForWrite({
    @required this.userId,
    @required this.firstName,
    @required this.lastName,
  });

  String userId;

  String firstName;

  String lastName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WelfarebrothersUserProfileForWrite &&
     other.userId == userId &&
     other.firstName == firstName &&
     other.lastName == lastName;

  @override
  int get hashCode =>
    (userId == null ? 0 : userId.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode);

  @override
  String toString() => 'WelfarebrothersUserProfileForWrite[userId=$userId, firstName=$firstName, lastName=$lastName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [WelfarebrothersUserProfileForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WelfarebrothersUserProfileForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WelfarebrothersUserProfileForWrite(
        userId: json[r'user_id'],
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
    );

  static List<WelfarebrothersUserProfileForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WelfarebrothersUserProfileForWrite>[]
      : json.map((v) => WelfarebrothersUserProfileForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, WelfarebrothersUserProfileForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WelfarebrothersUserProfileForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WelfarebrothersUserProfileForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WelfarebrothersUserProfileForWrite-objects as value to a dart map
  static Map<String, List<WelfarebrothersUserProfileForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WelfarebrothersUserProfileForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WelfarebrothersUserProfileForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

