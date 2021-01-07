//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityWorkerProfileForWrite {
  /// Returns a new [FacilityWorkerProfileForWrite] instance.
  FacilityWorkerProfileForWrite({
    @required this.facilityAdministrationId,
    this.workerProfileId,
    this.capabilityIds = const [],
    this.firstName,
    @required this.lastName,
  });

  String facilityAdministrationId;

  int workerProfileId;

  List<String> capabilityIds;

  String firstName;

  String lastName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityWorkerProfileForWrite &&
     other.facilityAdministrationId == facilityAdministrationId &&
     other.workerProfileId == workerProfileId &&
     other.capabilityIds == capabilityIds &&
     other.firstName == firstName &&
     other.lastName == lastName;

  @override
  int get hashCode =>
    (facilityAdministrationId == null ? 0 : facilityAdministrationId.hashCode) +
    (workerProfileId == null ? 0 : workerProfileId.hashCode) +
    (capabilityIds == null ? 0 : capabilityIds.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode);

  @override
  String toString() => 'FacilityWorkerProfileForWrite[facilityAdministrationId=$facilityAdministrationId, workerProfileId=$workerProfileId, capabilityIds=$capabilityIds, firstName=$firstName, lastName=$lastName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityAdministrationId != null) {
      json[r'facility_administration_id'] = facilityAdministrationId;
    }
    if (workerProfileId != null) {
      json[r'worker_profile_id'] = workerProfileId;
    }
    if (capabilityIds != null) {
      json[r'capability_ids'] = capabilityIds;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    return json;
  }

  /// Returns a new [FacilityWorkerProfileForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityWorkerProfileForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityWorkerProfileForWrite(
        facilityAdministrationId: json[r'facility_administration_id'],
        workerProfileId: json[r'worker_profile_id'],
        capabilityIds: json[r'capability_ids'] == null
          ? null
          : (json[r'capability_ids'] as List).cast<String>(),
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
    );

  static List<FacilityWorkerProfileForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityWorkerProfileForWrite>[]
      : json.map((v) => FacilityWorkerProfileForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityWorkerProfileForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityWorkerProfileForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityWorkerProfileForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityWorkerProfileForWrite-objects as value to a dart map
  static Map<String, List<FacilityWorkerProfileForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityWorkerProfileForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityWorkerProfileForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

