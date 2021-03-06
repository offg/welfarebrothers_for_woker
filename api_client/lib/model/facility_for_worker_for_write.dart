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
    @required this.name,
    @required this.category,
    @required this.group,
    @required this.careService,
    @required this.tel,
    @required this.city,
    @required this.prefecture,
    @required this.address,
    @required this.building,
    this.availableDaysOfTheWeek = const [],
  });

  String name;

  CareServiceCategory category;

  CareServiceGroup group;

  CareService careService;

  String tel;

  City city;

  Prefecture prefecture;

  String address;

  String building;

  List<int> availableDaysOfTheWeek;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityForWorkerForWrite &&
     other.name == name &&
     other.category == category &&
     other.group == group &&
     other.careService == careService &&
     other.tel == tel &&
     other.city == city &&
     other.prefecture == prefecture &&
     other.address == address &&
     other.building == building &&
     other.availableDaysOfTheWeek == availableDaysOfTheWeek;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (group == null ? 0 : group.hashCode) +
    (careService == null ? 0 : careService.hashCode) +
    (tel == null ? 0 : tel.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (prefecture == null ? 0 : prefecture.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (building == null ? 0 : building.hashCode) +
    (availableDaysOfTheWeek == null ? 0 : availableDaysOfTheWeek.hashCode);

  @override
  String toString() => 'FacilityForWorkerForWrite[name=$name, category=$category, group=$group, careService=$careService, tel=$tel, city=$city, prefecture=$prefecture, address=$address, building=$building, availableDaysOfTheWeek=$availableDaysOfTheWeek]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (tel != null) {
      json[r'tel'] = tel;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (prefecture != null) {
      json[r'prefecture'] = prefecture;
    }
    if (address != null) {
      json[r'address'] = address;
    }
    if (building != null) {
      json[r'building'] = building;
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
        name: json[r'name'],
        category: CareServiceCategory.fromJson(json[r'category']),
        group: CareServiceGroup.fromJson(json[r'group']),
        careService: CareService.fromJson(json[r'care_service']),
        tel: json[r'tel'],
        city: City.fromJson(json[r'city']),
        prefecture: Prefecture.fromJson(json[r'prefecture']),
        address: json[r'address'],
        building: json[r'building'],
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

