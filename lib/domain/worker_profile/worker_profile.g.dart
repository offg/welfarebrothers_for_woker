// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkerProfile _$WorkerProfileFromJson(Map<String, dynamic> json) {
  return WorkerProfile(
    json['user'] == null
        ? null
        : WelfareBrothersUser.fromJson(json['user'] as Map<String, dynamic>),
    (json['capabilities'] as List)
        ?.map(
            (e) => e == null ? null : Role.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WorkerProfileToJson(WorkerProfile instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'capabilities': instance.capabilities?.map((e) => e?.toJson())?.toList(),
    };
