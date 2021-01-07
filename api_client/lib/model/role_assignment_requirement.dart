//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class RoleAssignmentRequirement {
  /// Returns a new [RoleAssignmentRequirement] instance.
  RoleAssignmentRequirement({
    this.id,
    this.role,
    @required this.roleId,
    @required this.shiftConfigId,
    @required this.timeFrom,
    @required this.timeTo,
    this.minNumberOfWorkers,
    this.maxNumberOfWorkers,
  });

  int id;

  Role role;

  String roleId;

  int shiftConfigId;

  String timeFrom;

  String timeTo;

  int minNumberOfWorkers;

  int maxNumberOfWorkers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoleAssignmentRequirement &&
     other.id == id &&
     other.role == role &&
     other.roleId == roleId &&
     other.shiftConfigId == shiftConfigId &&
     other.timeFrom == timeFrom &&
     other.timeTo == timeTo &&
     other.minNumberOfWorkers == minNumberOfWorkers &&
     other.maxNumberOfWorkers == maxNumberOfWorkers;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (role == null ? 0 : role.hashCode) +
    (roleId == null ? 0 : roleId.hashCode) +
    (shiftConfigId == null ? 0 : shiftConfigId.hashCode) +
    (timeFrom == null ? 0 : timeFrom.hashCode) +
    (timeTo == null ? 0 : timeTo.hashCode) +
    (minNumberOfWorkers == null ? 0 : minNumberOfWorkers.hashCode) +
    (maxNumberOfWorkers == null ? 0 : maxNumberOfWorkers.hashCode);

  @override
  String toString() => 'RoleAssignmentRequirement[id=$id, role=$role, roleId=$roleId, shiftConfigId=$shiftConfigId, timeFrom=$timeFrom, timeTo=$timeTo, minNumberOfWorkers=$minNumberOfWorkers, maxNumberOfWorkers=$maxNumberOfWorkers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (role != null) {
      json[r'role'] = role;
    }
    if (roleId != null) {
      json[r'role_id'] = roleId;
    }
    if (shiftConfigId != null) {
      json[r'shift_config_id'] = shiftConfigId;
    }
    if (timeFrom != null) {
      json[r'time_from'] = timeFrom;
    }
    if (timeTo != null) {
      json[r'time_to'] = timeTo;
    }
    if (minNumberOfWorkers != null) {
      json[r'min_number_of_workers'] = minNumberOfWorkers;
    }
    if (maxNumberOfWorkers != null) {
      json[r'max_number_of_workers'] = maxNumberOfWorkers;
    }
    return json;
  }

  /// Returns a new [RoleAssignmentRequirement] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RoleAssignmentRequirement fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RoleAssignmentRequirement(
        id: json[r'id'],
        role: Role.fromJson(json[r'role']),
        roleId: json[r'role_id'],
        shiftConfigId: json[r'shift_config_id'],
        timeFrom: json[r'time_from'],
        timeTo: json[r'time_to'],
        minNumberOfWorkers: json[r'min_number_of_workers'],
        maxNumberOfWorkers: json[r'max_number_of_workers'],
    );

  static List<RoleAssignmentRequirement> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RoleAssignmentRequirement>[]
      : json.map((v) => RoleAssignmentRequirement.fromJson(v)).toList(growable: true == growable);

  static Map<String, RoleAssignmentRequirement> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RoleAssignmentRequirement>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RoleAssignmentRequirement.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RoleAssignmentRequirement-objects as value to a dart map
  static Map<String, List<RoleAssignmentRequirement>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RoleAssignmentRequirement>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RoleAssignmentRequirement.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

