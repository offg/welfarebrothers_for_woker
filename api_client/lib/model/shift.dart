//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class Shift {
  /// Returns a new [Shift] instance.
  Shift({
    @required this.date,
    @required this.workScheduleId,
    this.role,
    @required this.roleId,
    this.shiftPattern,
    @required this.shiftPatternId,
    @required this.facilityWorkerProfileId,
    this.facilityWorkerProfile,
  });

  DateTime date;

  int workScheduleId;

  Role role;

  String roleId;

  ShiftPattern shiftPattern;

  String shiftPatternId;

  int facilityWorkerProfileId;

  FacilityWorkerProfile facilityWorkerProfile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Shift &&
     other.date == date &&
     other.workScheduleId == workScheduleId &&
     other.role == role &&
     other.roleId == roleId &&
     other.shiftPattern == shiftPattern &&
     other.shiftPatternId == shiftPatternId &&
     other.facilityWorkerProfileId == facilityWorkerProfileId &&
     other.facilityWorkerProfile == facilityWorkerProfile;

  @override
  int get hashCode =>
    (date == null ? 0 : date.hashCode) +
    (workScheduleId == null ? 0 : workScheduleId.hashCode) +
    (role == null ? 0 : role.hashCode) +
    (roleId == null ? 0 : roleId.hashCode) +
    (shiftPattern == null ? 0 : shiftPattern.hashCode) +
    (shiftPatternId == null ? 0 : shiftPatternId.hashCode) +
    (facilityWorkerProfileId == null ? 0 : facilityWorkerProfileId.hashCode) +
    (facilityWorkerProfile == null ? 0 : facilityWorkerProfile.hashCode);

  @override
  String toString() => 'Shift[date=$date, workScheduleId=$workScheduleId, role=$role, roleId=$roleId, shiftPattern=$shiftPattern, shiftPatternId=$shiftPatternId, facilityWorkerProfileId=$facilityWorkerProfileId, facilityWorkerProfile=$facilityWorkerProfile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (date != null) {
      json[r'date'] = _dateFormatter.format(date.toUtc());
    }
    if (workScheduleId != null) {
      json[r'work_schedule_id'] = workScheduleId;
    }
    if (role != null) {
      json[r'role'] = role;
    }
    if (roleId != null) {
      json[r'role_id'] = roleId;
    }
    if (shiftPattern != null) {
      json[r'shift_pattern'] = shiftPattern;
    }
    if (shiftPatternId != null) {
      json[r'shift_pattern_id'] = shiftPatternId;
    }
    if (facilityWorkerProfileId != null) {
      json[r'facility_worker_profile_id'] = facilityWorkerProfileId;
    }
    if (facilityWorkerProfile != null) {
      json[r'facility_worker_profile'] = facilityWorkerProfile;
    }
    return json;
  }

  /// Returns a new [Shift] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Shift fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Shift(
        date: json[r'date'] == null
          ? null
          : DateTime.parse(json[r'date']),
        workScheduleId: json[r'work_schedule_id'],
        role: Role.fromJson(json[r'role']),
        roleId: json[r'role_id'],
        shiftPattern: ShiftPattern.fromJson(json[r'shift_pattern']),
        shiftPatternId: json[r'shift_pattern_id'],
        facilityWorkerProfileId: json[r'facility_worker_profile_id'],
        facilityWorkerProfile: FacilityWorkerProfile.fromJson(json[r'facility_worker_profile']),
    );

  static List<Shift> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Shift>[]
      : json.map((v) => Shift.fromJson(v)).toList(growable: true == growable);

  static Map<String, Shift> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Shift>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Shift.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Shift-objects as value to a dart map
  static Map<String, List<Shift>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Shift>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Shift.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

