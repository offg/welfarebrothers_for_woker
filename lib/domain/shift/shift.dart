import 'package:json_annotation/json_annotation.dart';

import './staff.dart';
import '../base.dart';
import '../role.dart';
import '../shift_config/shift_pattern.dart';

part 'shift.g.dart';

@JsonSerializable()
class Shift extends WelfareBrothersModelBase {
  DateTime date;
  Role role;
  @JsonKey(name: "shift_pattern")
  ShiftPattern shiftPattern;
  Staff staff;
  Shift(this.date, this.role, this.shiftPattern, this.staff);

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
  Map<String, dynamic> toJson() => _$ShiftToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DailyShift extends WelfareBrothersModelBase {
  DateTime date;
  List<Shift> shifts;

  DailyShift(this.date, this.shifts);

  factory DailyShift.fromJson(Map<String, dynamic> json) => _$DailyShiftFromJson(json);
  Map<String, dynamic> toJson() => _$DailyShiftToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonthlyShift extends WelfareBrothersModelBase {
  @JsonKey(name: "date_from")
  DateTime dateFrom;
  @JsonKey(name: "date_to")
  DateTime dateTo;
  @JsonKey(name: "daily_shifts")
  List<DailyShift> dailyShifts;
  MonthlyShift(this.dateFrom, this.dateTo);

  factory MonthlyShift.fromJson(Map<String, dynamic> json) => _$MonthlyShiftFromJson(json);
  Map<String, dynamic> toJson() => _$MonthlyShiftToJson(this);
}
