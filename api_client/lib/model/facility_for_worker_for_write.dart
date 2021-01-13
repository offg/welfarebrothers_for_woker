//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityForWorkerForWrite {
  /// Returns a new [FacilityForWorkerForWrite] instance.
  FacilityForWorkerForWrite({
    @required this.id,
    @required this.name,
    this.availableDaysOfTheWeek = const [],
  });

  String id;

  String name;

  List<int> availableDaysOfTheWeek;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityForWorkerForWrite &&
     other.id == id &&
     other.name == name &&
     other.availableDaysOfTheWeek == availableDaysOfTheWeek;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (availableDaysOfTheWeek == null ? 0 : availableDaysOfTheWeek.hashCode);

  @override
  String toString() => 'FacilityForWorkerForWrite[id=$id, name=$name, availableDaysOfTheWeek=$availableDaysOfTheWeek]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (availableDaysOfTheWeek != null) {
      json[r'available_days_of_the_week'] = availableDaysOfTheWeek;
    }
    return json;
  }

  /// Returns a new [FacilityForWorkerForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityForWorkerForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityForWorkerForWrite(
        id: json[r'id'],
        name: json[r'name'],
        availableDaysOfTheWeek: json[r'available_days_of_the_week'] == null
          ? null
          : (json[r'available_days_of_the_week'] as List).cast<int>(),
    );

  static List<FacilityForWorkerForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityForWorkerForWrite>[]
      : json.map((v) => FacilityForWorkerForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityForWorkerForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityForWorkerForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityForWorkerForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityForWorkerForWrite-objects as value to a dart map
  static Map<String, List<FacilityForWorkerForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityForWorkerForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityForWorkerForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

