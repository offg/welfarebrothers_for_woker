import 'package:json_annotation/json_annotation.dart';

import '../base.dart';

part 'working_hours_config.g.dart';

@JsonSerializable()
class WorkingHoursConfig extends WelfareBrothersModelBase {
  int id;
  @JsonKey(name: "facility_worker_profile_id")
  int facilityWorkerProfileId;
  @JsonKey(name: "monthly_max_working_hours")
  int monthlyMaxWorkingHours;
  @JsonKey(name: "weekly_max_working_hours")
  int weeklyMaxWorkingHours;

  WorkingHoursConfig(this.id, this.facilityWorkerProfileId, this.monthlyMaxWorkingHours, this.weeklyMaxWorkingHours);
  WorkingHoursConfig.withEmpty()
      : monthlyMaxWorkingHours = 168,
        this.weeklyMaxWorkingHours = 40;

  factory WorkingHoursConfig.fromJson(Map<String, dynamic> json) => _$WorkingHoursConfigFromJson(json);
  Map<String, dynamic> toJson() => _$WorkingHoursConfigToJson(this);
}
