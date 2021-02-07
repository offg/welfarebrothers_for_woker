//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityUserLinkForWrite {
  /// Returns a new [FacilityUserLinkForWrite] instance.
  FacilityUserLinkForWrite({
    @required this.workerProfileId,
    @required this.stateId,
    @required this.typeId,
    @required this.facilityAdministrationId,
    this.verifiedById,
    this.verifiedAt,
  });

  int workerProfileId;

  String stateId;

  String typeId;

  String facilityAdministrationId;

  int verifiedById;

  DateTime verifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityUserLinkForWrite &&
     other.workerProfileId == workerProfileId &&
     other.stateId == stateId &&
     other.typeId == typeId &&
     other.facilityAdministrationId == facilityAdministrationId &&
     other.verifiedById == verifiedById &&
     other.verifiedAt == verifiedAt;

  @override
  int get hashCode =>
    (workerProfileId == null ? 0 : workerProfileId.hashCode) +
    (stateId == null ? 0 : stateId.hashCode) +
    (typeId == null ? 0 : typeId.hashCode) +
    (facilityAdministrationId == null ? 0 : facilityAdministrationId.hashCode) +
    (verifiedById == null ? 0 : verifiedById.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt.hashCode);

  @override
  String toString() => 'FacilityUserLinkForWrite[workerProfileId=$workerProfileId, stateId=$stateId, typeId=$typeId, facilityAdministrationId=$facilityAdministrationId, verifiedById=$verifiedById, verifiedAt=$verifiedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (workerProfileId != null) {
      json[r'worker_profile_id'] = workerProfileId;
    }
    if (stateId != null) {
      json[r'state_id'] = stateId;
    }
    if (typeId != null) {
      json[r'type_id'] = typeId;
    }
    if (facilityAdministrationId != null) {
      json[r'facility_administration_id'] = facilityAdministrationId;
    }
    if (verifiedById != null) {
      json[r'verified_by_id'] = verifiedById;
    }
    if (verifiedAt != null) {
      json[r'verified_at'] = verifiedAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [FacilityUserLinkForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityUserLinkForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityUserLinkForWrite(
        workerProfileId: json[r'worker_profile_id'],
        stateId: json[r'state_id'],
        typeId: json[r'type_id'],
        facilityAdministrationId: json[r'facility_administration_id'],
        verifiedById: json[r'verified_by_id'],
        verifiedAt: json[r'verified_at'] == null
          ? null
          : DateTime.parse(json[r'verified_at']),
    );

  static List<FacilityUserLinkForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityUserLinkForWrite>[]
      : json.map((v) => FacilityUserLinkForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityUserLinkForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityUserLinkForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityUserLinkForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityUserLinkForWrite-objects as value to a dart map
  static Map<String, List<FacilityUserLinkForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityUserLinkForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityUserLinkForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

