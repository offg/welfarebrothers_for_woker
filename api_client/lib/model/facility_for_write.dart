//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class FacilityForWrite {
  /// Returns a new [FacilityForWrite] instance.
  FacilityForWrite({
    @required this.name,
    @required this.category,
    @required this.group,
    @required this.careService,
  });

  String name;

  CareServiceCategory category;

  CareServiceGroup group;

  CareService careService;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FacilityForWrite &&
     other.name == name &&
     other.category == category &&
     other.group == group &&
     other.careService == careService;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (group == null ? 0 : group.hashCode) +
    (careService == null ? 0 : careService.hashCode);

  @override
  String toString() => 'FacilityForWrite[name=$name, category=$category, group=$group, careService=$careService]';

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
    return json;
  }

  /// Returns a new [FacilityForWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FacilityForWrite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FacilityForWrite(
        name: json[r'name'],
        category: CareServiceCategory.fromJson(json[r'category']),
        group: CareServiceGroup.fromJson(json[r'group']),
        careService: CareService.fromJson(json[r'care_service']),
    );

  static List<FacilityForWrite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FacilityForWrite>[]
      : json.map((v) => FacilityForWrite.fromJson(v)).toList(growable: true == growable);

  static Map<String, FacilityForWrite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FacilityForWrite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FacilityForWrite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FacilityForWrite-objects as value to a dart map
  static Map<String, List<FacilityForWrite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FacilityForWrite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FacilityForWrite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

