//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityWorkerProfile {
  /// Returns a new [FacilityWorkerProfile] instance.
  FacilityWorkerProfile({
    this.id,
    this.facilityAdministration,
    @required this.facilityAdministrationId,
    this.workerProfile,
    this.workerProfileId,
    this.capabilities = const [],
    this.capabilityIds = const [],
    this.workingHoursConfig,
    this.dayOffRequests = const [],
    this.firstName,
    @required this.lastName,
  });

  int id;

  FacilityAdministration facilityAdministration;

  String facilityAdministrationId;

  WorkerProfile workerProfile;

  int workerProfileId;

  List<Role> capabilities;

  List<String> capabilityIds;

  WorkingHoursConfig workingHoursConfig;

  List<DayOffRequest> dayOffRequests;

  String firstName;

  String lastName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityWorkerProfile &&
     other.id == id &&
     other.facilityAdministration == facilityAdministration &&
     other.facilityAdministrationId == facilityAdministrationId &&
     other.workerProfile == workerProfile &&
     other.workerProfileId == workerProfileId &&
     other.capabilities == capabilities &&
     other.capabilityIds == capabilityIds &&
     other.workingHoursConfig == workingHoursConfig &&
     other.dayOffRequests == dayOffRequests &&
     other.firstName == firstName &&
     other.lastName == lastName;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (facilityAdministration == null ? 0 : facilityAdministration.hashCode) +
    (facilityAdministrationId == null ? 0 : facilityAdministrationId.hashCode) +
    (workerProfile == null ? 0 : workerProfile.hashCode) +
    (workerProfileId == null ? 0 : workerProfileId.hashCode) +
    (capabilities == null ? 0 : capabilities.hashCode) +
    (capabilityIds == null ? 0 : capabilityIds.hashCode) +
    (workingHoursConfig == null ? 0 : workingHoursConfig.hashCode) +
    (dayOffRequests == null ? 0 : dayOffRequests.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode);

  @override
  String toString() => 'FacilityWorkerProfile[id=$id, facilityAdministration=$facilityAdministration, facilityAdministrationId=$facilityAdministrationId, workerProfile=$workerProfile, workerProfileId=$workerProfileId, capabilities=$capabilities, capabilityIds=$capabilityIds, workingHoursConfig=$workingHoursConfig, dayOffRequests=$dayOffRequests, firstName=$firstName, lastName=$lastName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (facilityAdministration != null) {
      json[r'facility_administration'] = facilityAdministration;
    }
    if (facilityAdministrationId != null) {
      json[r'facility_administration_id'] = facilityAdministrationId;
    }
    if (workerProfile != null) {
      json[r'worker_profile'] = workerProfile;
    }
    if (workerProfileId != null) {
      json[r'worker_profile_id'] = workerProfileId;
    }
    if (capabilities != null) {
      json[r'capabilities'] = capabilities;
    }
    if (capabilityIds != null) {
      json[r'capability_ids'] = capabilityIds;
    }
    if (workingHoursConfig != null) {
      json[r'working_hours_config'] = workingHoursConfig;
    }
    if (dayOffRequests != null) {
      json[r'day_off_requests'] = dayOffRequests;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    return json;
  }

  /// Returns a new [FacilityWorkerProfile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityWorkerProfile fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityWorkerProfile(
        id: json[r'id'],
        facilityAdministration: FacilityAdministration.fromJson(json[r'facility_administration']),
        facilityAdministrationId: json[r'facility_administration_id'],
        workerProfile: WorkerProfile.fromJson(json[r'worker_profile']),
        workerProfileId: json[r'worker_profile_id'],
        capabilities: Role.listFromJson(json[r'capabilities']),
        capabilityIds: json[r'capability_ids'] == null
          ? null
          : (json[r'capability_ids'] as List).cast<String>(),
        workingHoursConfig: WorkingHoursConfig.fromJson(json[r'working_hours_config']),
        dayOffRequests: DayOffRequest.listFromJson(json[r'day_off_requests']),
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
    );

  static List<FacilityWorkerProfile> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityWorkerProfile>[]
      : json.map((v) => FacilityWorkerProfile.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityWorkerProfile> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityWorkerProfile>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityWorkerProfile.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityWorkerProfile-objects as value to a dart map
  static Map<String, List<FacilityWorkerProfile>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityWorkerProfile>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityWorkerProfile.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

