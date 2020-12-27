import 'package:json_annotation/json_annotation.dart';
import 'package:welfarebrothers_for_worker/domain/base.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class WelfareBrothersUser extends WelfareBrothersModelBase {
  String username;
  @JsonKey(name: "first_name")
  String firstName;
  @JsonKey(name: "last_name")
  String lastName;
  WelfareBrothersUser(this.username, this.firstName, this.lastName);
  WelfareBrothersUser.withEmpty()
      : this.lastName = "山田",
        this.firstName = "太郎",
        this.username = "sample_username";

  factory WelfareBrothersUser.fromJson(Map<String, dynamic> json) => _$WelfareBrothersUserFromJson(json);
  Map<String, dynamic> toJson() => _$WelfareBrothersUserToJson(this);
  String get displayValue {
    return (lastName ?? "") + (firstName ?? "") + "  (${username ?? ''})";
  }
}
