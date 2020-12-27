// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WelfareBrothersUser _$WelfareBrothersUserFromJson(Map<String, dynamic> json) {
  return WelfareBrothersUser(
    json['username'] as String,
    json['first_name'] as String,
    json['last_name'] as String,
  );
}

Map<String, dynamic> _$WelfareBrothersUserToJson(
        WelfareBrothersUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
