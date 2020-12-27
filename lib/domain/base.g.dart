// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Time _$TimeFromJson(Map<String, dynamic> json) {
  return Time(
    _parseHour(json['hour'] as String),
    _parseMinute(json['minute'] as String),
  );
}

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
    };

TimeIntervalBase _$TimeIntervalBaseFromJson(Map<String, dynamic> json) {
  return TimeIntervalBase(
    json['timeFrom'] == null
        ? null
        : Time.fromJson(json['timeFrom'] as Map<String, dynamic>),
    json['timeTo'] == null
        ? null
        : Time.fromJson(json['timeTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TimeIntervalBaseToJson(TimeIntervalBase instance) =>
    <String, dynamic>{
      'timeFrom': instance.timeFrom,
      'timeTo': instance.timeTo,
    };
