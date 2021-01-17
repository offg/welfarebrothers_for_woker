//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityForWorker {
  /// Returns a new [FacilityForWorker] instance.
  FacilityForWorker({
    this.id,
    @required this.name,
    this.availableDaysOfTheWeek = const [],
  });

  String id;

  String name;

  List<int> availableDaysOfTheWeek;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityForWorker &&
     other.id == id &&
     other.name == name &&
     other.availableDaysOfTheWeek == availableDaysOfTheWeek;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (availableDaysOfTheWeek == null ? 0 : availableDaysOfTheWeek.hashCode);

  @override
  String toString() => 'FacilityForWorker[id=$id, name=$name, availableDaysOfTheWeek=$availableDaysOfTheWeek]';

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

  /// Returns a new [FacilityForWorker] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityForWorker fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityForWorker(
        id: json[r'id'],
        name: json[r'name'],
        availableDaysOfTheWeek: json[r'available_days_of_the_week'] == null
          ? null
          : (json[r'available_days_of_the_week'] as List).cast<int>(),
    );

  static List<FacilityForWorker> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityForWorker>[]
      : json.map((v) => FacilityForWorker.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityForWorker> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityForWorker>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityForWorker.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityForWorker-objects as value to a dart map
  static Map<String, List<FacilityForWorker>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityForWorker>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityForWorker.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

