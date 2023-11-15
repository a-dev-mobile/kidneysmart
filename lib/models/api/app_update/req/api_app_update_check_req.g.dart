// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_app_update_check_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiAppUpdateCheckReqImpl _$$ApiAppUpdateCheckReqImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAppUpdateCheckReqImpl(
      currentVersionCode: json['currentVersionCode'] as int,
      installerPackageName: json['installerPackageName'] as String,
      packageName: json['packageName'] as String,
    );

Map<String, dynamic> _$$ApiAppUpdateCheckReqImplToJson(
        _$ApiAppUpdateCheckReqImpl instance) =>
    <String, dynamic>{
      'currentVersionCode': instance.currentVersionCode,
      'installerPackageName': instance.installerPackageName,
      'packageName': instance.packageName,
    };
