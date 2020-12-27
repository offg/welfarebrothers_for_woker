// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shift _$ShiftFromJson(Map<String, dynamic> json) {
  return Shift(
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
    json['role'] == null
        ? null
        : Role.fromJson(json['role'] as Map<String, dynamic>),
    json['shift_pattern'] == null
        ? null
        : ShiftPattern.fromJson(json['shift_pattern'] as Map<String, dynamic>),
    json['staff'] == null
        ? null
        : Staff.fromJson(json['staff'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShiftToJson(Shift instance) => <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'role': instance.role,
      'shift_pattern': instance.shiftPattern,
      'staff': instance.staff,
    };

DailyShift _$DailyShiftFromJson(Map<String, dynamic> json) {
  return DailyShift(
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
    (json['shifts'] as List)
        ?.map(
            (e) => e == null ? null : Shift.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DailyShiftToJson(DailyShift instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'shifts': instance.shifts?.map((e) => e?.toJson())?.toList(),
    };

MonthlyShift _$MonthlyShiftFromJson(Map<String, dynamic> json) {
  return MonthlyShift(
    json['date_from'] == null
        ? null
        : DateTime.parse(json['date_from'] as String),
    json['date_to'] == null ? null : DateTime.parse(json['date_to'] as String),
  )..dailyShifts = (json['daily_shifts'] as List)
      ?.map((e) =>
          e == null ? null : DailyShift.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$MonthlyShiftToJson(MonthlyShift instance) =>
    <String, dynamic>{
      'date_from': instance.dateFrom?.toIso8601String(),
      'date_to': instance.dateTo?.toIso8601String(),
      'daily_shifts': instance.dailyShifts?.map((e) => e?.toJson())?.toList(),
    };
