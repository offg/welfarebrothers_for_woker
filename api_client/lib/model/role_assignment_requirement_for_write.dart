//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class RoleAssignmentRequirementForWrite {
  /// Returns a new [RoleAssignmentRequirementForWrite] instance.
  RoleAssignmentRequirementForWrite({
    @required this.roleId,
    @required this.shiftConfigId,
    @required this.timeFrom,
    @required this.timeTo,
    this.minNumberOfWorkers,
    this.maxNumberOfWorkers,
    this.daysOfTheWeek = const [],
  });

  String roleId;

  int shiftConfigId;

  String timeFrom;

  String timeTo;

  // minimum: -2147483648
  // maximum: 2147483647
  int minNumberOfWorkers;

  // minimum: -2147483648
  // maximum: 2147483647
  int maxNumberOfWorkers;

  List<int> daysOfTheWeek;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoleAssignmentRequirementForWrite &&
     other.roleId == roleId &&
     other.shiftConfigId == shiftConfigId &&
     other.timeFrom == timeFrom &&
     other.timeTo == timeTo &&
     other.minNumberOfWorkers == minNumberOfWorkers &&
     other.maxNumberOfWorkers == maxNumberOfWorkers &&
     other.daysOfTheWeek == daysOfTheWeek;

  @override
  int get hashCode =>
    (roleId == null ? 0 : roleId.hashCode) +
    (shiftConfigId == null ? 0 : shiftConfigId.hashCode) +
    (timeFrom == null ? 0 : timeFrom.hashCode) +
    (timeTo == null ? 0 : timeTo.hashCode) +
    (minNumberOfWorkers == null ? 0 : minNumberOfWorkers.hashCode) +
    (maxNumberOfWorkers == null ? 0 : maxNumberOfWorkers.hashCode) +
    (daysOfTheWeek == null ? 0 : daysOfTheWeek.hashCode);

  @override
  String toString() => 'RoleAssignmentRequirementForWrite[roleId=$roleId, shiftConfigId=$shiftConfigId, timeFrom=$timeFrom, timeTo=$timeTo, minNumberOfWorkers=$minNumberOfWorkers, maxNumberOfWorkers=$maxNumberOfWorkers, daysOfTheWeek=$daysOfTheWeek]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (daysOfTheWeek != null) {
      json[r'days_of_the_week'] = daysOfTheWeek;
    }
    return json;
  }

  /// Returns a new [RoleAssignmentRequirementForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RoleAssignmentRequirementForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RoleAssignmentRequirementForWrite(
        roleId: json[r'role_id'],
        shiftConfigId: json[r'shift_config_id'],
        timeFrom: json[r'time_from'],
        timeTo: json[r'time_to'],
        minNumberOfWorkers: json[r'min_number_of_workers'],
        maxNumberOfWorkers: json[r'max_number_of_workers'],
        daysOfTheWeek: json[r'days_of_the_week'] == null
          ? null
          : (json[r'days_of_the_week'] as List).cast<int>(),
    );

  static List<RoleAssignmentRequirementForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RoleAssignmentRequirementForWrite>[]
      : json.map((v) => RoleAssignmentRequirementForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, RoleAssignmentRequirementForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RoleAssignmentRequirementForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RoleAssignmentRequirementForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RoleAssignmentRequirementForWrite-objects as value to a dart map
  static Map<String, List<RoleAssignmentRequirementForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RoleAssignmentRequirementForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RoleAssignmentRequirementForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

