//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class ShiftConfig {
  /// Returns a new [ShiftConfig] instance.
  ShiftConfig({
    this.id,
    this.facilityAdministration,
    this.roleAssignmentRequirements = const [],
    this.shiftPatterns = const [],
  });

  int id;

  FacilityAdministration facilityAdministration;

  List<RoleAssignmentRequirement> roleAssignmentRequirements;

  List<ShiftPattern> shiftPatterns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShiftConfig &&
     other.id == id &&
     other.facilityAdministration == facilityAdministration &&
     other.roleAssignmentRequirements == roleAssignmentRequirements &&
     other.shiftPatterns == shiftPatterns;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facilityAdministration == null ? 0 : facilityAdministration.hashCode) +
    (roleAssignmentRequirements == null ? 0 : roleAssignmentRequirements.hashCode) +
    (shiftPatterns == null ? 0 : shiftPatterns.hashCode);

  @override
  String toString() => 'ShiftConfig[id=$id, facilityAdministration=$facilityAdministration, roleAssignmentRequirements=$roleAssignmentRequirements, shiftPatterns=$shiftPatterns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (facilityAdministration != null) {
      json[r'facility_administration'] = facilityAdministration;
    }
    if (roleAssignmentRequirements != null) {
      json[r'role_assignment_requirements'] = roleAssignmentRequirements;
    }
    if (shiftPatterns != null) {
      json[r'shift_patterns'] = shiftPatterns;
    }
    return json;
  }

  /// Returns a new [ShiftConfig] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ShiftConfig fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ShiftConfig(
        id: json[r'id'],
        facilityAdministration: FacilityAdministration.fromJson(json[r'facility_administration']),
        roleAssignmentRequirements: RoleAssignmentRequirement.listFromJson(json[r'role_assignment_requirements']),
        shiftPatterns: ShiftPattern.listFromJson(json[r'shift_patterns']),
    );

  static List<ShiftConfig> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ShiftConfig>[]
      : json.map((v) => ShiftConfig.fromJson(v)).toList(growable: true == growable);

  static Map<String, ShiftConfig> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ShiftConfig>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ShiftConfig.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ShiftConfig-objects as value to a dart map
  static Map<String, List<ShiftConfig>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ShiftConfig>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ShiftConfig.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

