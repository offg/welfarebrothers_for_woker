//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityUserLink {
  /// Returns a new [FacilityUserLink] instance.
  FacilityUserLink({
    this.id,
    this.workerProfile,
    this.state,
    this.type,
    this.facilityAdministration,
    this.verifiedBy,
    this.verifiedAt,
  });

  int id;

  WorkerProfile workerProfile;

  FacilityUserLinkState state;

  FacilityUserLinkType type;

  FacilityAdministration facilityAdministration;

  FacilityWorkerProfile verifiedBy;

  DateTime verifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityUserLink &&
     other.id == id &&
     other.workerProfile == workerProfile &&
     other.state == state &&
     other.type == type &&
     other.facilityAdministration == facilityAdministration &&
     other.verifiedBy == verifiedBy &&
     other.verifiedAt == verifiedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (workerProfile == null ? 0 : workerProfile.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (facilityAdministration == null ? 0 : facilityAdministration.hashCode) +
    (verifiedBy == null ? 0 : verifiedBy.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt.hashCode);

  @override
  String toString() => 'FacilityUserLink[id=$id, workerProfile=$workerProfile, state=$state, type=$type, facilityAdministration=$facilityAdministration, verifiedBy=$verifiedBy, verifiedAt=$verifiedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (workerProfile != null) {
      json[r'worker_profile'] = workerProfile;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (facilityAdministration != null) {
      json[r'facility_administration'] = facilityAdministration;
    }
    if (verifiedBy != null) {
      json[r'verified_by'] = verifiedBy;
    }
    if (verifiedAt != null) {
      json[r'verified_at'] = verifiedAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [FacilityUserLink] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityUserLink fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityUserLink(
        id: json[r'id'],
        workerProfile: WorkerProfile.fromJson(json[r'worker_profile']),
        state: FacilityUserLinkState.fromJson(json[r'state']),
        type: FacilityUserLinkType.fromJson(json[r'type']),
        facilityAdministration: FacilityAdministration.fromJson(json[r'facility_administration']),
        verifiedBy: FacilityWorkerProfile.fromJson(json[r'verified_by']),
        verifiedAt: json[r'verified_at'] == null
          ? null
          : DateTime.parse(json[r'verified_at']),
    );

  static List<FacilityUserLink> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityUserLink>[]
      : json.map((v) => FacilityUserLink.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityUserLink> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityUserLink>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityUserLink.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityUserLink-objects as value to a dart map
  static Map<String, List<FacilityUserLink>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityUserLink>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityUserLink.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

