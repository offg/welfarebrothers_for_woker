// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_pattern.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftPattern _$ShiftPatternFromJson(Map<String, dynamic> json) {
  return ShiftPattern(
    symbol: json['symbol'] as String,
    name: json['name'] as String,
    timeFrom: json['timeFrom'] == null
        ? null
        : Time.fromJson(json['timeFrom'] as Map<String, dynamic>),
    timeTo: json['timeTo'] == null
        ? null
        : Time.fromJson(json['timeTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShiftPatternToJson(ShiftPattern instance) =>
    <String, dynamic>{
      'timeFrom': instance.timeFrom?.toJson(),
      'timeTo': instance.timeTo?.toJson(),
      'symbol': instance.symbol,
      'name': instance.name,
    };
