import 'package:json_annotation/json_annotation.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile.dart';

import './working_hours_config.dart';
import '../base.dart';
import 'day_off_request.dart';

part 'facility_worker_profile.g.dart';

@JsonSerializable()
class FacilityWorkerProfile extends WelfareBrothersModelBase {
  int id;
  @JsonKey(name: "facility_id")
  String facilityId;
  @JsonKey(name: "worker_profile")
  WorkerProfile workerProfile;

  @JsonKey(name: "day_off_requests")
  List<DayOffRequest> dayOffRequests;

  @JsonKey(name: "working_hours_config")
  WorkingHoursConfig workingHoursConfig;

  FacilityWorkerProfile(this.id, this.facilityId, this.workerProfile, this.dayOffRequests, this.workingHoursConfig);
  FacilityWorkerProfile.withEmpty()
      : this.workerProfile = WorkerProfile.withEmpty(),
        this.dayOffRequests = [
          DayOffRequest.fromEmpty(),
          DayOffRequest.fromEmpty(),
          DayOffRequest.fromEmpty(),
        ],
        this.facilityId = "sample001",
        this.id = 0,
        this.workingHoursConfig = WorkingHoursConfig.withEmpty();
  factory FacilityWorkerProfile.fromJson(Map<String, dynamic> json) => _$FacilityWorkerProfileFromJson(json);
  Map<String, dynamic> toJson() => _$FacilityWorkerProfileToJson(this);
  String get displayValue {
    var user = workerProfile?.user;
    return facilityId + "  " + user?.displayValue ?? "";
  }
}
