import 'package:json_annotation/json_annotation.dart';

import 'base.dart';

part 'role.g.dart';

@JsonSerializable()
class Role extends WelfareBrothersEnumModelBase {
  Role(String id, String name) : super(id, name);
  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
  Map<String, dynamic> toJson() => _$RoleToJson(this);
}
