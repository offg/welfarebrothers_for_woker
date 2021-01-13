//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityAvailabilityForWrite {
  /// Returns a new [FacilityAvailabilityForWrite] instance.
  FacilityAvailabilityForWrite({
    @required this.facilityAdministrationId,
    this.daysOfTheWeek = const [],
  });

  String facilityAdministrationId;

  List<int> daysOfTheWeek;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityAvailabilityForWrite &&
     other.facilityAdministrationId == facilityAdministrationId &&
     other.daysOfTheWeek == daysOfTheWeek;

  @override
  int get hashCode =>
    (facilityAdministrationId == null ? 0 : facilityAdministrationId.hashCode) +
    (daysOfTheWeek == null ? 0 : daysOfTheWeek.hashCode);

  @override
  String toString() => 'FacilityAvailabilityForWrite[facilityAdministrationId=$facilityAdministrationId, daysOfTheWeek=$daysOfTheWeek]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facilityAdministrationId != null) {
      json[r'facility_administration_id'] = facilityAdministrationId;
    }
    if (daysOfTheWeek != null) {
      json[r'days_of_the_week'] = daysOfTheWeek;
    }
    return json;
  }

  /// Returns a new [FacilityAvailabilityForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityAvailabilityForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityAvailabilityForWrite(
        facilityAdministrationId: json[r'facility_administration_id'],
        daysOfTheWeek: json[r'days_of_the_week'] == null
          ? null
          : (json[r'days_of_the_week'] as List).cast<int>(),
    );

  static List<FacilityAvailabilityForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityAvailabilityForWrite>[]
      : json.map((v) => FacilityAvailabilityForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityAvailabilityForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityAvailabilityForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityAvailabilityForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityAvailabilityForWrite-objects as value to a dart map
  static Map<String, List<FacilityAvailabilityForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityAvailabilityForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityAvailabilityForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

