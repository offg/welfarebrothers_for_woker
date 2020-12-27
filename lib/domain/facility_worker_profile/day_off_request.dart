import 'package:json_annotation/json_annotation.dart';

import '../base.dart';

part 'day_off_request.g.dart';

@JsonSerializable()
class DayOffRequest extends WelfareBrothersModelBase {
  int facilityWorkerProfileId;
  DateTime date;
  DayOffRequest(this.facilityWorkerProfileId, this.date);

  DayOffRequest.fromEmpty() : date = DateTime.now();
  factory DayOffRequest.fromJson(Map<String, dynamic> json) => _$DayOffRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DayOffRequestToJson(this);
}
