import 'package:json_annotation/json_annotation.dart';

import '../base.dart';

part 'staff.g.dart';

@JsonSerializable()
class Staff extends WelfareBrothersModelBase {
  @JsonKey(name: "facility_worker_profile_id")
  int facilityWorkerProfileId;
  @JsonKey(name: "first_name")
  String firstName;
  @JsonKey(name: "last_name")
  String lastName;

  Staff(this.facilityWorkerProfileId, this.firstName, this.lastName);

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
  Map<String, dynamic> toJson() => _$StaffToJson(this);
}
