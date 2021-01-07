//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkerProfile {
  /// Returns a new [WorkerProfile] instance.
  WorkerProfile({
    this.id,
    this.userProfile,
    @required this.userProfileId,
  });

  int id;

  WelfarebrothersUserProfile userProfile;

  int userProfileId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkerProfile &&
     other.id == id &&
     other.userProfile == userProfile &&
     other.userProfileId == userProfileId;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userProfile == null ? 0 : userProfile.hashCode) +
    (userProfileId == null ? 0 : userProfileId.hashCode);

  @override
  String toString() => 'WorkerProfile[id=$id, userProfile=$userProfile, userProfileId=$userProfileId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (userProfile != null) {
      json[r'user_profile'] = userProfile;
    }
    if (userProfileId != null) {
      json[r'user_profile_id'] = userProfileId;
    }
    return json;
  }

  /// Returns a new [WorkerProfile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkerProfile fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkerProfile(
        id: json[r'id'],
        userProfile: WelfarebrothersUserProfile.fromJson(json[r'user_profile']),
        userProfileId: json[r'user_profile_id'],
    );

  static List<WorkerProfile> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkerProfile>[]
      : json.map((v) => WorkerProfile.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkerProfile> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkerProfile>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkerProfile.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkerProfile-objects as value to a dart map
  static Map<String, List<WorkerProfile>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkerProfile>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkerProfile.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

