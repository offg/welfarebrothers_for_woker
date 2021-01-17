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
    @required this.category,
    @required this.group,
    @required this.careService,
    this.availableDaysOfTheWeek = const [],
  });

  String id;

  String name;

  CareServiceCategory category;

  CareServiceGroup group;

  CareService careService;

  List<int> availableDaysOfTheWeek;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityForWorker &&
     other.id == id &&
     other.name == name &&
     other.category == category &&
     other.group == group &&
     other.careService == careService &&
     other.availableDaysOfTheWeek == availableDaysOfTheWeek;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (group == null ? 0 : group.hashCode) +
    (careService == null ? 0 : careService.hashCode) +
    (availableDaysOfTheWeek == null ? 0 : availableDaysOfTheWeek.hashCode);

  @override
  String toString() => 'FacilityForWorker[id=$id, name=$name, category=$category, group=$group, careService=$careService, availableDaysOfTheWeek=$availableDaysOfTheWeek]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    if (group != null) {
      json[r'group'] = group;
    }
    if (careService != null) {
      json[r'care_service'] = careService;
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
        category: CareServiceCategory.fromJson(json[r'category']),
        group: CareServiceGroup.fromJson(json[r'group']),
        careService: CareService.fromJson(json[r'care_service']),
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

