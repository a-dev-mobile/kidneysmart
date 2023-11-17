// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_app_update_check_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiAppUpdateCheckReqImpl _$$ApiAppUpdateCheckReqImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAppUpdateCheckReqImpl(
      build: json['build'] as int,
      installerPackageName: json['installerPackageName'] as String,
      packageName: json['packageName'] as String,
    );

Map<String, dynamic> _$$ApiAppUpdateCheckReqImplToJson(
        _$ApiAppUpdateCheckReqImpl instance) =>
    <String, dynamic>{
      'build': instance.build,
      'installerPackageName': instance.installerPackageName,
      'packageName': instance.packageName,
    };
