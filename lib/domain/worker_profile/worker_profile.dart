import 'package:json_annotation/json_annotation.dart';
import 'package:welfarebrothers_for_worker/domain/welfare_brothers_user/user.dart';

import '../base.dart';
import '../role.dart';

part 'worker_profile.g.dart';

@JsonSerializable(explicitToJson: true)
class WorkerProfile extends WelfareBrothersModelBase {
  @JsonKey(name: "user")
  WelfareBrothersUser user;
  List<Role> capabilities;

  WorkerProfile(this.user, this.capabilities);
  WorkerProfile.withEmpty()
      : this.user = WelfareBrothersUser.withEmpty(),
        capabilities = [
          Role("caregiver", "介護士"),
          Role("nurse", "看護師"),
        ];

  factory WorkerProfile.fromJson(Map<String, dynamic> json) => _$WorkerProfileFromJson(json);
  Map<String, dynamic> toJson() => _$WorkerProfileToJson(this);
}
