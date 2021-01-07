//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of welfarebrothers_for_worker_api_client;

class ShiftPattern {
  /// Returns a new [ShiftPattern] instance.
  ShiftPattern({
    this.id,
    @required this.shiftConfigId,
    @required this.timeFrom,
    @required this.timeTo,
    @required this.symbol,
    @required this.name,
  });

  int id;

  int shiftConfigId;

  String timeFrom;

  String timeTo;

  String symbol;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShiftPattern &&
     other.id == id &&
     other.shiftConfigId == shiftConfigId &&
     other.timeFrom == timeFrom &&
     other.timeTo == timeTo &&
     other.symbol == symbol &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (shiftConfigId == null ? 0 : shiftConfigId.hashCode) +
    (timeFrom == null ? 0 : timeFrom.hashCode) +
    (timeTo == null ? 0 : timeTo.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'ShiftPattern[id=$id, shiftConfigId=$shiftConfigId, timeFrom=$timeFrom, timeTo=$timeTo, symbol=$symbol, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (shiftConfigId != null) {
      json[r'shift_config_id'] = shiftConfigId;
    }
    if (timeFrom != null) {
      json[r'time_from'] = timeFrom;
    }
    if (timeTo != null) {
      json[r'time_to'] = timeTo;
    }
    if (symbol != null) {
      json[r'symbol'] = symbol;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [ShiftPattern] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ShiftPattern fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ShiftPattern(
        id: json[r'id'],
        shiftConfigId: json[r'shift_config_id'],
        timeFrom: json[r'time_from'],
        timeTo: json[r'time_to'],
        symbol: json[r'symbol'],
        name: json[r'name'],
    );

  static List<ShiftPattern> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ShiftPattern>[]
      : json.map((v) => ShiftPattern.fromJson(v)).toList(growable: true == growable);

  static Map<String, ShiftPattern> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ShiftPattern>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ShiftPattern.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ShiftPattern-objects as value to a dart map
  static Map<String, List<ShiftPattern>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ShiftPattern>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ShiftPattern.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

