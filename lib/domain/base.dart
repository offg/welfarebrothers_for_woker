import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

abstract class WelfareBrothersModelBase {}

abstract class WelfareBrothersEnumModelBase extends WelfareBrothersModelBase {
  final String id;
  final String name;
  WelfareBrothersEnumModelBase(this.id, this.name);
}

_parseHour(String timeStr) => int.parse(timeStr.split(":")[0]);
_parseMinute(String timeStr) => int.parse(timeStr.split(":")[1]);

@JsonSerializable()
class Time extends WelfareBrothersModelBase {
  @JsonKey(fromJson: _parseHour)
  final int hour;
  @JsonKey(fromJson: _parseMinute)
  final int minute;
  Time(this.hour, this.minute);

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
  Map<String, dynamic> toJson() => _$TimeToJson(this);
  @override
  String toString() => this.hour.toString().padLeft(2, "0") + ":" + this.minute.toString().padRight(2, "0");
}

@JsonSerializable()
class TimeIntervalBase extends WelfareBrothersModelBase {
  Time timeFrom;
  Time timeTo;

  TimeIntervalBase(this.timeFrom, this.timeTo);
  factory TimeIntervalBase.fromJson(Map<String, dynamic> json) => _$TimeIntervalBaseFromJson(json);
  Map<String, dynamic> toJson() => _$TimeIntervalBaseToJson(this);
}
