import 'package:json_annotation/json_annotation.dart';

import '../base.dart';

part 'shift_pattern.g.dart';

@JsonSerializable(explicitToJson: true)
class ShiftPattern extends TimeIntervalBase {
  String symbol;
  String name;

  ShiftPattern({String symbol, String name, Time timeFrom, Time timeTo})
      : this.symbol = symbol,
        this.name = name,
        super(timeFrom, timeTo);

  factory ShiftPattern.fromJson(Map<String, dynamic> json) => _$ShiftPatternFromJson(json);
  Map<String, dynamic> toJson() => _$ShiftPatternToJson(this);
}
