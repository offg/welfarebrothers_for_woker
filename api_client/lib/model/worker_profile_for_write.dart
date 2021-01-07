//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class WorkerProfileForWrite {
  /// Returns a new [WorkerProfileForWrite] instance.
  WorkerProfileForWrite({
    @required this.userProfileId,
  });

  int userProfileId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkerProfileForWrite &&
     other.userProfileId == userProfileId;

  @override
  int get hashCode =>
    (userProfileId == null ? 0 : userProfileId.hashCode);

  @override
  String toString() => 'WorkerProfileForWrite[userProfileId=$userProfileId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userProfileId != null) {
      json[r'user_profile_id'] = userProfileId;
    }
    return json;
  }

  /// Returns a new [WorkerProfileForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkerProfileForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkerProfileForWrite(
        userProfileId: json[r'user_profile_id'],
    );

  static List<WorkerProfileForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkerProfileForWrite>[]
      : json.map((v) => WorkerProfileForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkerProfileForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkerProfileForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkerProfileForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkerProfileForWrite-objects as value to a dart map
  static Map<String, List<WorkerProfileForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkerProfileForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkerProfileForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

